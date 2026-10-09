import 'dart:async';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart'
    show SchemaGraph, SchemaTable;
import 'package:vyuh_diagram_codec_svg/vyuh_diagram_codec_svg.dart';
import 'package:vyuh_diagram_extension_editor/vyuh_diagram_extension_editor.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/project_analyzer.dart';
import '../schema/schema_diagram.dart';
import '../schema/schema_relations_extension.dart';

/// Project loading, search and schema filtering around Vyuh's native editor.
class SchemaMapScreen extends StatefulWidget {
  const SchemaMapScreen({super.key, this.asset = 'assets/schema_graph.json'});
  final String asset;
  @override
  State<SchemaMapScreen> createState() => _SchemaMapScreenState();
}

class _SchemaMapScreenState extends State<SchemaMapScreen> {
  SchemaGraph? _graph;
  DiagramController? _controller;
  String? _module;
  String _query = '';
  String _source = 'Sample schema';
  Object? _error;
  bool _loading = true;
  int _loadGeneration = 0;

  @override
  void initState() {
    super.initState();
    unawaited(_loadSample());
  }

  Future<void> _loadSample() async {
    try {
      final graph = SchemaDiagram.graphFromJson(
        await rootBundle.loadString(widget.asset),
      );
      await _setGraph(graph, 'Sample · ${graph.source}');
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
          SchemaTableExtension(),
          const LayoutExtension(),
          EditorExtension(
            palette: true,
            inspector: InspectorPlacement.docked,
          ),
          TableFlutterExtension(),
          MinimapExtension(
            initiallyExpanded: true,
            alignment: Alignment.bottomRight,
            policy: const DiagramMinimapPolicy(showConnections: true),
          ),
          SnapGuidesExtension(),
          NavigationExtension(fitOnAttach: true),
          GridExtension(),
          const SchemaRelationsExtension(),
          SvgExtension(),
        ],
      ),
    );
    try {
      await SchemaDiagram.build(graph, controller: controller);
    } catch (_) {
      controller.dispose();
      rethrow;
    }
    if (!mounted || generation != _loadGeneration) {
      controller.dispose();
      return;
    }
    final previous = _controller;
    setState(() {
      _controller = controller;
      _graph = graph;
      _source = source;
      _module = null;
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
      if (analysis.isEmpty) {
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

  List<SchemaTable> get _tables {
    final query = _query.trim().toLowerCase();
    return (_graph?.tables ?? <SchemaTable>[])
        .where(
          (table) =>
              (_module == null || table.module == _module) &&
              (query.isEmpty ||
                  table.name.toLowerCase().contains(query) ||
                  table.columns.any(
                    (column) => column.name.toLowerCase().contains(query),
                  )),
        )
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }

  void _filter(String? module) {
    final controller = _controller;
    final graph = _graph;
    if (controller == null || graph == null) return;
    final visible = {
      for (final table in graph.tables)
        if (module == null || table.module == module) table.name,
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
    setState(() => _module = module);
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

  Future<void> _copyDiagram() async {
    final controller = _controller;
    if (controller == null) return;
    await Clipboard.setData(
      ClipboardData(text: controller.save(DiagramJsonCodec.new)),
    );
    if (mounted) _message('Diagram JSON copied');
  }

  Future<void> _settings() async {
    final controller = _controller;
    if (controller == null) return;
    await showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Schema view'),
        content: SizedBox(
          width: 380,
          child: Observer(
            builder: (_) {
              final grid = controller.options<GridOptions>();
              final minimap = controller.options<MinimapOptions>();
              final relations = controller.options<SchemaRelationsOptions>();
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SwitchListTile(
                    title: const Text('Grid'),
                    value: grid.visible,
                    onChanged: (value) =>
                        controller.setOptions(grid.copyWith(visible: value)),
                  ),
                  SwitchListTile(
                    title: const Text('Snap to grid'),
                    value: grid.snap,
                    onChanged: (value) =>
                        controller.setOptions(grid.copyWith(snap: value)),
                  ),
                  SwitchListTile(
                    title: const Text('Minimap'),
                    value: minimap.visible,
                    onChanged: (value) =>
                        controller.setOptions(minimap.copyWith(visible: value)),
                  ),
                  SwitchListTile(
                    title: const Text('Animate relations'),
                    value: relations.animate,
                    onChanged: (value) => controller.setOptions(
                      relations.copyWith(animate: value),
                    ),
                  ),
                  SwitchListTile(
                    title: const Text('Animate all relations'),
                    value: relations.animateAll,
                    onChanged: relations.animate
                        ? (value) => controller.setOptions(
                            relations.copyWith(animateAll: value),
                          )
                        : null,
                  ),
                  SwitchListTile(
                    title: const Text('Focus selected table and neighbours'),
                    value: relations.focus,
                    onChanged: (value) =>
                        controller.setOptions(relations.copyWith(focus: value)),
                  ),
                ],
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    ++_loadGeneration;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serverpod Lens'),
        actions: [
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
            onPressed: controller == null ? null : _settings,
            icon: const Icon(Icons.settings_outlined),
          ),
          IconButton(
            tooltip: 'Copy diagram JSON',
            onPressed: controller == null ? null : _copyDiagram,
            icon: const Icon(Icons.copy_outlined),
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
                                onPressed: _loadSample,
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                  )
                : LayoutBuilder(
                    builder: (context, constraints) {
                      final sidebar = _sidebar(controller);
                      final canvas = DiagramCanvas(
                        key: ValueKey(controller),
                        controller: controller,
                        theme: Theme.of(context).brightness == Brightness.dark
                            ? DiagramTheme.dark
                            : DiagramTheme.light,
                      );
                      if (constraints.maxWidth < 700) {
                        return Column(
                          children: [
                            SizedBox(height: 260, child: sidebar),
                            Expanded(child: canvas),
                          ],
                        );
                      }
                      return Row(
                        children: [
                          SizedBox(width: 280, child: sidebar),
                          const VerticalDivider(width: 1),
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

  Widget _sidebar(DiagramController controller) {
    final tables = _tables;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(_source, maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                key: ValueKey((_source, _module)),
                initialValue: _module ?? '',
                decoration: const InputDecoration(
                  labelText: 'Module',
                  border: OutlineInputBorder(),
                ),
                items: [
                  const DropdownMenuItem(value: '', child: Text('All modules')),
                  for (final module in _graph!.modules)
                    DropdownMenuItem(
                      value: module.name,
                      child: Text('${module.name} (${module.tableCount})'),
                    ),
                ],
                onChanged: (value) => _filter(value == '' ? null : value),
              ),
              const SizedBox(height: 12),
              TextField(
                key: ValueKey(_source),
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
                return const Center(child: Text('No matching tables'));
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
                      color: SchemaDiagram.moduleColor(table.module).toColor(),
                    ),
                    title: Text(
                      table.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text('${table.columns.length} columns'),
                    onTap: () {
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
