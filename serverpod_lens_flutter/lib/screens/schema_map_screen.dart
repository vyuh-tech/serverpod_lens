import 'dart:typed_data';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData, rootBundle;
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaColumn, SchemaGraph, SchemaModule, SchemaTable;
import 'package:vyuh_diagram_flutter/adapter.dart'
    show DiagramRenderPolicy, RenderingExtension;
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/lens_settings.dart';
import '../schema/lens_state.dart';
import '../schema/podlens_minimap_extension.dart';
import '../schema/podlens_signals_extension.dart';
import '../schema/podlens_table_extension.dart';
import '../schema/podlens_view_extension.dart';
import '../schema/project_analyzer.dart';
import '../schema/schema_diagram.dart';
import '../schema/schema_workspace.dart';

const _kAll = 'All';

/// Renders the analyzed Serverpod schema as an interactive diagram.
///
/// Architecture: a single long-lived [DiagramController] owns the diagram
/// (elements, visibility, selection, camera and view options). This widget
/// only *feeds* it data and reflects the module/search UI — it never rebuilds
/// the controller.
class SchemaMapScreen extends StatefulWidget {
  const SchemaMapScreen({super.key, this.asset = 'assets/schema_graph.json'});

  final String asset;

  @override
  State<SchemaMapScreen> createState() => _SchemaMapScreenState();
}

class _SchemaMapScreenState extends State<SchemaMapScreen> {
  SchemaGraph? _graph;
  DiagramController? _controller;
  SchemaWorkspace? _workspace;
  final LensState _lens = LensState();
  Object? _error;

  String _selectedModule = _kAll;
  String? _selectedTable;
  String _query = '';
  String? _sourceLabel;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _loadSample();
  }

  Future<void> _loadSample() async {
    try {
      final json = await rootBundle.loadString(widget.asset);
      final graph = SchemaDiagram.graphFromJson(json);
      _setGraph(graph, label: graph.source);
    } catch (error) {
      if (mounted) setState(() => _error = error);
    }
  }

  /// Builds a controller for [graph] and swaps it in. Loading a *new dataset*
  /// is the one case where the controller is recreated.
  void _setGraph(SchemaGraph graph, {String? label}) {
    final colors = {for (final t in graph.tables) t.name: moduleColor(t.module)};
    final columnsByTable = {
      for (final t in graph.tables) t.name: [for (final c in t.columns) c.name],
    };
    final workspace = SchemaWorkspace(graph.tables);
    final controller = DiagramController(
      configuration: DiagramConfiguration(
        extensions: [
          PodLensTableExtension(workspace: workspace, lens: _lens),
          PodLensSignalsExtension(lens: _lens, columnsByTable: columnsByTable),
          PodLensMinimapExtension(lens: _lens, colors: colors),
          const PodLensViewExtension(),
          GridExtension(visible: false),
          RenderingExtension(
            render: const DiagramRenderPolicy(retainContent: true),
          ),
        ],
      ),
    );
    _lens.attach(controller);
    SchemaDiagram.build(graph, controller: controller, layout: _lens.value.layout);

    final previous = _controller;
    setState(() {
      _graph = graph;
      _controller = controller;
      _workspace = workspace;
      _sourceLabel = label ?? graph.source;
      _selectedModule = _kAll;
      _selectedTable = null;
      _query = '';
    });
    if (previous != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => previous.dispose());
    }
  }

  Future<void> _openProject() async {
    if (_busy) return;
    const zip = XTypeGroup(label: 'Serverpod project', extensions: ['zip']);
    final file = await openFile(acceptedTypeGroups: [zip]);
    if (file == null) return;

    setState(() => _busy = true);
    try {
      final Uint8List bytes = await file.readAsBytes();
      final analysis = ProjectAnalyzer.analyzeZip(
        bytes,
        name: file.name,
      );
      if (!mounted) return;
      if (analysis.isEmpty) {
        _showMessage(
          analysis.warnings.isEmpty
              ? 'No Serverpod schema found in ${file.name}.'
              : analysis.warnings.first,
        );
        return;
      }
      _setGraph(analysis.graph, label: file.name);
      if (analysis.warnings.isNotEmpty) _showMessage(analysis.warnings.first);
    } catch (error) {
      if (mounted) _showMessage('Failed to read project: $error');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    _lens.dispose();
    super.dispose();
  }

  List<SchemaTable> get _visibleTables {
    final graph = _graph;
    if (graph == null) return const [];
    final query = _query.trim().toLowerCase();
    final tables = graph.tables.where((t) {
      if (_selectedModule != _kAll && t.module != _selectedModule) return false;
      if (query.isEmpty) return true;
      return t.name.toLowerCase().contains(query) ||
          t.columns.any((c) => c.name.toLowerCase().contains(query));
    }).toList();
    return tables..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Shows only the selected schema's tables by toggling element visibility in
  /// the diagram — no controller rebuild.
  void _applyModule(String module) {
    final controller = _controller;
    final graph = _graph;
    if (controller == null || graph == null) return;

    final visible = module == _kAll
        ? null
        : {for (final t in graph.tables.where((t) => t.module == module)) t.name};
    bool shown(String? id) => visible == null || id == null || visible.contains(id);

    final connectors = controller.document.elements
        .whereType<ConnectorElement>()
        .toList();
    controller.edits.batch('Filter schema', () {
      for (final table in graph.tables) {
        controller.edits.setVisible(shown(table.name), ids: [table.name]);
      }
      for (final connector in connectors) {
        final start = connector.start;
        final end = connector.end;
        final startId = start is BoundEndpoint ? start.elementId : null;
        final endId = end is BoundEndpoint ? end.elementId : null;
        controller.edits.setVisible(
          shown(startId) && shown(endId),
          ids: [connector.id],
        );
      }
    });
    controller.clearSelection();

    setState(() {
      _selectedModule = module;
      _selectedTable = null;
    });
  }

  void _updateSettings(LensSettings settings) {
    final previous = _lens.value;
    _lens.update(settings);
    final controller = _controller;
    if (controller == null) return;
    if (previous.showGrid != settings.showGrid) {
      controller.setOptions(GridOptions(visible: settings.showGrid));
    }
    if (previous.layout != settings.layout) {
      _applyLayout(settings.layout);
    }
  }

  void _applyLayout(LensLayout layout) {
    final controller = _controller;
    final graph = _graph;
    if (controller == null || graph == null) return;
    SchemaDiagram.applyLayout(controller, SchemaDiagram.positionsFor(graph, layout));
  }

  Future<void> _addTable() async {
    final spec = await showDialog<_NewTable>(
      context: context,
      builder: (context) => const _AddTableDialog(),
    );
    final workspace = _workspace;
    final controller = _controller;
    if (spec == null || workspace == null || controller == null) return;

    final columns = <SchemaColumn>[
      if (!spec.columns.any((c) => c.name == 'id'))
        SchemaColumn(
          name: 'id',
          fieldName: 'id',
          dartType: 'UuidValue?',
          dbType: 'uuid',
          isNullable: true,
          isPrimaryKey: true,
          isUnique: false,
          defaultValue: 'random',
        ),
      ...spec.columns,
    ];
    final table = SchemaTable(
      name: spec.name,
      className: _pascal(spec.name),
      schema: 'public',
      module: spec.module,
      documentation: null,
      columns: columns,
      foreignKeys: const [],
      indexes: const [],
    );
    if (!workspace.addTable(table)) {
      _showMessage('Table "${spec.name}" already exists.');
      return;
    }
    final center = controller.camera.center;
    controller.edits.createShape(
      SchemaDiagram.tableShapeType,
      id: table.name,
      at: DiagramPoint(
        center.x - SchemaDiagram.nodeWidth / 2,
        center.y - SchemaDiagram.heightOf(table) / 2,
      ),
      size: DiagramSize(SchemaDiagram.nodeWidth, SchemaDiagram.heightOf(table)),
      text: table.name,
      ports: SchemaDiagram.portsFor(table),
    );
    _showMessage('Added table ${table.name}');
  }

  Future<void> _addColumn() async {
    final tableId = _selectedTable;
    if (tableId == null) {
      _showMessage('Select a table first.');
      return;
    }
    final column = await showDialog<SchemaColumn>(
      context: context,
      builder: (context) => const _AddColumnDialog(),
    );
    final workspace = _workspace;
    final controller = _controller;
    if (column == null || workspace == null || controller == null) return;

    workspace.addColumn(tableId, column);
    final table = workspace.table(tableId);
    if (table == null) return;
    DiagramRect? frame;
    for (final element in controller.document.elements) {
      if (element is ShapeElement && element.id == tableId) {
        frame = element.frame;
        break;
      }
    }
    if (frame != null) {
      controller.edits.setElementBounds(
        tableId,
        DiagramRect.fromLTWH(
          frame.left,
          frame.top,
          SchemaDiagram.nodeWidth,
          SchemaDiagram.heightOf(table),
        ),
      );
    }
    controller.edits.setPorts(SchemaDiagram.portsFor(table), ids: [tableId]);
  }

  Future<void> _exportModels() async {
    final workspace = _workspace;
    if (workspace == null) return;
    final buffer = StringBuffer();
    for (final table in workspace.tables) {
      buffer
        ..writeln(_modelYaml(table))
        ..writeln();
    }
    final text = buffer.toString();
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Export .spy.yaml'),
        content: SizedBox(
          width: 640,
          height: 480,
          child: SingleChildScrollView(
            child: SelectableText(
              text,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: text));
              Navigator.of(context).pop();
              _showMessage('Copied .spy.yaml to clipboard');
            },
            child: const Text('Copy'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  String _modelYaml(SchemaTable table) {
    final buffer = StringBuffer()
      ..writeln('class: ${table.className}')
      ..writeln('table: ${table.name}')
      ..writeln('fields:');
    for (final column in table.columns) {
      final field = StringBuffer('  ${column.fieldName}: ${column.dartType}');
      for (final fk in table.foreignKeys) {
        if (fk.columns.length == 1 && fk.columns.first == column.name) {
          field.write(', relation(parent=${fk.refTable})');
          break;
        }
      }
      buffer.writeln(field);
    }
    return buffer.toString();
  }

  static String _pascal(String name) {
    final parts = name.split(RegExp('[^0-9a-zA-Z]+')).where((p) => p.isNotEmpty);
    return parts.map((p) => p[0].toUpperCase() + p.substring(1)).join();
  }

  void _selectTable(String tableId) {
    final controller = _controller;
    if (controller == null) return;
    controller.select([tableId]);
    for (final element in controller.document.elements) {
      if (element is ShapeElement && element.id == tableId) {
        controller.setCamera(
          DiagramCameraState(
            center: element.frame.center,
            zoom: controller.camera.zoom,
            viewportSize: controller.camera.viewportSize,
          ),
        );
        break;
      }
    }
    setState(() => _selectedTable = tableId);
  }

  /// The engine paints its own hover/selection outline in the theme's selection
  /// color. We suppress it (transparent) and draw our own chrome in the overlay.
  DiagramTheme _diagramTheme(Brightness brightness) {
    final base = brightness == Brightness.dark
        ? DiagramTheme.dark
        : DiagramTheme.light;
    return base.copyWith(
      selection: base.selection.copyWith(
        color: const Color(0x00000000),
        handleFill: const Color(0x00000000),
        handleHover: const Color(0x00000000),
        marquee: const Color(0x553B5BFF),
      ),
    );
  }

  Future<void> _openSettings() async {
    await showDialog<void>(
      context: context,
      builder: (context) =>
          _SettingsDialog(lens: _lens, onChanged: _updateSettings),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurfaceVariant;
    final divider = theme.dividerColor;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 16, 12, 14),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Serverpod Lens',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        _sourceLabel == null
                            ? 'Visualize your Serverpod schema as a connected map'
                            : 'Source: $_sourceLabel',
                        style: theme.textTheme.bodySmall?.copyWith(color: muted),
                      ),
                    ],
                  ),
                ),
                TextButton.icon(
                  onPressed: _busy ? null : _openProject,
                  icon: _busy
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.folder_open, size: 18),
                  label: const Text('Open project'),
                ),
                IconButton(
                  tooltip: 'Settings',
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: _openSettings,
                ),
                PopupMenuButton<String>(
                  tooltip: 'More',
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) {
                    switch (value) {
                      case 'add_table':
                        _addTable();
                      case 'add_column':
                        _addColumn();
                      case 'export':
                        _exportModels();
                    }
                  },
                  itemBuilder: (context) => const [
                    PopupMenuItem(value: 'add_table', child: Text('Add table')),
                    PopupMenuItem(
                      value: 'add_column',
                      child: Text('Add column to selected table'),
                    ),
                    PopupMenuItem(
                      value: 'export',
                      child: Text('Export .spy.yaml'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1, color: divider),
          Expanded(
            child: switch ((_error, _graph, _controller)) {
              (final Object error, _, _) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text('Failed to load schema: $error'),
                ),
              ),
              (_, final SchemaGraph graph, final DiagramController controller) =>
                Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: 300,
                      child: _Sidebar(
                        modules: graph.modules,
                        totalTables: graph.tables.length,
                        selectedModule: _selectedModule,
                        tables: _visibleTables,
                        selectedTable: _selectedTable,
                        onModuleChanged: _applyModule,
                        onQueryChanged: (value) =>
                            setState(() => _query = value),
                        onTableTap: _selectTable,
                      ),
                    ),
                    VerticalDivider(width: 1, color: divider),
                    Expanded(
                      child: DiagramCanvas(
                        controller: controller,
                        theme: _diagramTheme(theme.brightness),
                      ),
                    ),
                  ],
                ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
        ],
      ),
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({
    required this.modules,
    required this.totalTables,
    required this.selectedModule,
    required this.tables,
    required this.selectedTable,
    required this.onModuleChanged,
    required this.onQueryChanged,
    required this.onTableTap,
  });

  final List<SchemaModule> modules;
  final int totalTables;
  final String selectedModule;
  final List<SchemaTable> tables;
  final String? selectedTable;
  final ValueChanged<String> onModuleChanged;
  final ValueChanged<String> onQueryChanged;
  final ValueChanged<String> onTableTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurfaceVariant;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Schema', style: theme.textTheme.titleSmall),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: theme.dividerColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedModule,
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: _kAll,
                        child: _option('All schemas', totalTables, muted),
                      ),
                      for (final module in modules)
                        DropdownMenuItem(
                          value: module.name,
                          child: _option(
                            module.name,
                            module.tableCount,
                            muted,
                          ),
                        ),
                    ],
                    onChanged: (value) {
                      if (value != null) onModuleChanged(value);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                onChanged: onQueryChanged,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search tables…',
                  prefixIcon: const Icon(Icons.search, size: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
          child: Row(
            children: [
              Text('Tables', style: theme.textTheme.titleSmall),
              const Spacer(),
              Text(
                '${tables.length}',
                style: TextStyle(fontSize: 12, color: muted),
              ),
            ],
          ),
        ),
        Divider(height: 1, color: theme.dividerColor),
        Expanded(
          child: ListView.builder(
            itemCount: tables.length,
            itemBuilder: (context, index) {
              final table = tables[index];
              return ListTile(
                dense: true,
                selected: table.name == selectedTable,
                leading: const Icon(Icons.table_chart_outlined, size: 18),
                title: Text(
                  table.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13),
                ),
                subtitle: Text(
                  '${table.columns.length} columns · '
                  '${table.foreignKeys.length} FKs',
                  style: const TextStyle(fontSize: 11),
                ),
                onTap: () => onTableTap(table.name),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _option(String label, int count, Color muted) => Row(
    children: [
      Expanded(child: Text(label)),
      Text('$count', style: TextStyle(fontSize: 12, color: muted)),
    ],
  );
}

class _SettingsDialog extends StatelessWidget {
  const _SettingsDialog({required this.lens, required this.onChanged});

  final LensState lens;
  final ValueChanged<LensSettings> onChanged;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Settings'),
      content: SizedBox(
        width: 400,
        child: ListenableBuilder(
          listenable: lens,
          builder: (context, _) {
            final settings = lens.value;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const _SectionLabel('Layout'),
                  SegmentedButton<LensLayout>(
                    segments: const [
                      ButtonSegment(
                        value: LensLayout.layered,
                        label: Text('Layered'),
                        icon: Icon(Icons.account_tree_outlined),
                      ),
                      ButtonSegment(
                        value: LensLayout.grid,
                        label: Text('Grid'),
                        icon: Icon(Icons.grid_view),
                      ),
                    ],
                    selected: {settings.layout},
                    onSelectionChanged: (s) =>
                        onChanged(settings.copyWith(layout: s.first)),
                  ),
                  const SizedBox(height: 8),
                  const _SectionLabel('Connections'),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Connection animations'),
                    subtitle: const Text('Marching-ants signal on edges'),
                    value: settings.connectionAnimations,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(connectionAnimations: v)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Animate all edges'),
                    subtitle: const Text('Ignore selection; animate every edge'),
                    value: settings.animateAllEdges,
                    onChanged: settings.connectionAnimations
                        ? (v) => onChanged(settings.copyWith(animateAllEdges: v))
                        : null,
                  ),
                  const SizedBox(height: 8),
                  const _SectionLabel('Canvas'),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Show column types'),
                    value: settings.showColumnTypes,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(showColumnTypes: v)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Show grid'),
                    value: settings.showGrid,
                    onChanged: (v) => onChanged(settings.copyWith(showGrid: v)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Show minimap'),
                    value: settings.showMinimap,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(showMinimap: v)),
                  ),
                  const SizedBox(height: 8),
                  const _SectionLabel('Selection'),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Focus mode'),
                    subtitle: const Text('Dim everything but the selection'),
                    value: settings.focusMode,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(focusMode: v)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Cardinality markers'),
                    subtitle: const Text('Show 1 / N on selected edges'),
                    value: settings.showCardinality,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(showCardinality: v)),
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text('Hover highlight'),
                    subtitle: const Text('Highlight tables and columns on hover'),
                    value: settings.hoverHighlight,
                    onChanged: (v) =>
                        onChanged(settings.copyWith(hoverHighlight: v)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Done'),
        ),
      ],
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 4, bottom: 4),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 11,
        letterSpacing: 0.6,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    ),
  );
}

/// Spec returned by the Add-table dialog.
class _NewTable {
  const _NewTable(this.name, this.module, this.columns);

  final String name;
  final String module;
  final List<SchemaColumn> columns;
}

String _dbTypeFor(String dartType) {
  final t = dartType.replaceAll('?', '').trim();
  if (t.startsWith('List<')) return 'array';
  return switch (t) {
    'UuidValue' => 'uuid',
    'String' => 'text',
    'int' => 'int',
    'BigInt' => 'bigint',
    'double' => 'double',
    'bool' => 'boolean',
    'DateTime' => 'timestamp',
    'ByteData' => 'bytea',
    _ => 'text',
  };
}

class _AddTableDialog extends StatefulWidget {
  const _AddTableDialog();

  @override
  State<_AddTableDialog> createState() => _AddTableDialogState();
}

class _AddTableDialogState extends State<_AddTableDialog> {
  final _name = TextEditingController();
  final _columns = TextEditingController(text: 'name: String');
  String _module = 'public';

  @override
  void dispose() {
    _name.dispose();
    _columns.dispose();
    super.dispose();
  }

  List<SchemaColumn> _parseColumns() {
    final columns = <SchemaColumn>[];
    for (final raw in _columns.text.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty || !line.contains(':')) continue;
      final i = line.indexOf(':');
      final field = line.substring(0, i).trim();
      final type = line.substring(i + 1).trim();
      if (field.isEmpty || type.isEmpty) continue;
      columns.add(SchemaColumn(
        name: field,
        fieldName: field,
        dartType: type,
        dbType: _dbTypeFor(type),
        isNullable: type.endsWith('?'),
        isPrimaryKey: field == 'id',
        isUnique: false,
        defaultValue: null,
      ));
    }
    return columns;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add table'),
      content: SizedBox(
        width: 420,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _name,
              decoration: const InputDecoration(
                labelText: 'Table name (snake_case)',
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _module,
              decoration: const InputDecoration(labelText: 'Module'),
              items: const [
                DropdownMenuItem(value: 'public', child: Text('public')),
                DropdownMenuItem(value: 'sso', child: Text('sso')),
                DropdownMenuItem(value: 'elog', child: Text('elog')),
                DropdownMenuItem(value: 'main', child: Text('main')),
              ],
              onChanged: (v) => setState(() => _module = v ?? 'public'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _columns,
              maxLines: 6,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
              decoration: const InputDecoration(
                labelText: 'Columns (one per line: field: Type)',
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            final name = _name.text.trim();
            if (name.isEmpty) return;
            Navigator.of(context).pop(
              _NewTable(name, _module, _parseColumns()),
            );
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}

class _AddColumnDialog extends StatefulWidget {
  const _AddColumnDialog();

  @override
  State<_AddColumnDialog> createState() => _AddColumnDialogState();
}

class _AddColumnDialogState extends State<_AddColumnDialog> {
  final _name = TextEditingController();
  String _type = 'String';

  static const _types = [
    'String',
    'String?',
    'int',
    'int?',
    'bool',
    'bool?',
    'double',
    'double?',
    'DateTime',
    'DateTime?',
    'UuidValue',
    'UuidValue?',
  ];

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add column'),
      content: SizedBox(
        width: 360,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _name,
              decoration: const InputDecoration(
                labelText: 'Field name (camelCase)',
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _type,
              decoration: const InputDecoration(labelText: 'Type'),
              items: [
                for (final t in _types)
                  DropdownMenuItem(value: t, child: Text(t)),
              ],
              onChanged: (v) => setState(() => _type = v ?? 'String'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            final name = _name.text.trim();
            if (name.isEmpty) return;
            Navigator.of(context).pop(
              SchemaColumn(
                name: name,
                fieldName: name,
                dartType: _type,
                dbType: _dbTypeFor(_type),
                isNullable: _type.endsWith('?'),
                isPrimaryKey: name == 'id',
                isUnique: false,
                defaultValue: null,
              ),
            );
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
