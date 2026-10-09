import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaModule, SchemaTable;
import 'package:vyuh_diagram_flutter/adapter.dart'
    show DiagramRenderPolicy, RenderingExtension;
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/lens_settings.dart';
import '../schema/lens_state.dart';
import '../schema/podlens_minimap_extension.dart';
import '../schema/podlens_signals_extension.dart';
import '../schema/podlens_table_extension.dart';
import '../schema/podlens_view_extension.dart';
import '../schema/schema_diagram.dart';

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
  final LensState _lens = LensState();
  Object? _error;

  String _selectedModule = _kAll;
  String? _selectedTable;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final json = await rootBundle.loadString(widget.asset);
      final graph = SchemaDiagram.graphFromJson(json);

      final colors = {for (final t in graph.tables) t.name: moduleColor(t.module)};
      final controller = DiagramController(
        configuration: DiagramConfiguration(
          extensions: [
            PodLensTableExtension(graph.tables, lens: _lens),
            PodLensSignalsExtension(lens: _lens),
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

      if (!mounted) {
        controller.dispose();
        return;
      }
      setState(() {
        _graph = graph;
        _controller = controller;
      });
    } catch (error) {
      if (mounted) setState(() => _error = error);
    }
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
                        'Visualize your Serverpod schema as a connected map',
                        style: theme.textTheme.bodySmall?.copyWith(color: muted),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  tooltip: 'Settings',
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: _openSettings,
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
                        theme: theme.brightness == Brightness.dark
                            ? DiagramTheme.dark
                            : DiagramTheme.light,
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
