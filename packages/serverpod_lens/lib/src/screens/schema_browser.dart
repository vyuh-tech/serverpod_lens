import 'dart:async';
import 'dart:math' show max;

import 'package:flutter/material.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

import '../schema/schema_catalog.dart';

/// Schema navigation owns its tree and search state, independently of the canvas.
class SchemaBrowser extends StatefulWidget {
  const SchemaBrowser({
    super.key,
    required this.catalog,
    required this.selectedSchema,
    required this.selectedTable,
    required this.onSelectSchema,
    required this.onSelectTable,
    this.enabled = true,
  });

  final SchemaCatalog catalog;
  final String? selectedSchema;
  final String? selectedTable;
  final ValueChanged<String?> onSelectSchema;
  final ValueChanged<String> onSelectTable;
  final bool enabled;

  @override
  State<SchemaBrowser> createState() => _SchemaBrowserState();
}

class _SchemaBrowserState extends State<SchemaBrowser> {
  final _search = TextEditingController();
  final _scroll = ScrollController();
  final _expanded = <String>{};
  Timer? _debounce;
  String _query = '';
  bool _allExpanded = true;
  Set<String>? _beforeSearch;
  bool _allBeforeSearch = true;
  double _scrollBeforeSearch = 0;
  final _tableRows = <String, Widget>{};
  Map<String, List<SchemaTable>> _bySchema = {};
  List<String> _schemas = [];

  @override
  void initState() {
    super.initState();
    _indexMatches();
  }

  void _indexMatches() {
    _bySchema = {};
    for (final table in widget.catalog.tables(query: _query)) {
      _bySchema.putIfAbsent(table.schema, () => []).add(table);
    }
    _schemas = _bySchema.keys.toList()..sort();
    _tableRows.clear();
  }

  @override
  void didUpdateWidget(covariant SchemaBrowser oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.catalog, widget.catalog)) {
      final previousSchemas = _bySchema.keys.toSet();
      _indexMatches();
      _expanded.retainAll(widget.catalog.schemaCounts.keys);
      if (_query.isNotEmpty) {
        _expanded.addAll(
          _bySchema.keys.where((schema) => !previousSchemas.contains(schema)),
        );
      }
    }
    if (oldWidget.enabled != widget.enabled) _tableRows.clear();
    if (oldWidget.selectedTable != widget.selectedTable) {
      _tableRows.remove(oldWidget.selectedTable);
      _tableRows.remove(widget.selectedTable);
      final selected = widget.catalog.tableNamed(widget.selectedTable);
      if (selected != null) {
        _allExpanded = true;
        _expanded.add(selected.schema);
      }
    }
  }

  void _searchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 120), () {
      if (!mounted) return;
      final query = value.trim().toLowerCase();
      if (query == _query) return;
      final searching = query.isNotEmpty;
      setState(() {
        if (searching && _beforeSearch == null) {
          _beforeSearch = Set.of(_expanded);
          _allBeforeSearch = _allExpanded;
          _scrollBeforeSearch = _scroll.hasClients ? _scroll.offset : 0;
        }
        _query = query;
        _indexMatches();
        if (searching) {
          _allExpanded = true;
          _expanded.addAll(_bySchema.keys);
        } else if (_beforeSearch != null) {
          _expanded
            ..clear()
            ..addAll(_beforeSearch!)
            ..retainAll(widget.catalog.schemaCounts.keys);
          _allExpanded = _allBeforeSearch;
          _beforeSearch = null;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted && _scroll.hasClients) {
              _scroll.jumpTo(
                _scrollBeforeSearch.clamp(0, _scroll.position.maxScrollExtent),
              );
            }
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final counts = widget.catalog.schemaCounts;
    final style = Theme.of(context).textTheme.bodyMedium!;
    final rowExtent = max(
      48.0,
      MediaQuery.textScalerOf(context).scale(style.fontSize!) *
              (style.height ?? 1.5) +
          20,
    ).ceilToDouble();
    final noTableSelected = widget.selectedTable == null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Schemas', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 12),
              TextField(
                controller: _search,
                decoration: InputDecoration(
                  hintText: 'Find a table or column',
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          tooltip: 'Clear search',
                          icon: const Icon(Icons.close, size: 18),
                          onPressed: () {
                            _search.clear();
                            _searchChanged('');
                          },
                        ),
                ),
                onChanged: _searchChanged,
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomScrollView(
            key: const PageStorageKey('schema-tree'),
            controller: _scroll,
            slivers: [
              SliverToBoxAdapter(
                child: SchemaTreeRow(
                  key: const ValueKey('all-schemas'),
                  label: 'All schemas',
                  icon: Icons.account_tree_outlined,
                  count: widget.catalog.graph.tables.length,
                  selected: noTableSelected && widget.selectedSchema == null,
                  expanded: _allExpanded,
                  toggleKey: const ValueKey('toggle-all-schemas'),
                  onToggle: () => setState(() => _allExpanded = !_allExpanded),
                  onSelect: widget.enabled
                      ? () {
                          setState(() => _allExpanded = true);
                          widget.onSelectSchema(null);
                        }
                      : null,
                ),
              ),
              if (_allExpanded && _bySchema.isEmpty)
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text('No matching tables')),
                ),
              if (_allExpanded)
                for (final schema in _schemas) ...[
                  SliverToBoxAdapter(
                    child: SchemaTreeRow(
                      key: ValueKey('schema:$schema'),
                      depth: 1,
                      label: schema,
                      icon: Icons.storage_outlined,
                      count: counts[schema],
                      selected:
                          noTableSelected && widget.selectedSchema == schema,
                      expanded: _expanded.contains(schema),
                      toggleKey: ValueKey('toggle-schema:$schema'),
                      onToggle: () => setState(() {
                        if (!_expanded.remove(schema)) _expanded.add(schema);
                      }),
                      onSelect: widget.enabled
                          ? () {
                              setState(() => _expanded.add(schema));
                              widget.onSelectSchema(schema);
                            }
                          : null,
                    ),
                  ),
                  if (_expanded.contains(schema))
                    SliverFixedExtentList.builder(
                      itemExtent: rowExtent,
                      itemCount: _bySchema[schema]!.length,
                      itemBuilder: (_, index) {
                        final table = _bySchema[schema]![index];
                        return _tableRows.putIfAbsent(table.name, () {
                          final name = table.name.startsWith('$schema.')
                              ? table.name.substring(schema.length + 1)
                              : table.name;
                          return SchemaTreeRow(
                            key: ValueKey('table:${table.name}'),
                            depth: 2,
                            label: name,
                            tooltip: table.name,
                            icon: Icons.table_chart_outlined,
                            selected: table.name == widget.selectedTable,
                            onSelect: widget.enabled
                                ? () => widget.onSelectTable(table.name)
                                : null,
                          );
                        });
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
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    _scroll.dispose();
    super.dispose();
  }
}

/// One full-width visual state for every tree level; the chevron only folds.
class SchemaTreeRow extends StatefulWidget {
  const SchemaTreeRow({
    super.key,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onSelect,
    this.depth = 0,
    this.count,
    this.expanded,
    this.onToggle,
    this.toggleKey,
    this.tooltip,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback? onSelect;
  final int depth;
  final int? count;
  final bool? expanded;
  final VoidCallback? onToggle;
  final Key? toggleKey;
  final String? tooltip;

  @override
  State<SchemaTreeRow> createState() => _SchemaTreeRowState();
}

class _SchemaTreeRowState extends State<SchemaTreeRow> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final foreground = widget.selected ? colors.primary : colors.onSurface;
    final background = widget.selected
        ? colors.primary.withValues(alpha: .12)
        : _hovered
        ? colors.onSurface.withValues(alpha: .06)
        : Colors.transparent;
    final label = widget.count == null
        ? widget.label
        : '${widget.label}, ${widget.count} tables';
    final overlay = WidgetStateProperty.resolveWith<Color?>((states) {
      return states.contains(WidgetState.focused)
          ? colors.primary.withValues(alpha: .12)
          : Colors.transparent;
    });
    return Semantics(
      container: true,
      button: true,
      label: label,
      selected: widget.selected,
      enabled: widget.onSelect != null,
      expanded: widget.expanded,
      onTap: widget.onSelect,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: Material(
          color: background,
          child: InkWell(
            excludeFromSemantics: true,
            overlayColor: overlay,
            onTap: widget.onSelect,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 48),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 8 + widget.depth * 16,
                  end: 12,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 40,
                      child: widget.expanded == null
                          ? null
                          : Semantics(
                              container: true,
                              button: true,
                              label:
                                  '${widget.expanded! ? 'Collapse' : 'Expand'} ${widget.label}',
                              expanded: widget.expanded,
                              onTap: widget.onToggle,
                              child: ExcludeSemantics(
                                child: InkWell(
                                  key: widget.toggleKey,
                                  overlayColor: overlay,
                                  onTap: widget.onToggle,
                                  child: Icon(
                                    widget.expanded!
                                        ? Icons.expand_more
                                        : Icons.chevron_right,
                                    size: 18,
                                    color: colors.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ),
                    ),
                    ExcludeSemantics(
                      child: Icon(widget.icon, size: 18, color: foreground),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: ExcludeSemantics(
                        child: Tooltip(
                          message: widget.tooltip ?? widget.label,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              widget.label,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: foreground,
                                fontWeight: widget.selected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (widget.count != null) ...[
                      const SizedBox(width: 8),
                      ExcludeSemantics(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: colors.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: colors.outlineVariant),
                          ),
                          child: Text(
                            '${widget.count}',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colors.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
