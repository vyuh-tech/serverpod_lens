import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';
import 'package:vyuh_diagram_core/extension_api.dart' show DiagramCamera;

import '../schema/schema_context.dart';
import '../schema/schema_catalog.dart';
import '../schema/schema_canvas.dart';
import '../schema/schema_view_store.dart';
import '../schema/schema_view_interactions.dart';
import 'schema_table_inspector.dart';
import 'schema_view_settings.dart';

class SchemaViewer extends StatefulWidget {
  const SchemaViewer({
    super.key,
    required this.graph,
    this.onImport,
    this.importActions = const [],
    this.sourcePaths = const {},
    this.modelSources = const {},
    this.onOpenModel,
    this.storageKey,
    this.viewStore = const PreferencesSchemaViewStore(),
  });
  final SchemaGraph graph;
  final VoidCallback? onImport;
  final List<Widget> importActions;
  final Map<String, String> sourcePaths;
  final Map<String, String> modelSources;
  final FutureOr<void> Function(String)? onOpenModel;
  final String? storageKey;
  final SchemaViewStore viewStore;
  @override
  State<SchemaViewer> createState() => _SchemaViewerState();
}

class _SchemaViewerState extends State<SchemaViewer> {
  late SchemaCatalog _catalog;
  late SchemaContext _context;
  final _preferences = SchemaViewPreferences();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _canvasKey = GlobalKey();
  final _search = TextEditingController();
  final _expandedSchemas = <String>{};
  final _inspected = ValueNotifier<String?>(null);
  final _savedViews = <String, Map<String, dynamic>>{};
  DiagramController? _controller;
  ReactionDisposer? _selectionWatcher;
  ReactionDisposer? _effectWatcher;
  ReactionDisposer? _positionWatcher;
  Timer? _saveDebounce;
  Timer? _searchDebounce;
  String? _schema;
  String? _canvasSchema;
  String _query = '';
  bool _browserVisible = true;
  bool _inspectorVisible = false;
  double _browserWidth = 280;
  double _inspectorWidth = 380;
  bool _loading = false;
  bool _sheetOpen = false;
  bool _saveError = false;
  Object? _error;
  int _generation = 0;

  String get _storageKey => widget.storageKey ?? widget.graph.source;
  String get _viewKey => 'schema:${_canvasSchema ?? '*'}';

  @override
  void initState() {
    super.initState();
    _index();
    unawaited(_initialize());
  }

  void _index() {
    _catalog = SchemaCatalog(widget.graph);
    _context = SchemaContext(widget.graph);
  }

  @override
  void didUpdateWidget(covariant SchemaViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (identical(widget.graph, oldWidget.graph)) return;
    _rememberView();
    final projectChanged =
        oldWidget.storageKey != widget.storageKey ||
        oldWidget.graph.source != widget.graph.source;
    _index();
    if (projectChanged) {
      _savedViews.clear();
      _expandedSchemas.clear();
      _schema = null;
      _query = '';
      _search.clear();
      _inspected.value = null;
      _replaceController(null);
      unawaited(_initialize());
    } else {
      _expandedSchemas.retainAll(_catalog.schemaCounts.keys);
      if (!_catalog.schemaCounts.containsKey(_schema)) _schema = null;
      final selected = _context.tables.containsKey(_inspected.value)
          ? _inspected.value
          : null;
      unawaited(_openSchema(_schema, selected: selected, preserveCamera: true));
    }
  }

  Future<void> _initialize() async {
    final generation = ++_generation;
    setState(() => _loading = true);
    try {
      final saved = await widget.viewStore.read(_storageKey);
      if (!mounted || generation != _generation) return;
      final views = saved?['views'];
      if (saved?['version'] == 1 && views is Map) {
        for (final entry in views.entries.take(100)) {
          if (entry.key is String && entry.value is Map) {
            _savedViews[entry.key] = Map<String, dynamic>.from(
              entry.value as Map,
            );
          }
        }
      }
    } catch (_) {
      // Storage is optional; corrupt preferences never block the diagram.
    }
    if (mounted && generation == _generation) await _openSchema(null);
  }

  void _rememberView() {
    final controller = _controller;
    if (controller == null) return;
    _savedViews[_viewKey] = {
      'positions': {
        for (final shape
            in controller.document.elements.whereType<ShapeElement>())
          shape.id: [shape.frame.left, shape.frame.top],
      },
      'center': [controller.camera.center.x, controller.camera.center.y],
      'zoom': controller.camera.zoom,
    };
  }

  Future<void> _persist() async {
    _rememberView();
    try {
      await widget.viewStore.write(_storageKey, {
        'version': 1,
        'views': _savedViews,
      });
      if (mounted && _saveError) setState(() => _saveError = false);
    } catch (_) {
      if (mounted) setState(() => _saveError = true);
    }
  }

  void _queueSave() {
    _saveDebounce?.cancel();
    _saveDebounce = Timer(
      const Duration(milliseconds: 400),
      () => unawaited(_persist()),
    );
  }

  DiagramPoint? _point(Object? value) {
    if (value is! List ||
        value.length != 2 ||
        value[0] is! num ||
        value[1] is! num) {
      return null;
    }
    final x = (value[0] as num).toDouble(), y = (value[1] as num).toDouble();
    if (!x.isFinite || !y.isFinite || x.abs() > 1e8 || y.abs() > 1e8) {
      return null;
    }
    return DiagramPoint(x, y);
  }

  void _replaceController(DiagramController? next) {
    _selectionWatcher?.call();
    _effectWatcher?.call();
    _positionWatcher?.call();
    final old = _controller;
    _controller = next;
    if (old != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => old.dispose());
    }
    if (next == null) return;
    _effectWatcher = watchSchemaSelection(
      next,
      preferences: _preferences,
      disableAnimations: MediaQuery.disableAnimationsOf(context),
    );
    _positionWatcher = reaction(
      (_) => (next.document.revision, next.camera.center, next.camera.zoom),
      (_) => _queueSave(),
    );
    _selectionWatcher = reaction((_) => next.selection, (selection) {
      final ids = switch (selection) {
        ElementSelection(:final elementIds) => elementIds,
        StorySelection(:final elementId) => {elementId},
        _ => const <String>{},
      };
      final id = ids.where(_context.tables.containsKey).firstOrNull;
      final connectionSelected =
          selection is ConnectorLabelSelection ||
          ids.any((id) => next.document.elementById(id) is ConnectorElement);
      scheduleMicrotask(() {
        if (!mounted ||
            !identical(next, _controller) ||
            next.selection != selection) {
          return;
        }
        // Lines are context, not inspector targets. Preserve the table when a
        // native hit test selects a connection or its label.
        if (connectionSelected) {
          final tables = ids.where(_context.tables.containsKey).toList();
          final previous = _inspected.value;
          if (tables.isEmpty && previous != null) {
            tables.add(previous);
          }
          next.select(tables);
          return;
        }
        _updatePanels(() {
          if (_inspected.value != id) _inspectorVisible = id != null;
          _inspected.value = id;
        });
        if (id != null &&
            MediaQuery.sizeOf(context).width < 1100 &&
            !_sheetOpen) {
          unawaited(_showInspector());
        }
      });
    });
  }

  void _clearSelection() {
    _controller?.clearSelection();
    _updatePanels(() {
      _inspected.value = null;
      _inspectorVisible = false;
    });
  }

  void _updatePanels(VoidCallback update) {
    final controller = _controller;
    final camera = controller?.camera;
    final before = (
      _browserVisible,
      _inspected.value != null,
      _inspectorVisible,
      _browserWidth,
      _inspectorWidth,
    );
    setState(update);
    if (before ==
        (
          _browserVisible,
          _inspected.value != null,
          _inspectorVisible,
          _browserWidth,
          _inspectorWidth,
        )) {
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted ||
          controller == null ||
          camera == null ||
          !identical(controller, _controller)) {
        return;
      }
      controller.setCamera(
        controller.camera.copyWith(center: camera.center, zoom: camera.zoom),
      );
      updateSchemaZoomRange(controller);
    });
  }

  Widget _panelHandle({
    required String label,
    required bool expanded,
    required bool left,
    required VoidCallback onPressed,
    bool enabled = true,
    ValueChanged<double>? onResize,
  }) {
    final colors = Theme.of(context).colorScheme;
    return MouseRegion(
      cursor: expanded
          ? SystemMouseCursors.resizeColumn
          : SystemMouseCursors.basic,
      child: GestureDetector(
        key: ValueKey('resize:$label'),
        behavior: HitTestBehavior.opaque,
        onHorizontalDragUpdate: expanded && onResize != null
            ? (event) => onResize(event.delta.dx)
            : null,
        child: SizedBox(
          width: 24,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Center(
                child: VerticalDivider(width: 1, color: colors.outlineVariant),
              ),
              if (expanded)
                Center(
                  child: Icon(
                    Icons.drag_indicator,
                    size: 16,
                    color: colors.outlineVariant,
                  ),
                ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: SizedBox(
                    width: 24,
                    height: 40,
                    child: Material(
                      color: colors.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints.tightFor(
                          width: 24,
                          height: 40,
                        ),
                        tooltip: '${expanded ? 'Collapse' : 'Expand'} $label',
                        onPressed: enabled ? onPressed : null,
                        iconSize: 18,
                        icon: Icon(
                          (left == expanded)
                              ? Icons.chevron_left
                              : Icons.chevron_right,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectTable(String id, {bool closeBrowser = false}) async {
    final table = _context.tables[id];
    if (table == null || _loading) return;
    if (closeBrowser) _scaffoldKey.currentState?.closeDrawer();
    FocusManager.instance.primaryFocus?.unfocus();
    _updatePanels(() => _inspectorVisible = true);
    if (_controller?.document.elementById(id) == null) {
      await _openSchema(table.schema, selected: id);
    } else {
      _controller!.select([id]);
    }
    final controller = _controller;
    if (!mounted || controller == null) return;
    // A cross-schema selection replaces the canvas. Wait for that native
    // surface and its viewport before navigating to the chosen table.
    await WidgetsBinding.instance.endOfFrame;
    if (!mounted || !identical(controller, _controller)) return;
    // Tree/relationship navigation brings the node into view. Canvas clicks
    // only inspect: they keep the user's existing pan and zoom.
    await controller.view.show(ViewTarget.element(id, padding: 40));
    // Readable natural-size cards keep some surrounding context. Explicit
    // Fit view still uses the largest fit for the complete schema scope.
    if (controller.camera.zoom > 1) DiagramCamera(controller).setZoom(1);
  }

  Future<void> _openSchema(
    String? schema, {
    String? selected,
    bool preserveCamera = false,
  }) async {
    if (!preserveCamera && _controller != null && _canvasSchema == schema) {
      _clearSelection();
      _fit();
      return;
    }
    _rememberView();
    final saved = _savedViews['schema:${schema ?? '*'}'];
    final generation = ++_generation;
    setState(() {
      _schema = schema;
      _loading = true;
      _error = null;
    });
    DiagramController? next;
    try {
      final graph = widget.graph.copyWith(
        tables: _catalog.tables(schema: schema),
      );
      next = await buildSchemaCanvas(graph, _preferences);
      final positions = saved?['positions'];
      if (positions is Map) {
        next.edits.batch('Restore table positions', () {
          for (final entry in positions.entries) {
            if (entry.key is! String) continue;
            final point = _point(entry.value);
            final frame = next!.scene
                .shapeById(entry.key as String)
                ?.source
                .frame;
            if (point != null && frame != null) {
              next.edits
                  .move(
                    DiagramPoint(point.x - frame.left, point.y - frame.top),
                    ids: [entry.key as String],
                  )
                  .requireAllowed();
            }
          }
        }, history: false).requireAllowed();
      }
      if (!mounted || generation != _generation) {
        next.dispose();
        return;
      }
      final controller = next;
      setState(() {
        _replaceController(controller);
        _canvasSchema = schema;
        _inspected.value = selected;
        _loading = false;
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || !identical(controller, _controller)) return;
        _syncViewport(controller);
        final center = _point(saved?['center']);
        final zoom = saved?['zoom'];
        if (preserveCamera &&
            center != null &&
            zoom is num &&
            zoom.isFinite &&
            zoom > 0) {
          controller.setCamera(
            controller.camera.copyWith(center: center, zoom: zoom.toDouble()),
          );
        } else {
          fitSchemaCanvas(controller);
        }
        if (selected != null) controller.select([selected]);
        _queueSave();
      });
    } catch (error) {
      next?.dispose();
      if (mounted && generation == _generation) {
        setState(() {
          _error = error;
          _loading = false;
        });
      }
    }
  }

  void _syncViewport(DiagramController controller) {
    final box = _canvasKey.currentContext?.findRenderObject();
    if (box is RenderBox && box.hasSize && !box.size.isEmpty) {
      DiagramCamera(controller)
          .setViewport(DiagramSize(box.size.width, box.size.height));
      updateSchemaZoomRange(controller);
    }
  }

  void _fit() {
    final controller = _controller;
    if (controller == null || _loading) return;
    _syncViewport(controller);
    fitSchemaCanvas(controller);
  }

  Future<void> _autoLayout(SchemaLayout layout) async {
    final controller = _controller;
    if (controller == null || _loading) return;
    setState(() => _loading = true);
    try {
      await controller.layout(
        layout.resolve(_catalog.tables(schema: _schema).length),
      );
      if (mounted && identical(controller, _controller)) {
        setState(() => _loading = false);
        _fit();
      }
    } catch (error) {
      if (mounted) {
        setState(() {
          _error = error;
          _loading = false;
        });
      }
    }
    _queueSave();
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

  Widget _inspector(String? id, VoidCallback onClose) {
    final table = _context.tables[id];
    return table == null
        ? const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                'Select a table to see its details, fields, relationships and source.',
                textAlign: TextAlign.center,
              ),
            ),
          )
        : SchemaTableInspector(
            table: table,
            graph: _context,
            sourcePath: widget.sourcePaths[table.name],
            sourceCode: widget.modelSources[table.name],
            onOpenModel: widget.onOpenModel,
            onClose: onClose,
            onSelectTable: (id) => unawaited(_selectTable(id)),
          );
  }

  Future<void> _showInspector() async {
    if (_sheetOpen || _inspected.value == null) return;
    _sheetOpen = true;
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheet) => SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(sheet).height * .8,
          child: ValueListenableBuilder<String?>(
            valueListenable: _inspected,
            builder: (_, id, _) =>
                _inspector(id, () => Navigator.of(sheet).pop()),
          ),
        ),
      ),
    );
    _sheetOpen = false;
    if (mounted) _clearSelection();
  }

  Widget _browser({bool closeOnSelect = false}) {
    final matches = _catalog.tables(query: _query);
    final counts = _catalog.schemaCounts;
    final bySchema = <String, List<SchemaTable>>{};
    for (final table in matches) {
      bySchema.putIfAbsent(table.schema, () => []).add(table);
    }
    final schemas = counts.keys.toList()..sort();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Schemas',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  IconButton(
                    tooltip: 'Collapse all schemas',
                    onPressed: () => setState(_expandedSchemas.clear),
                    icon: const Icon(Icons.unfold_less),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _search,
                decoration: const InputDecoration(
                  hintText: 'Find a table or column',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _searchDebounce?.cancel();
                  _searchDebounce = Timer(
                    const Duration(milliseconds: 120),
                    () {
                      if (!mounted) return;
                      setState(() {
                        _query = value;
                        if (value.isNotEmpty) {
                          _expandedSchemas.addAll(
                            _catalog
                                .tables(query: value)
                                .map((table) => table.schema),
                          );
                        }
                      });
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ListTile(
                  selected: _schema == null,
                  leading: const Icon(Icons.account_tree_outlined, size: 20),
                  title: const Text('All schemas'),
                  subtitle: Text('${widget.graph.tables.length} tables'),
                  onTap: _loading ? null : () => _openSchema(null),
                ),
              ),
              if (matches.isEmpty)
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text('No matching tables')),
                ),
              for (final schema in schemas)
                if (bySchema.containsKey(schema)) ...[
                  SliverToBoxAdapter(
                    child: Row(
                      key: ValueKey('schema:$schema'),
                      children: [
                        IconButton(
                          key: ValueKey('toggle-schema:$schema'),
                          tooltip:
                              '${_expandedSchemas.contains(schema) ? 'Collapse' : 'Expand'} $schema',
                          icon: Icon(
                            _expandedSchemas.contains(schema)
                                ? Icons.expand_more
                                : Icons.chevron_right,
                          ),
                          onPressed: () => setState(() {
                            if (!_expandedSchemas.remove(schema)) {
                              _expandedSchemas.add(schema);
                            }
                          }),
                        ),
                        Expanded(
                          child: ListTile(
                            selected: _schema == schema,
                            contentPadding: const EdgeInsets.only(
                              left: 4,
                              right: 12,
                            ),
                            title: Text(schema),
                            subtitle: Text('${counts[schema]} tables'),
                            onTap: _loading
                                ? null
                                : () {
                                    _expandedSchemas.add(schema);
                                    _openSchema(schema);
                                    if (closeOnSelect) {
                                      _scaffoldKey.currentState?.closeDrawer();
                                    }
                                  },
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_expandedSchemas.contains(schema))
                    SliverList.builder(
                      itemCount: bySchema[schema]!.length,
                      itemBuilder: (_, index) {
                        final table = bySchema[schema]![index];
                        return ListTile(
                          key: ValueKey('table:${table.name}'),
                          contentPadding: const EdgeInsets.only(
                            left: 48,
                            right: 12,
                          ),
                          dense: true,
                          selected: table.name == _inspected.value,
                          leading: const Icon(
                            Icons.table_chart_outlined,
                            size: 18,
                          ),
                          title: Text(
                            table.name.startsWith('$schema.')
                                ? table.name.substring(schema.length + 1)
                                : table.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            '${table.columns.length} columns · ${table.foreignKeys.length} references',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: _loading
                              ? null
                              : () => _selectTable(
                                  table.name,
                                  closeBrowser: closeOnSelect,
                                ),
                        );
                      },
                    ),
                ],
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 700;
    final desktop = MediaQuery.sizeOf(context).width >= 1100;
    final width = MediaQuery.sizeOf(context).width;
    final inspectorMax = (width - (_browserVisible ? 220 : 0) - 48 - 360)
        .clamp(320.0, 600.0)
        .toDouble();
    final inspectorWidth = _inspectorWidth
        .clamp(320.0, inspectorMax)
        .toDouble();
    final browserMax =
        (width -
                (desktop && _inspected.value != null
                    ? 24 + (_inspectorVisible ? inspectorWidth : 0)
                    : 0) -
                24 -
                360)
            .clamp(220.0, 420.0)
            .toDouble();
    final browserWidth = _browserWidth.clamp(220.0, browserMax).toDouble();
    final resizeDirection = Directionality.of(context) == TextDirection.rtl
        ? -1.0
        : 1.0;
    final controller = _controller;
    final material = Theme.of(context);
    final diagram = material.brightness == Brightness.dark
        ? DiagramTheme.dark
        : DiagramTheme.light;
    final content = controller == null
        ? Center(
            child: _loading
                ? const CircularProgressIndicator()
                : const Text('No schema loaded'),
          )
        : ClipRect(
            child: DiagramCanvas(
              key: _canvasKey,
              controller: controller,
              theme: diagram.copyWith(
                canvas: diagram.canvas.copyWith(
                  background: material.colorScheme.surface,
                ),
              ),
            ),
          );
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.escape): _clearSelection,
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: compact
            ? Drawer(child: SafeArea(child: _browser(closeOnSelect: true)))
            : null,
        appBar: AppBar(
          title: Text(compact ? 'Lens' : 'Serverpod Lens'),
          leading: IconButton(
            tooltip: 'Browse tables',
            icon: Icon(compact ? Icons.menu : Icons.view_sidebar_outlined),
            onPressed: () {
              if (compact) {
                _scaffoldKey.currentState?.openDrawer();
              } else {
                _updatePanels(() => _browserVisible = !_browserVisible);
              }
            },
          ),
          actions: [
            if (widget.onImport != null)
              IconButton(
                tooltip: 'Import schema',
                onPressed: widget.onImport,
                icon: const Icon(Icons.folder_open),
              ),
            IconButton(
              tooltip: 'Fit view',
              onPressed: controller == null || _loading ? null : _fit,
              icon: const Icon(Icons.fit_screen),
            ),
            PopupMenuButton<SchemaLayout>(
              tooltip: 'Auto layout',
              enabled: controller != null && !_loading,
              onSelected: _autoLayout,
              itemBuilder: (_) => [
                for (final layout in SchemaLayout.values)
                  PopupMenuItem(value: layout, child: Text(layout.label)),
              ],
              icon: const Icon(Icons.auto_awesome_mosaic_outlined),
            ),
            IconButton(
              tooltip: 'Settings',
              onPressed: controller == null ? null : _settings,
              icon: const Icon(Icons.settings_outlined),
            ),
            ...widget.importActions,
          ],
        ),
        body: Column(
          children: [
            if (_loading) const LinearProgressIndicator(),
            if (_saveError)
              TextButton(
                onPressed: _persist,
                child: const Text('Could not save your view. Retry'),
              ),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Could not open this view: $_error'),
              ),
            Expanded(
              child: Row(
                children: [
                  if (!compact) ...[
                    Offstage(
                      offstage: !_browserVisible,
                      child: SizedBox(width: browserWidth, child: _browser()),
                    ),
                    _panelHandle(
                      label: 'schema browser',
                      onResize: (delta) => _updatePanels(
                        () => _browserWidth =
                            (browserWidth + delta * resizeDirection)
                                .clamp(220.0, browserMax)
                                .toDouble(),
                      ),
                      expanded: _browserVisible,
                      left: true,
                      onPressed: () => _updatePanels(
                        () => _browserVisible = !_browserVisible,
                      ),
                    ),
                  ],
                  Expanded(
                    key: const ValueKey('schema-content'),
                    child: content,
                  ),
                  if (desktop) ...[
                    if (_inspected.value != null)
                      _panelHandle(
                        label: 'table inspector',
                        onResize: (delta) => _updatePanels(
                          () => _inspectorWidth =
                              (inspectorWidth - delta * resizeDirection)
                                  .clamp(320.0, inspectorMax)
                                  .toDouble(),
                        ),
                        expanded: _inspectorVisible,
                        left: false,
                        onPressed: () => _updatePanels(
                          () => _inspectorVisible = !_inspectorVisible,
                        ),
                      ),
                    if (_inspected.value != null)
                      Offstage(
                        offstage: !_inspectorVisible,
                        child: SizedBox(
                          width: inspectorWidth,
                          child: _inspector(_inspected.value, _clearSelection),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    ++_generation;
    _saveDebounce?.cancel();
    unawaited(_persist());
    _positionWatcher?.call();
    _searchDebounce?.cancel();
    _search.dispose();
    _inspected.dispose();
    _selectionWatcher?.call();
    _effectWatcher?.call();
    final controller = _controller;
    if (controller != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => controller.dispose());
    }
    super.dispose();
  }
}
