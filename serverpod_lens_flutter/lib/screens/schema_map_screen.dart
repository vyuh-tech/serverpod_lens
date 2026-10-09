import 'dart:async';

import 'package:file_selector/file_selector.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaTable;
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/project_analyzer.dart';
import '../schema/schema_catalog.dart';
import '../schema/schema_diagram.dart';
import '../schema/schema_view_interactions.dart';
import 'schema_view_settings.dart';

/// Schema search and filtering around Vyuh's native read-only canvas.
class SchemaMapScreen extends StatefulWidget {
  const SchemaMapScreen({super.key, this.asset = 'assets/schema_graph.json'});
  final String asset;
  @override
  State<SchemaMapScreen> createState() => _SchemaMapScreenState();
}

class _SchemaMapScreenState extends State<SchemaMapScreen> {
  final _preferences = SchemaViewPreferences();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _browserVisible = true;
  final _searchController = TextEditingController();
  ReactionDisposer? _selectionWatcher;
  SchemaGraph? _graph;
  DiagramController? _controller;
  String? _schema;
  String _query = '';
  String _source = '';
  Object? _error;
  bool _loading = true;
  int _loadGeneration = 0;

  @override
  void initState() {
    super.initState();
    unawaited(_loadSchema());
  }

  Future<void> _loadSchema() async {
    try {
      final graph = SchemaDiagram.graphFromJson(
        await rootBundle.loadString(widget.asset),
      );
      await _setGraph(graph, graph.source);
    } catch (error) {
      if (mounted) {
        setState(() {
          _error = error;
          _loading = false;
        });
      }
    }
  }

  Future<void> _setGraph(SchemaGraph graph, String source) async {
    final generation = ++_loadGeneration;
    final controller = DiagramController(
      configuration: DiagramConfiguration(
        extensions: [
          schemaViewInteractions,
          ConnectorsExtension(),
          SnapGuidesExtension(
            enabled: _preferences.snapGuides,
            tolerance: _preferences.snapTolerance,
          ),
          SchemaTableExtension(),
          const LayoutExtension(),
          TableFlutterExtension(),
          MinimapExtension(
            visible: _preferences.minimap,
            initiallyExpanded: true,
            alignment: Alignment.bottomRight,
            policy: DiagramMinimapPolicy(
              showConnections: _preferences.minimapConnections,
            ),
          ),
          NavigationExtension(
            fitOnAttach: true,
            edgePanEnabled: _preferences.edgePan,
          ),
          GridExtension(
            visible: _preferences.grid,
            snap: _preferences.snap,
            size: _preferences.gridSize,
          ),
        ],
      ),
    );
    try {
      await SchemaDiagram.build(
        graph,
        controller: controller,
        layout: Layout.grid(columns: 12, gap: 56),
      );
      controller.diagram.setRules(schemaViewRules);
      applySchemaConnections(controller, _preferences);
    } catch (_) {
      controller.dispose();
      rethrow;
    }
    if (!mounted || generation != _loadGeneration) {
      controller.dispose();
      return;
    }
    _selectionWatcher?.call();
    _selectionWatcher = watchSchemaSelection(
      controller,
      preferences: _preferences,
    );
    final previous = _controller;
    _searchController.clear();
    setState(() {
      _controller = controller;
      _graph = graph;
      _source = source;
      _schema = null;
      _query = '';
      _error = null;
      _loading = false;
    });
    if (previous != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => previous.dispose());
    }
  }

  Future<void> _openProject() async {
    if (_loading) return;
    const zip = XTypeGroup(label: 'Serverpod project', extensions: ['zip']);
    final file = await openFile(acceptedTypeGroups: [zip]);
    if (file == null || !mounted) return;
    setState(() => _loading = true);
    try {
      final analysis = ProjectAnalyzer.analyzeZip(
        await file.readAsBytes(),
        name: file.name,
      );
      if (analysis.isEmpty && analysis.warnings.isNotEmpty) {
        throw FormatException(analysis.warnings.join('\n'));
      }
      await _setGraph(analysis.graph, file.name);
      if (mounted && analysis.warnings.isNotEmpty) {
        _message(analysis.warnings.join('\n'));
      }
    } catch (error) {
      if (mounted) {
        setState(() => _loading = false);
        _message('Could not open project: $error');
      }
    }
  }

  void _message(String message) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );

  List<SchemaTable> get _tables => _graph == null
      ? []
      : SchemaCatalog(_graph!).tables(schema: _schema, query: _query);

  void _filter(String? schema) {
    final controller = _controller;
    final graph = _graph;
    if (controller == null || graph == null) return;
    final visible = {
      for (final table in graph.tables)
        if (schema == null || table.schema == schema) table.name,
    };
    controller.edits.batch('Filter schema', () {
      for (final table in graph.tables) {
        controller.edits.setVisible(
          visible.contains(table.name),
          ids: [table.name],
        );
      }
      for (final edge
          in controller.document.elements.whereType<ConnectorElement>()) {
        final source = edge.start is BoundEndpoint
            ? (edge.start as BoundEndpoint).elementId
            : null;
        final target = edge.end is BoundEndpoint
            ? (edge.end as BoundEndpoint).elementId
            : null;
        controller.edits.setVisible(
          visible.contains(source) && visible.contains(target),
          ids: [edge.id],
        );
      }
    }).requireAllowed();
    controller.clearSelection();
    setState(() => _schema = schema);
    unawaited(
      controller.view.show(const ViewTarget.all(), motion: Motion.smooth),
    );
  }

  Future<void> _layout(Layout layout) async {
    final controller = _controller;
    if (controller == null || _loading) return;
    setState(() => _loading = true);
    try {
      final ids = controller.document.elements
          .whereType<ShapeElement>()
          .where((shape) => shape.isVisible)
          .map((shape) => shape.id)
          .toList();
      await controller.layout(layout, nodeIds: ids, motion: Motion.smooth);
      if (mounted && identical(controller, _controller)) {
        await controller.view.show(
          const ViewTarget.all(),
          motion: Motion.smooth,
        );
      }
    } catch (error) {
      if (mounted) _message('Could not arrange schema: $error');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _settings() async {
    final controller = _controller;
    if (controller == null) return;
    await showDialog<void>(
      context: context,
      builder: (_) =>
          SchemaViewSettings(controller: controller, preferences: _preferences),
    );
  }

  @override
  void dispose() {
    ++_loadGeneration;
    _searchController.dispose();
    _selectionWatcher?.call();
    final controller = _controller;
    // The child canvas must unmount before its controller is disposed.
    if (controller != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => controller.dispose());
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    final compact = MediaQuery.sizeOf(context).width < 700;
    return Scaffold(
      key: _scaffoldKey,
      drawer: compact && controller != null
          ? Drawer(
              child: SafeArea(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Schemas and tables'),
                      trailing: IconButton(
                        tooltip: 'Close schema browser',
                        icon: const Icon(Icons.close),
                        onPressed: () =>
                            _scaffoldKey.currentState?.closeDrawer(),
                      ),
                    ),
                    Expanded(child: _sidebar(controller, closeOnSelect: true)),
                  ],
                ),
              ),
            )
          : null,
      appBar: AppBar(
        title: Text(
          'Serverpod Lens',
          style: TextStyle(fontSize: compact ? 18 : 20),
        ),
        leading: IconButton(
          tooltip: compact || !_browserVisible
              ? 'Browse schemas'
              : 'Collapse schema browser',
          onPressed: controller == null
              ? null
              : () {
                  if (compact) {
                    _scaffoldKey.currentState?.openDrawer();
                  } else {
                    setState(() => _browserVisible = !_browserVisible);
                  }
                },
          icon: Icon(compact ? Icons.menu : Icons.view_sidebar_outlined),
        ),
        actions: [
          if (compact)
            IconButton(
              tooltip: 'Open project',
              onPressed: _loading ? null : _openProject,
              icon: const Icon(Icons.folder_open),
            )
          else
            TextButton.icon(
              onPressed: _loading ? null : _openProject,
              icon: const Icon(Icons.folder_open),
              label: const Text('Open project'),
            ),
          PopupMenuButton<String>(
            tooltip: 'Auto layout',
            enabled: controller != null && !_loading,
            icon: const Icon(Icons.account_tree_outlined),
            onSelected: (value) => _layout(switch (value) {
              'grid' => Layout.grid(columns: 8, gap: 56),
              'tree' => Layout.tree(direction: TreeDirection.right),
              'force' => Layout.force(),
              'circular' => Layout.circular(),
              _ => Layout.layered(
                direction: LayoutDirection.left,
                gap: 56,
                layerGap: 160,
              ),
            }),
            itemBuilder: (_) => const [
              PopupMenuItem(value: 'layered', child: Text('Layered')),
              PopupMenuItem(value: 'grid', child: Text('Grid')),
              PopupMenuItem(value: 'tree', child: Text('Tree')),
              PopupMenuItem(value: 'force', child: Text('Force directed')),
              PopupMenuItem(value: 'circular', child: Text('Circular')),
            ],
          ),
          IconButton(
            tooltip: 'Schema view settings',
            onPressed: controller == null || _loading ? null : _settings,
            icon: const Icon(Icons.settings_outlined),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          if (_loading) const LinearProgressIndicator(),
          Expanded(
            child: controller == null
                ? Center(
                    child: _error == null
                        ? const CircularProgressIndicator()
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Could not load schema: $_error'),
                              TextButton(
                                onPressed: _loadSchema,
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                  )
                : LayoutBuilder(
                    builder: (context, constraints) {
                      final sidebar = _sidebar(controller);
                      final material = Theme.of(context);
                      final diagramTheme =
                          material.brightness == Brightness.dark
                          ? DiagramTheme.dark
                          : DiagramTheme.light;
                      final canvas = ClipRect(
                        child: DiagramCanvas(
                          key: ValueKey(controller),
                          controller: controller,
                          theme: diagramTheme.copyWith(
                            canvas: diagramTheme.canvas.copyWith(
                              background: material.colorScheme.surface,
                            ),
                            selection: diagramTheme.selection.copyWith(
                              color: material.colorScheme.primary,
                              marquee: material.colorScheme.primary,
                              handleFill: material.colorScheme.surface,
                              handleHover:
                                  material.colorScheme.surfaceContainerHighest,
                            ),
                          ),
                        ),
                      );
                      if (constraints.maxWidth < 700) {
                        return canvas;
                      }
                      return Row(
                        children: [
                          if (_browserVisible) ...[
                            SizedBox(width: 280, child: sidebar),
                            const VerticalDivider(width: 1),
                          ],
                          Expanded(child: canvas),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _sidebar(DiagramController controller, {bool closeOnSelect = false}) {
    final tables = _tables;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                isExpanded: true,
                key: ValueKey((_source, _schema)),
                initialValue: _schema ?? '',
                decoration: const InputDecoration(
                  labelText: 'Schema',
                  border: OutlineInputBorder(),
                ),
                items: [
                  const DropdownMenuItem(value: '', child: Text('All schemas')),
                  for (final schema in SchemaCatalog(
                    _graph!,
                  ).schemaCounts.entries)
                    DropdownMenuItem(
                      value: schema.key,
                      child: Text(
                        '${schema.key} (${schema.value})',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
                onChanged: _loading
                    ? null
                    : (value) => _filter(value == '' ? null : value),
              ),
              const SizedBox(height: 12),
              TextField(
                key: ValueKey(_source),
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Find a table or column',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => setState(() => _query = value),
              ),
            ],
          ),
        ),
        Expanded(
          child: Observer(
            builder: (_) {
              final selection = controller.selection;
              final selected = selection is ElementSelection
                  ? selection.elementIds
                  : <String>{};
              if (tables.isEmpty) {
                return Center(
                  child: Text(
                    _graph!.tables.isEmpty
                        ? 'This schema has no tables'
                        : 'No matching tables',
                  ),
                );
              }
              return ListView.builder(
                itemCount: tables.length,
                itemBuilder: (_, index) {
                  final table = tables[index];
                  return ListTile(
                    dense: true,
                    selected: selected.contains(table.name),
                    leading: Icon(
                      Icons.table_chart_outlined,
                      size: 18,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      table.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text('${table.columns.length} columns'),
                    onTap: () {
                      if (closeOnSelect) {
                        _scaffoldKey.currentState?.closeDrawer();
                      }
                      FocusManager.instance.primaryFocus?.unfocus();
                      controller.select([table.name]);
                      unawaited(
                        controller.view.show(
                          ViewTarget.element(table.name),
                          motion: Motion.smooth,
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
