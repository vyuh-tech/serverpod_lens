import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

import '../schema/schema_context.dart';
import 'schema_relationships_panel.dart';

/// Read-only table information, separate from native canvas interactions.
class SchemaTableInspector extends StatefulWidget {
  const SchemaTableInspector({
    super.key,
    required this.table,
    required this.graph,
    required this.onClose,
    required this.onExplore,
    this.sourcePath,
    this.sourceCode,
    this.onOpenModel,
  });
  final SchemaTable table;
  final SchemaContext graph;
  final VoidCallback onClose;
  final ValueChanged<String> onExplore;
  final String? sourcePath;
  final String? sourceCode;
  final FutureOr<void> Function(String)? onOpenModel;
  @override
  State<SchemaTableInspector> createState() => _SchemaTableInspectorState();
}

class _SchemaTableInspectorState extends State<SchemaTableInspector> {
  String _query = '';
  @override
  void didUpdateWidget(covariant SchemaTableInspector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.table.name != widget.table.name) _query = '';
  }

  @override
  Widget build(BuildContext context) {
    final table = widget.table;
    final columns = table.columns
        .where(
          (column) => column.name.toLowerCase().contains(_query.toLowerCase()),
        )
        .toList();
    String? resolved;
    try {
      if (table.definition != null) {
        resolved = const JsonEncoder.withIndent('  ')
            .convert(jsonDecode(table.definition!));
      }
    } catch (_) {
      /* A malformed optional definition must not hide table details. */
    }
    final path = widget.sourcePath;
    final safe = path != null && isSafeModelPath(path);
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            ListTile(
              title: Text(
                table.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text('Table · ${table.schema}'),
              trailing: IconButton(
                tooltip: 'Close details',
                onPressed: widget.onClose,
                icon: const Icon(Icons.close),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.tonalIcon(
                  onPressed: () => widget.onExplore(table.name),
                  icon: const Icon(Icons.travel_explore),
                  label: const Text('Explore this table'),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [
                Tab(text: 'Details'),
                Tab(text: 'Relationships'),
                Tab(text: 'Indexes'),
                Tab(text: 'Source'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Basic information',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 8),
                              Text('Schema: ${table.schema}'),
                              Text('Model: ${table.className}'),
                              if (table.module.isNotEmpty &&
                                  table.module != 'unknown')
                                Text('Module: ${table.module}'),
                              if (table.documentation?.isNotEmpty == true)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    table.documentation!,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              const SizedBox(height: 16),
                              Text(
                                'Fields (${table.columns.length})',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                key: ValueKey(table.name),
                                decoration: const InputDecoration(
                                  hintText: 'Search fields',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) =>
                                    setState(() => _query = value),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (columns.isEmpty)
                        const SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(child: Text('No matching fields')),
                        )
                      else
                        SliverList.builder(
                          itemCount: columns.length,
                          itemBuilder: (_, index) {
                            final column = columns[index];
                            final foreign = table.foreignKeys.any(
                              (key) => key.columns.contains(column.name),
                            );
                            return ListTile(
                              leading: Icon(
                                column.isPrimaryKey
                                    ? Icons.key
                                    : foreign
                                    ? Icons.link
                                    : Icons.view_column_outlined,
                                size: 18,
                              ),
                              title: Text(
                                column.name == column.fieldName
                                    ? column.name
                                    : '${column.fieldName} · ${column.name}',
                              ),
                              subtitle: Text(
                                '${column.dartType == column.dbType ? column.dbType : '${column.dartType} · ${column.dbType}'}${column.isNullable ? ' · Nullable' : ' · Required'}${column.isUnique ? ' · Unique' : ''}${column.defaultValue == null ? '' : '\nDefault: ${column.defaultValue}'}',
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                  SchemaRelationshipsPanel(
                    graph: widget.graph,
                    members: {table.name},
                    onClose: widget.onClose,
                    onSelect: widget.onExplore,
                  ),
                  table.indexes.isEmpty
                      ? const Center(child: Text('No indexes in this snapshot'))
                      : ListView.builder(
                          itemCount: table.indexes.length,
                          itemBuilder: (_, index) {
                            final key = table.indexes[index];
                            return ListTile(
                              leading: const Icon(Icons.list_alt, size: 18),
                              title: Text(key.name),
                              subtitle: Text(
                                '${key.columns.join(', ')}\n${key.unique ? 'Unique · ' : ''}${key.type}${key.predicate == null ? '' : '\nWhere: ${key.predicate}'}',
                              ),
                              isThreeLine: key.predicate != null,
                            );
                          },
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (safe)
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SelectableText(path),
                              if (widget.onOpenModel != null)
                                TextButton.icon(
                                  icon: const Icon(Icons.open_in_new, size: 18),
                                  label: const Text('Open model'),
                                  onPressed: () async {
                                    try {
                                      await widget.onOpenModel!(path);
                                    } catch (_) {
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Could not open the model source.',
                                                ),
                                              ),
                                            );
                                      }
                                    }
                                  },
                                ),
                            ],
                          ),
                        ),
                      Expanded(
                        child: widget.sourceCode == null && resolved == null
                            ? const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(24),
                                  child: Text(
                                    'Source is unavailable for this table. The host can supply its authored model; imported SQL and framework tables may have no project model.',
                                  ),
                                ),
                              )
                            : SingleChildScrollView(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    if (widget.sourceCode != null)
                                      SelectableText(
                                        widget.sourceCode!,
                                        style: const TextStyle(
                                          fontFamily: 'monospace',
                                          fontSize: 12,
                                          height: 1.6,
                                        ),
                                      ),
                                    if (resolved != null)
                                      ExpansionTile(
                                        title: const Text(
                                          'Resolved database definition',
                                        ),
                                        initiallyExpanded:
                                            widget.sourceCode == null,
                                        children: [
                                          SelectableText(
                                            resolved,
                                            style: const TextStyle(
                                              fontFamily: 'monospace',
                                              fontSize: 12,
                                              height: 1.6,
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
