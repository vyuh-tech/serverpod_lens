import 'dart:async';
import 'dart:math' show sqrt;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_extension_connectors/vyuh_diagram_extension_connectors.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:vyuh_diagram_extension_layout/vyuh_diagram_extension_layout.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_extension_table_flutter/vyuh_diagram_extension_table_flutter.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/schema_context.dart';
import '../schema/schema_diagram.dart';
import '../schema/schema_navigation.dart';
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

class _Visit {
  _Visit({
    required this.slice,
    required this.query,
    required this.schema,
    required this.limit,
    required this.direction,
    required this.selected,
    this.hops = 1,
    this.detailLevel = SchemaDetailLevel.keys,
  });
  SchemaSlice slice;
  String query;
  String? schema;
  final int limit;
  final RelationDirection direction;
  final int hops;
  final SchemaDetailLevel detailLevel;
  String? selected;
  DiagramCameraState? camera;
  Map<String, DiagramRect> frames = {};
}

class _SchemaViewerState extends State<SchemaViewer> {
  late SchemaNavigation _navigation;
  final _preferences = SchemaViewPreferences();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _canvasKey = GlobalKey();
  final _search = TextEditingController();
  final _expandedSchemas = <String>{};
  final _history = <_Visit>[];
  DiagramController? _controller;
  ReactionDisposer? _selectionWatcher;
  ReactionDisposer? _effectWatcher;
  _Visit? _visit;
  String? _selected;
  String? _schema;
  String _query = '';
  bool _browserVisible = true;
  bool _detailsVisible = true;
  bool _loading = false;
  int _limit = 8;
  int _hops = 1;
  SchemaDetailLevel _detailLevel = SchemaDetailLevel.keys;
  final _savedViews = <String, Map<String, dynamic>>{};
  Timer? _saveDebounce;
  ReactionDisposer? _positionWatcher;
  bool _saveError = false;
  int _generation = 0;
  RelationDirection _direction = RelationDirection.both;
  Object? _error;
  Timer? _searchDebounce;

  @override
  void initState() {
    super.initState();
    _navigation = SchemaNavigation(widget.graph);
    unawaited(_initialize());
  }

  @override
  void didUpdateWidget(covariant SchemaViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(widget.graph, oldWidget.graph)) {
      _rememberView();
      final previous = _visit;
      final projectChanged =
          oldWidget.storageKey != widget.storageKey ||
          oldWidget.graph.source != widget.graph.source;
      ++_generation;
      _navigation = SchemaNavigation(widget.graph);
      if (projectChanged) {
        _history.clear();
        _expandedSchemas.clear();
        _savedViews.clear();
        _selected = null;
        _schema = null;
        _query = '';
        _search.clear();
        _visit = null;
        _replaceController(null);
        unawaited(_initialize());
        return;
      }
      _expandedSchemas.retainAll(_navigation.catalog.schemaCounts.keys);
      if (_schema != null &&
          !_navigation.catalog.schemaCounts.containsKey(_schema)) {
        _schema = null;
      }
      _history.removeWhere(
        (visit) => visit.slice.roots.any(
          (id) => !_navigation.context.tables.containsKey(id),
        ),
      );
      final roots =
          previous?.slice.roots
              .where(_navigation.context.tables.containsKey)
              .toSet() ??
          <String>{};
      final slice = roots.isEmpty
          ? _navigation.overview(
              schema: _schema,
              limit: previous?.slice.graph.tables.length ?? 24,
              revealed: _selected == null ? {} : {_selected!},
            )
          : _navigation.around(
              roots,
              limit: _limit,
              hops: _hops,
              direction: _direction,
            );
      final selected = _navigation.context.tables.containsKey(_selected)
          ? _selected
          : roots.firstOrNull;
      unawaited(_open(slice, selected: selected, record: false));
    }
  }

  String get _storageKey => widget.storageKey ?? widget.graph.source;
  String _viewKey(SchemaSlice slice, {required String? schema}) =>
      slice.roots.isEmpty
      ? 'schema:${schema ?? '*'}'
      : 'tables:${(slice.roots.toList()..sort()).join('|')}';

  Future<void> _initialize() async {
    final generation = ++_generation;
    setState(() => _loading = true);
    Map<String, dynamic>? saved;
    try {
      saved = await widget.viewStore.read(_storageKey);
    } catch (_) {
      /* An unavailable store must not block exploration. */
    }
    if (!mounted || generation != _generation) return;
    try {
      if (saved != null && saved['version'] == 1) {
        _detailLevel = SchemaDetailLevel.values.firstWhere(
          (level) => level.name == saved!['detailLevel'],
          orElse: () => SchemaDetailLevel.keys,
        );
        final views = saved['views'];
        if (views is Map) {
          for (final entry in views.entries.take(100)) {
            if (entry.key is String && entry.value is Map) {
              _savedViews[entry.key] = Map<String, dynamic>.from(
                entry.value as Map,
              );
            }
          }
        }
      }
    } catch (_) {
      _savedViews.clear();
      _savedViews.clear();
    }
    unawaited(_open(_navigation.overview(), record: false));
  }

  void _rememberView() {
    final visit = _visit;
    final controller = _controller;
    if (visit == null || controller == null) return;
    _capture(visit);
    final camera = controller.camera;
    _savedViews[_viewKey(visit.slice, schema: visit.schema)] = {
      'positions': {
        for (final shape
            in controller.document.elements.whereType<ShapeElement>())
          shape.id: [shape.frame.left, shape.frame.top],
      },
      'center': [camera.center.x, camera.center.y],
      'zoom': camera.zoom,
    };
  }

  Future<void> _persist() async {
    _rememberView();
    try {
      await widget.viewStore.write(_storageKey, {
        'version': 1,
        'detailLevel': _detailLevel.name,
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
    _effectWatcher = watchSchemaSelection(next, preferences: _preferences);
    _positionWatcher = reaction(
      (_) => (next.document.revision, next.camera.center, next.camera.zoom),
      (_) => _queueSave(),
    );
    _selectionWatcher = reaction((_) => next.selection, (selection) {
      // Selection changes inspect a table. They never relayout or move the camera.
      final id = selection is ElementSelection
          ? selection.elementIds
                .where(_navigation.context.tables.containsKey)
                .firstOrNull
          : null;
      if (id == null || id == _selected) return;
      scheduleMicrotask(() {
        if (mounted && identical(next, _controller)) {
          setState(() {
            _selected = id;
            _detailsVisible = true;
          });
        }
      });
    });
  }

  void _capture(_Visit visit) {
    final controller = _controller;
    if (controller == null) return;
    visit.query = _query;
    visit.schema = _schema;
    visit.selected = _selected;
    visit.camera = controller.camera;
    visit.frames = {
      for (final shape
          in controller.document.elements.whereType<ShapeElement>())
        shape.id: shape.frame,
    };
  }

  Future<void> _explore(String id, {bool closeBrowser = false}) async {
    if (!_navigation.context.tables.containsKey(id)) return;
    if (closeBrowser) _scaffoldKey.currentState?.closeDrawer();
    FocusManager.instance.primaryFocus?.unfocus();
    _limit = 0;
    await _open(
      _navigation.around({id}, limit: 0, direction: _direction),
      selected: id,
      fitOverview: true,
    );
  }

  void _references(String value) {
    final id = _selected;
    if (id == null || _loading) return;
    if (value == 'only') {
      _limit = 0;
    } else if (value == 'all') {
      _limit = _navigation.graph.tables.length;
    } else {
      if (value == 'show' || _limit == 0) _limit = 8;
      if (value.startsWith('hops:')) _hops = int.parse(value.substring(5));
      if (value.startsWith('direction:')) {
        _direction = RelationDirection.values.byName(value.substring(10));
      }
    }
    unawaited(
      _open(
        _navigation.around(
          {id},
          limit: _limit,
          direction: _direction,
          hops: _hops,
        ),
        selected: id,
        fitOverview: true,
      ),
    );
  }

  Future<void> _open(
    SchemaSlice slice, {
    String? selected,
    _Visit? restore,
    bool record = true,
    bool fitOverview = false,
  }) async {
    if (selected != null) {
      final table = _navigation.context.tables[selected];
      if (table == null) {
        selected = null;
      } else if (!slice.graph.tables.any((value) => value.name == selected)) {
        slice = SchemaSlice(
          graph: slice.graph.copyWith(tables: [...slice.graph.tables, table]),
          roots: slice.roots,
          hiddenCount: slice.hiddenCount,
        );
      }
    }
    if (record && _visit != null) {
      _capture(_visit!);
      _history.add(_visit!);
      if (_history.length > 30) _history.removeAt(0);
    }
    _rememberView();
    final previousCamera = _controller?.camera;
    final savedView = _savedViews[_viewKey(slice, schema: _schema)];
    final generation = ++_generation;
    setState(() {
      _loading = true;
      _error = null;
    });
    final controller = DiagramController(
      configuration: DiagramConfiguration(
        extensions: [
          schemaViewInteractions,
          ConnectorsExtension(),
          SnapGuidesExtension(
            enabled: _preferences.snapGuides,
            tolerance: _preferences.snapTolerance,
          ),
          SchemaTableExtension(detailLevel: _detailLevel),
          const LayoutExtension(),
          TableFlutterExtension(),
          MinimapExtension(
            visible: _preferences.minimap,
            initiallyExpanded: false,
            alignment: Alignment.bottomRight,
          ),
          NavigationExtension(
            fitOnAttach: false,
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
        slice.graph,
        controller: controller,
        detailLevel: _detailLevel,
        layout: Layout.grid(
          columns: slice.roots.isEmpty
              ? sqrt(slice.graph.tables.length).ceil().clamp(3, 24).toInt()
              : 3,
          gap: 100,
        ),
      );
      if (slice.roots.length == 1) {
        final root = slice.roots.single;
        final incoming = _navigation.context
            .external({root}, direction: RelationDirection.incoming)
            .map((r) => r.table)
            .toSet();
        final outgoing = _navigation.context
            .external({root}, direction: RelationDirection.outgoing)
            .map((r) => r.foreignKey.refTable)
            .toSet();
        final bands = [
          slice.graph.tables.where(
            (t) =>
                t.name != root &&
                incoming.contains(t.name) &&
                !outgoing.contains(t.name),
          ),
          slice.graph.tables.where((t) => t.name == root),
          slice.graph.tables.where(
            (t) =>
                t.name != root &&
                (outgoing.contains(t.name) || !incoming.contains(t.name)),
          ),
        ];
        controller.edits.batch('Arrange neighborhood', () {
          for (var band = 0; band < bands.length; band++) {
            var y = 0.0;
            for (final table in bands[band]) {
              final frame = controller.scene
                  .shapeById(table.name)!
                  .source
                  .frame;
              controller.edits.move(
                DiagramPoint(band * 480 - frame.left, y - frame.top),
                ids: [table.name],
              );
              y += frame.height + 64;
            }
          }
        }).requireAllowed();
      }
      if (restore != null) {
        controller.edits.batch('Restore positions', () {
          for (final entry in restore.frames.entries) {
            final current = controller.scene.shapeById(entry.key)?.source.frame;
            if (current != null) {
              controller.edits.move(
                DiagramPoint(
                  entry.value.left - current.left,
                  entry.value.top - current.top,
                ),
                ids: [entry.key],
              );
            }
          }
        }).requireAllowed();
      }
      final positions = savedView?['positions'];
      if (restore == null && positions is Map) {
        controller.edits.batch('Restore saved positions', () {
          for (final entry in positions.entries) {
            if (entry.key is! String) continue;
            final point = _point(entry.value);
            final frame = controller.scene
                .shapeById(entry.key as String)
                ?.source
                .frame;
            if (point != null && frame != null) {
              controller.edits.move(
                DiagramPoint(point.x - frame.left, point.y - frame.top),
                ids: [entry.key as String],
              );
            }
          }
        }).requireAllowed();
      }
      controller.diagram.setRules(schemaViewRules);
      applySchemaConnections(controller, _preferences);
      if (!mounted || generation != _generation) {
        controller.dispose();
        return;
      }
      final visit =
          restore ??
          _Visit(
            slice: slice,
            query: _query,
            schema: _schema,
            limit: _limit,
            direction: _direction,
            selected: selected,
            hops: _hops,
            detailLevel: _detailLevel,
          );
      visit.slice = slice;
      setState(() {
        _replaceController(controller);
        _visit = visit;
        _selected = selected;
        if (selected != null) _detailsVisible = true;
        _loading = false;
      });
      if (selected != null) controller.select([selected]);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || !identical(controller, _controller)) return;
        final camera = restore?.camera;
        if (fitOverview && selected != null && slice.graph.tables.length == 1) {
          controller.setCamera(
            DiagramCameraState(
              center: controller.scene.shapeById(selected)!.source.frame.center,
              zoom: 1,
              viewportSize: controller.camera.viewportSize,
            ),
          );
        } else if (fitOverview) {
          unawaited(controller.view.show(const ViewTarget.all()));
        } else if (camera != null) {
          controller.setCamera(
            DiagramCameraState(
              center: camera.center,
              zoom: camera.zoom,
              viewportSize: controller.camera.viewportSize,
            ),
          );
        } else if (_point(savedView?['center']) != null &&
            savedView?['zoom'] is num &&
            (savedView!['zoom'] as num).isFinite &&
            (savedView['zoom'] as num) > 0) {
          controller.setCamera(
            DiagramCameraState(
              center: _point(savedView['center'])!,
              zoom: (savedView['zoom'] as num).toDouble(),
              viewportSize: controller.camera.viewportSize,
            ),
          );
        } else if (previousCamera != null && selected != null) {
          final center = controller.scene
              .shapeById(selected)!
              .source
              .frame
              .center;
          controller.setCamera(
            DiagramCameraState(
              center: center,
              zoom: previousCamera.zoom,
              viewportSize: controller.camera.viewportSize,
            ),
          );
        } else {
          unawaited(controller.view.show(const ViewTarget.all()));
        }
        _queueSave();
      });
    } catch (error) {
      controller.dispose();
      if (mounted && generation == _generation) {
        setState(() {
          _error = error;
          _loading = false;
        });
      }
    }
  }

  void _back() {
    if (_loading || _history.isEmpty) return;
    final visit = _history.removeLast();
    _searchDebounce?.cancel();
    setState(() {
      _query = visit.query;
      _search.text = visit.query;
      _schema = visit.schema;
      _limit = visit.limit;
      _direction = visit.direction;
      _hops = visit.hops;
      _detailLevel = visit.detailLevel;
    });
    final refreshed = visit.slice.roots.isEmpty
        ? _navigation.overview(
            schema: visit.schema,
            limit: visit.slice.graph.tables.length,
            revealed: visit.selected == null ? {} : {visit.selected!},
          )
        : _navigation.around(
            visit.slice.roots,
            limit: visit.limit,
            direction: visit.direction,
            hops: visit.hops,
          );
    final restore =
        _Visit(
            slice: refreshed,
            query: visit.query,
            schema: visit.schema,
            limit: visit.limit,
            direction: visit.direction,
            selected: _navigation.context.tables.containsKey(visit.selected)
                ? visit.selected
                : null,
            hops: visit.hops,
            detailLevel: visit.detailLevel,
          )
          ..camera = visit.camera
          ..frames = visit.frames;
    unawaited(
      _open(
        refreshed,
        selected: restore.selected,
        restore: restore,
        record: false,
      ),
    );
  }

  void _browse() {
    if (MediaQuery.sizeOf(context).width < 700) {
      _scaffoldKey.currentState?.openDrawer();
    } else {
      setState(() => _browserVisible = true);
    }
  }

  void _fit() {
    final controller = _controller;
    if (controller != null && !_loading) {
      unawaited(
        controller.view.show(const ViewTarget.all(), motion: Motion.smooth),
      );
    }
  }

  Future<void> _details() async {
    final table = _navigation.context.tables[_selected];
    if (table == null) return;
    if (MediaQuery.sizeOf(context).width >= 1100) {
      setState(() => _detailsVisible = !_detailsVisible);
      return;
    }
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheet) => SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(sheet).height * .8,
          child: SchemaTableInspector(
            table: table,
            graph: _navigation.context,
            sourcePath: widget.sourcePaths[table.name],
            sourceCode: widget.modelSources[table.name],
            onOpenModel: widget.onOpenModel,
            onClose: () => Navigator.of(sheet).pop(),
            onExplore: (id) {
              Navigator.of(sheet).pop();
              unawaited(_explore(id));
            },
          ),
        ),
      ),
    );
  }

  void _reopen() {
    final visit = _visit;
    if (visit == null) return;
    final slice = visit.slice.roots.isEmpty
        ? _navigation.overview(
            schema: _schema,
            limit: visit.slice.graph.tables.length,
          )
        : _navigation.around(
            visit.slice.roots,
            limit: _limit,
            direction: _direction,
            hops: _hops,
          );
    unawaited(_open(slice, selected: _selected));
  }

  Future<void> _autoLayout() async {
    final controller = _controller;
    if (controller == null || _loading) return;
    await controller.layout(
      Layout.layered(direction: LayoutDirection.right, gap: 64, layerGap: 120),
    );
    _queueSave();
  }

  Future<void> _settings() async {
    if (_controller == null) return;
    await showDialog<void>(
      context: context,
      builder: (_) => SchemaViewSettings(
        controller: _controller!,
        preferences: _preferences,
      ),
    );
  }

  void _openSchema(String? schema) {
    _searchDebounce?.cancel();
    setState(() {
      _schema = schema;
      _query = '';
      _search.clear();
    });
    unawaited(
      _open(
        _navigation.overview(
          schema: schema,
          limit: _navigation.graph.tables.length,
        ),
        fitOverview: true,
      ),
    );
  }

  Widget _browser({bool closeOnSelect = false}) {
    final matches = _navigation.catalog.tables(query: _query);
    final counts = _navigation.catalog.schemaCounts;
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
                            _navigation.catalog
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
                  selected:
                      _schema == null && _visit?.slice.roots.isEmpty == true,
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
                            selected:
                                _schema == schema &&
                                _visit?.slice.roots.isEmpty == true,
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
                          selected: table.name == _selected,
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
                              : () => _explore(
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

  Widget _landing() => Center(
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 480),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.travel_explore, size: 40),
            const SizedBox(height: 20),
            Text(
              'Where would you like to explore?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              'Search ${widget.graph.tables.length} tables and their columns. Choose a table to see its immediate connections, then follow a relationship to explore further.',
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () {
                if (MediaQuery.sizeOf(context).width < 700) {
                  _scaffoldKey.currentState?.openDrawer();
                } else {
                  setState(() => _browserVisible = true);
                }
              },
              icon: const Icon(Icons.search),
              label: const Text('Browse tables'),
            ),
            if (widget.graph.tables.isNotEmpty &&
                widget.graph.tables.length <= 24)
              TextButton(
                onPressed: () => _open(_navigation.overview(schema: _schema)),
                child: const Text('Open schema overview'),
              ),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 700;
    final controller = _controller;
    final table = _navigation.context.tables[_selected];
    final material = Theme.of(context);
    final theme = material.brightness == Brightness.dark
        ? DiagramTheme.dark
        : DiagramTheme.light;
    final content = controller == null
        ? _landing()
        : ClipRect(
            child: DiagramCanvas(
              key: _canvasKey,
              controller: controller,
              theme: theme.copyWith(
                canvas: theme.canvas.copyWith(
                  background: material.colorScheme.surface,
                ),
              ),
            ),
          );
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.escape): () =>
            setState(() => _detailsVisible = false),
        const SingleActivator(LogicalKeyboardKey.arrowLeft, alt: true): _back,
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
                setState(() => _browserVisible = !_browserVisible);
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
            ...widget.importActions,
            IconButton(
              tooltip: 'Settings',
              onPressed: controller == null ? null : _settings,
              icon: const Icon(Icons.settings_outlined),
            ),
            PopupMenuButton<String>(
              tooltip: 'View options',
              onSelected: (value) {
                if (value == 'layout') {
                  unawaited(_autoLayout());
                } else if (value == 'browse') {
                  _browse();
                } else if (value == 'overview') {
                  _openSchema(_schema);
                } else {
                  unawaited(_settings());
                }
              },
              itemBuilder: (_) => [
                const PopupMenuItem(enabled: false, child: Text('Canvas')),
                PopupMenuItem(
                  value: 'layout',
                  enabled: controller != null,
                  child: const Text('Auto layout'),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem(
                  value: 'browse',
                  child: Text('Browse schema'),
                ),
                const PopupMenuItem(
                  value: 'overview',
                  child: Text('Schema overview'),
                ),
              ],
            ),
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
            if (_visit != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Row(
                  children: [
                    IconButton(
                      tooltip: 'Back',
                      onPressed: _history.isEmpty || _loading ? null : _back,
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Text(
                        _selected ??
                            (_schema == null
                                ? 'All schemas'
                                : 'Schema: $_schema'),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    PopupMenuButton<SchemaDetailLevel>(
                      tooltip: 'Diagram detail level',
                      initialValue: _detailLevel,
                      onSelected: (level) {
                        setState(() => _detailLevel = level);
                        _reopen();
                        _queueSave();
                      },
                      itemBuilder: (_) => [
                        for (final level in SchemaDetailLevel.values)
                          CheckedPopupMenuItem(
                            value: level,
                            checked: _detailLevel == level,
                            child: Text(level.label),
                          ),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.view_column_outlined, size: 18),
                            if (!compact) ...[
                              const SizedBox(width: 6),
                              Text(_detailLevel.label),
                            ],
                            const Icon(Icons.arrow_drop_down, size: 18),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuButton<String>(
                      tooltip: 'Table references',
                      enabled: table != null && !_loading,
                      onSelected: _references,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 12,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.account_tree_outlined, size: 18),
                            if (!compact) ...[
                              const SizedBox(width: 6),
                              const Text('References'),
                            ],
                            const Icon(Icons.arrow_drop_down, size: 18),
                          ],
                        ),
                      ),
                      itemBuilder: (_) => [
                        const PopupMenuItem(
                          value: 'show',
                          child: Text('Show references'),
                        ),
                        const PopupMenuItem(
                          value: 'all',
                          child: Text('Show all references'),
                        ),
                        const PopupMenuItem(
                          value: 'only',
                          child: Text('Selected table only'),
                        ),
                        const PopupMenuDivider(),
                        for (final hops in [1, 2])
                          CheckedPopupMenuItem(
                            value: 'hops:$hops',
                            checked: _hops == hops,
                            child: Text('$hops hop${hops == 1 ? '' : 's'}'),
                          ),
                        for (final direction in RelationDirection.values)
                          CheckedPopupMenuItem(
                            value: 'direction:${direction.name}',
                            checked: _direction == direction,
                            child: Text(direction.label),
                          ),
                      ],
                    ),
                    IconButton(
                      tooltip: 'Fit view',
                      onPressed: _loading ? null : _fit,
                      icon: const Icon(Icons.fit_screen),
                    ),
                    IconButton(
                      tooltip: 'Table details',
                      onPressed: table == null ? null : _details,
                      icon: const Icon(Icons.info_outline),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Row(
                children: [
                  if (!compact && _browserVisible) ...[
                    SizedBox(width: 280, child: _browser()),
                    const VerticalDivider(width: 1),
                  ],
                  Expanded(
                    key: const ValueKey('schema-content'),
                    child: Column(
                      children: [
                        Expanded(child: content),
                        if (_visit != null)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 12,
                              children: [
                                Text(
                                  '${_visit!.slice.graph.tables.length} tables · ${_detailLevel.label}',
                                  style: material.textTheme.bodySmall,
                                ),
                                if (_visit!.slice.hiddenCount > 0)
                                  TextButton(
                                    onPressed: _loading
                                        ? null
                                        : () {
                                            if (_visit!.slice.roots.isEmpty) {
                                              unawaited(
                                                _open(
                                                  _navigation.overview(
                                                    schema: _schema,
                                                    limit:
                                                        _visit!
                                                            .slice
                                                            .graph
                                                            .tables
                                                            .length +
                                                        24,
                                                  ),
                                                ),
                                              );
                                            } else {
                                              _limit += 8;
                                              unawaited(
                                                _open(
                                                  _navigation.around(
                                                    _visit!.slice.roots,
                                                    limit: _limit,
                                                    direction: _direction,
                                                    hops: _hops,
                                                  ),
                                                  selected: _selected,
                                                ),
                                              );
                                            }
                                          },
                                    child: Text(
                                      '${_visit!.slice.roots.isNotEmpty && _limit == 0 ? 'Show references' : 'Show more'} (${_visit!.slice.hiddenCount})',
                                    ),
                                  ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width >= 1100 &&
                      _detailsVisible &&
                      table != null) ...[
                    const VerticalDivider(width: 1),
                    SizedBox(
                      width: 380,
                      child: SchemaTableInspector(
                        table: table,
                        graph: _navigation.context,
                        sourcePath: widget.sourcePaths[table.name],
                        sourceCode: widget.modelSources[table.name],
                        onOpenModel: widget.onOpenModel,
                        onClose: () => setState(() => _detailsVisible = false),
                        onExplore: (id) => _explore(id),
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
    _selectionWatcher?.call();
    _effectWatcher?.call();
    final controller = _controller;
    if (controller != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => controller.dispose());
    }
    super.dispose();
  }
}
