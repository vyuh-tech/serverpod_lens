import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show LogicalKeyboardKey;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show SchemaGraph, SchemaTable;
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/schema_catalog.dart';
import '../schema/schema_context.dart';
import '../schema/schema_diagram.dart';
import '../schema/schema_view_interactions.dart';
import 'schema_view_settings.dart';
import 'schema_group_editor.dart';
import 'schema_context_controls.dart';

/// Schema search and filtering around Vyuh's native read-only canvas.
class SchemaViewer extends StatefulWidget {
  const SchemaViewer({
    super.key,
    required this.graph,
    this.onImport,
    this.importActions = const [],
  });
  final SchemaGraph graph;
  final VoidCallback? onImport;
  final List<Widget> importActions;
  @override
  State<SchemaViewer> createState() => _SchemaViewerState();
}

class _SchemaViewerState extends State<SchemaViewer> {
  final _preferences = SchemaViewPreferences();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _browserVisible = true;
  final _searchController = TextEditingController();
  ReactionDisposer? _selectionWatcher;
  ReactionDisposer? _contextWatcher;
  SchemaContext? _contextGraph;
  SchemaNeighborhood? _neighborhood;
  final _groups = <SchemaGroup>[];
  SchemaGroup? _activeGroup;
  bool _groupsTab = false;
  bool _focusRelated = true;
  bool _selectingGroup = false;
  int _hops = 1;
  int _groupSequence = 0;
  RelationDirection _direction = RelationDirection.both;
  DiagramCameraState? _previousCamera;
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

  @override
  void didUpdateWidget(covariant SchemaViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(widget.graph, oldWidget.graph)) {
      setState(() => _loading = true);
      unawaited(_loadSchema());
    }
  }

  Future<void> _loadSchema() async {
    try {
      await _setGraph(widget.graph, widget.graph.source);
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
    _contextWatcher?.call();
    _selectionWatcher = watchSchemaSelection(
      controller,
      preferences: _preferences,
    );
    final previous = _controller;
    _searchController.clear();
    setState(() {
      _controller = controller;
      _graph = graph;
      _contextGraph = SchemaContext(graph);
      _neighborhood = null;
      _groups.clear();
      _activeGroup = null;
      _previousCamera = null;
      _source = source;
      _schema = null;
      _query = '';
      _error = null;
      _loading = false;
    });
    _contextWatcher = reaction((_) => controller.selection, (_) {
      // Native selection publishes inside an engine transaction. Decoration
      // edits must wait until that transaction has finished.
      scheduleMicrotask(() {
        if (!mounted ||
            !identical(controller, _controller) ||
            _selectingGroup) {
          return;
        }
        final ids = _selectedTables;
        if (_activeGroup != null && !setEquals(ids, _activeGroup!.members)) {
          _activeGroup = null;
        }
        _refreshContext();
      });
    });
    if (previous != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => previous.dispose());
    }
  }

  void _message(String message) =>
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));

  List<SchemaTable> get _tables => _graph == null
      ? []
      : SchemaCatalog(_graph!).tables(schema: _schema, query: _query);

  Set<String> get _selectedTables {
    final selection = _controller?.selection;
    return selection is ElementSelection
        ? selection.elementIds
              .where((id) => _contextGraph?.tables.containsKey(id) == true)
              .toSet()
        : {};
  }

  Set<String> get _contextMembers => _activeGroup?.members ?? _selectedTables;

  void _refreshContext() {
    final controller = _controller;
    final graph = _contextGraph;
    if (controller == null || graph == null) return;
    if (_activeGroup == null && _hops == 0) _hops = 1;
    _neighborhood = graph.neighborhood(
      _contextMembers,
      hops: _hops,
      direction: _direction,
    );
    applySchemaContext(controller, _focusRelated ? _neighborhood : null);
    setState(() {});
  }

  void _showAll() {
    _activeGroup = null;
    _controller?.clearSelection();
    _refreshContext();
  }

  Future<void> _fitRelated() async {
    final controller = _controller;
    final ids = _neighborhood?.tables;
    if (controller == null || ids == null || ids.isEmpty) return;
    final frames = controller.document.elements
        .whereType<ShapeElement>()
        .where((e) => e.isVisible && ids.contains(e.id))
        .map((e) => e.frame)
        .toList();
    if (frames.isEmpty) return;
    setState(() => _previousCamera ??= controller.camera);
    await controller.view.show(
      ViewTarget.rectangle(DiagramRect.union(frames)),
      motion: Motion.smooth,
    );
  }

  void _restoreCamera() {
    final controller = _controller;
    final previous = _previousCamera;
    if (controller == null || previous == null) return;
    controller.setCamera(
      DiagramCameraState(
        center: previous.center,
        zoom: previous.zoom,
        viewportSize: controller.camera.viewportSize,
      ),
    );
    setState(() => _previousCamera = null);
  }

  void _selectTable(String id, {bool closeBrowser = false}) {
    if (closeBrowser) _scaffoldKey.currentState?.closeDrawer();
    FocusManager.instance.primaryFocus?.unfocus();
    _activeGroup = null;
    _controller!.select([id]);
    _refreshContext();
    unawaited(
      _controller!.view.show(ViewTarget.element(id), motion: Motion.smooth),
    );
  }

  void _focusGroup(SchemaGroup group, {bool closeBrowser = false}) {
    _activeGroup = group;
    _selectingGroup = true;
    try {
      _controller!.select(group.members);
    } finally {
      _selectingGroup = false;
    }
    _refreshContext();
    if (closeBrowser) _scaffoldKey.currentState?.closeDrawer();
  }

  Future<void> _editGroup([SchemaGroup? group]) async {
    final graph = _contextGraph;
    if (graph == null) return;
    final result = await showDialog<SchemaGroup>(
      context: context,
      builder: (_) => SchemaGroupEditor(
        contextGraph: graph,
        id: group?.id ?? 'group-${++_groupSequence}',
        group: group,
        initialMembers: _selectedTables,
      ),
    );
    if (!mounted || result == null || !identical(graph, _contextGraph)) return;
    setState(() {
      final i = _groups.indexWhere((g) => g.id == result.id);
      if (i < 0) {
        _groups.add(result);
      } else {
        _groups[i] = result;
      }
      _groupsTab = true;
    });
    _focusGroup(result);
  }

  void _removeGroup(SchemaGroup group) {
    setState(() => _groups.removeWhere((g) => g.id == group.id));
    if (_activeGroup?.id == group.id) _showAll();
    _message('Removed group ${group.name}. Tables are unchanged.');
  }

  void _filter(
    String? schema, {
    bool preserveContext = false,
    bool fit = true,
  }) {
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
    if (!preserveContext) {
      _activeGroup = null;
      controller.clearSelection();
    }
    setState(() => _schema = schema);
    _refreshContext();
    if (fit) {
      unawaited(
        controller.view.show(const ViewTarget.all(), motion: Motion.smooth),
      );
    }
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

  Future<void> _relationships() async {
    final graph = _contextGraph!;
    final members = _contextMembers;
    final internal = graph.internal(members);
    final incoming = graph.external(
      members,
      direction: RelationDirection.incoming,
    );
    final outgoing = graph.external(
      members,
      direction: RelationDirection.outgoing,
    );
    final relations = [...internal, ...incoming, ...outgoing];
    final group = _activeGroup;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(sheetContext).height * .7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Text(
                  group == null
                      ? 'Table relationships'
                      : '${group.name} relationships',
                ),
                subtitle: Text(
                  '${internal.length} internal · ${incoming.length} incoming · ${outgoing.length} outgoing',
                ),
                trailing: IconButton(
                  tooltip: 'Close relationships',
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(sheetContext).pop(),
                ),
              ),
              if (group != null && group.note.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Text(group.note),
                ),
              const Divider(height: 1),
              Expanded(
                child: relations.isEmpty
                    ? const Center(
                        child: Text(
                          'No foreign-key relationships in this snapshot.',
                        ),
                      )
                    : ListView.builder(
                        itemCount: relations.length,
                        itemBuilder: (_, i) {
                          final relation = relations[i];
                          final key = relation.foreignKey;
                          final destination = members.contains(relation.table)
                              ? key.refTable
                              : relation.table;
                          final missing = !graph.tables.containsKey(
                            destination,
                          );
                          final kind =
                              members.contains(relation.table) &&
                                  members.contains(key.refTable)
                              ? 'Internal'
                              : members.contains(relation.table)
                              ? 'Outgoing'
                              : 'Incoming';
                          return ListTile(
                            leading: Icon(
                              missing
                                  ? Icons.link_off
                                  : Icons.account_tree_outlined,
                            ),
                            title: Text('${relation.table} → ${key.refTable}'),
                            subtitle: Text(
                              '${key.columns.join(', ')} → ${key.refColumns.join(', ')}\n$kind${missing ? ' · Target absent from snapshot' : ''}',
                            ),
                            isThreeLine: true,
                            onTap: missing
                                ? null
                                : () {
                                    Navigator.of(sheetContext).pop();
                                    if (_schema != null &&
                                        graph.tables[destination]?.schema !=
                                            _schema) {
                                      _filter(
                                        null,
                                        preserveContext: true,
                                        fit: false,
                                      );
                                    }
                                    _selectTable(destination);
                                  },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contextControls() {
    final graph = _contextGraph!;
    final neighborhood = _neighborhood!;
    return SchemaContextControls(
      title:
          _activeGroup?.name ??
          (_contextMembers.length == 1
              ? _contextMembers.single
              : '${_contextMembers.length} selected tables'),
      group: _activeGroup,
      focused: _focusRelated,
      direction: _direction,
      hops: _hops,
      tableCount: neighborhood.tables.length,
      hiddenCount: neighborhood.tables
          .where((id) => _schema != null && graph.tables[id]?.schema != _schema)
          .length,
      hasPreviousView: _previousCamera != null,
      onFocusChanged: (value) {
        _focusRelated = value;
        _refreshContext();
      },
      onDirectionChanged: (value) {
        _direction = value;
        _refreshContext();
      },
      onHopsChanged: (value) {
        _hops = value;
        _refreshContext();
      },
      onShowAll: _showAll,
      onFit: _fitRelated,
      onBack: _restoreCamera,
      onRelationships: _relationships,
      onCreateGroup: () => _editGroup(),
      onReveal: () => _filter(null, preserveContext: true, fit: false),
    );
  }

  @override
  void dispose() {
    ++_loadGeneration;
    _searchController.dispose();
    _selectionWatcher?.call();
    _contextWatcher?.call();
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
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _showAll},
      child: Scaffold(
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
                      Expanded(
                        child: _sidebar(controller, closeOnSelect: true),
                      ),
                    ],
                  ),
                ),
              )
            : null,
        appBar: AppBar(
          title: Text(
            compact ? 'Lens' : 'Serverpod Lens',
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
            if (widget.onImport != null && compact)
              IconButton(
                tooltip: 'Import schema',
                onPressed: _loading ? null : widget.onImport,
                icon: const Icon(Icons.folder_open),
              )
            else if (widget.onImport != null)
              TextButton.icon(
                onPressed: _loading ? null : widget.onImport,
                icon: const Icon(Icons.folder_open),
                label: const Text('Import schema'),
              ),
            ...widget.importActions,
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
            if (_neighborhood?.isEmpty == false) _contextControls(),
            if (_neighborhood?.isEmpty != false && _previousCamera != null)
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: _restoreCamera,
                  icon: const Icon(Icons.undo),
                  label: const Text('Back to previous view'),
                ),
              ),
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
                                color: _activeGroup == null
                                    ? material.colorScheme.primary
                                    : Color(_activeGroup!.color),
                                marquee: material.colorScheme.primary,
                                handleFill: material.colorScheme.surface,
                                handleHover: material
                                    .colorScheme
                                    .surfaceContainerHighest,
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
      ),
    );
  }

  Widget _sidebar(DiagramController controller, {bool closeOnSelect = false}) {
    final tables = _tables;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: SegmentedButton<bool>(
            segments: [
              const ButtonSegment(
                value: false,
                label: Text('Tables'),
                icon: Icon(Icons.table_chart_outlined),
              ),
              ButtonSegment(
                value: true,
                label: Text('Groups (${_groups.length})'),
                icon: const Icon(Icons.workspaces_outline),
              ),
            ],
            selected: {_groupsTab},
            showSelectedIcon: false,
            onSelectionChanged: (value) =>
                setState(() => _groupsTab = value.single),
          ),
        ),
        if (_groupsTab) ...[
          Padding(
            padding: const EdgeInsets.all(12),
            child: FilledButton.tonalIcon(
              onPressed: () => _editGroup(),
              icon: const Icon(Icons.add),
              label: const Text('Create group'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Group tables across schemas. Saved for this session.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: _groups.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Create a named group to explore a feature and its dependencies.',
                      ),
                    ),
                  )
                : ListView(
                    children: [
                      for (final group in _groups)
                        ListTile(
                          selected: _activeGroup?.id == group.id,
                          leading: Icon(
                            Icons.workspaces_outline,
                            color: Color(group.color),
                          ),
                          title: Text(
                            group.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            '${group.members.length} tables · ${_contextGraph!.external(group.members).length} external FKs',
                          ),
                          onTap: () =>
                              _focusGroup(group, closeBrowser: closeOnSelect),
                          trailing: PopupMenuButton<String>(
                            tooltip: 'Manage ${group.name}',
                            onSelected: (action) {
                              if (action == 'edit') {
                                _editGroup(group);
                              } else {
                                _removeGroup(group);
                              }
                            },
                            itemBuilder: (_) => const [
                              PopupMenuItem(
                                value: 'edit',
                                child: Text('Edit group'),
                              ),
                              PopupMenuItem(
                                value: 'remove',
                                child: Text('Remove group'),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
          ),
        ] else ...[
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
                    const DropdownMenuItem(
                      value: '',
                      child: Text('All schemas'),
                    ),
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
                      subtitle: Text(
                        '${table.columns.length} columns${switch (_neighborhood?.distances[table.name]) {
                          0 => ' · Selected',
                          1 => ' · Directly related',
                          2 => ' · 2 hops away',
                          _ => '',
                        }}',
                      ),
                      onTap: () {
                        _selectTable(table.name, closeBrowser: closeOnSelect);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ],
    );
  }
}
