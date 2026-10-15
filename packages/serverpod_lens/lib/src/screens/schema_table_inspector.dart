import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

import 'schema_relationships_panel.dart';
import 'schema_inspector_components.dart';

/// The same read-only inspector is used in the desktop panel and mobile sheet.
class SchemaTableInspector extends StatefulWidget {
  const SchemaTableInspector({
    super.key,
    required this.table,
    required this.graph,
    required this.onClose,
    required this.onSelectTable,
    this.sourcePath,
    this.sourceCode,
    this.onOpenModel,
  });
  final SchemaTable table;
  final SchemaContext graph;
  final VoidCallback onClose;
  final ValueChanged<String> onSelectTable;
  final String? sourcePath;
  final String? sourceCode;
  final FutureOr<void> Function(String)? onOpenModel;
  @override
  State<SchemaTableInspector> createState() => _SchemaTableInspectorState();
}

class _SchemaTableInspectorState extends State<SchemaTableInspector> {
  String _query = '';
  Map<String, dynamic> _definition = {};
  late SchemaTableMetadata _metadata;
  String? _resolved;
  @override
  void initState() {
    super.initState();
    _readDefinition();
  }

  @override
  void didUpdateWidget(covariant SchemaTableInspector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.table.name != widget.table.name) _query = '';
    if (!identical(oldWidget.table, widget.table)) _readDefinition();
  }

  void _readDefinition() {
    _metadata = SchemaTableMetadata(widget.table);
    _definition = _metadata.definition;
    _resolved = null;
    try {
      final value = widget.table.definition;
      if (value != null) {
        final decoded = jsonDecode(value);
        if (decoded is Map<String, dynamic>) _definition = decoded;
        _resolved = const JsonEncoder.withIndent('  ').convert(decoded);
      }
    } catch (_) {
      /* Optional metadata must not block the inspector. */
    }
  }

  @override
  Widget build(BuildContext context) {
    final table = widget.table;
    final path = widget.sourcePath;
    final safe = path != null && isSafeModelPath(path);
    final term = _query.trim().toLowerCase();
    final columns = table.columns
        .where(
          (c) => '${c.name} ${c.fieldName} ${c.dartType} ${c.dbType}'
              .toLowerCase()
              .contains(term),
        )
        .toList();
    final primary = table.columns
        .where((c) => c.isPrimaryKey)
        .map((c) => c.name)
        .join(', ');
    return DefaultTabController(
      length: 5,
      child: Material(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.table_chart_outlined, size: 20),
              title: Text(
                table.name.split('.').last,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(table.schema),
              trailing: IconButton(
                tooltip: 'Close inspector',
                onPressed: widget.onClose,
                icon: const Icon(Icons.close),
              ),
            ),
            const TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelPadding: EdgeInsets.symmetric(horizontal: 8),
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              tabs: [
                Tab(text: 'Details'),
                Tab(text: 'Fields'),
                Tab(text: 'Relationships'),
                Tab(text: 'Indexes'),
                Tab(text: 'Source'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _Section(
                        title: 'Basic information',
                        child: Column(
                          children: [
                            _MetadataRow('Schema', table.schema),
                            _MetadataRow('Table', table.name),
                            _MetadataRow('Model', table.className),
                            if (_metadata.model['extends']
                                case final String parent)
                              _MetadataRow('Extends', parent),
                            if (table.module.isNotEmpty &&
                                table.module != 'unknown')
                              _MetadataRow('Module', table.module),
                            if (primary.isNotEmpty)
                              _MetadataRow('Primary key', primary),
                            _MetadataRow('Fields', '${table.columns.length}'),
                            _MetadataRow(
                              'Foreign keys',
                              '${table.foreignKeys.length}',
                            ),
                            _MetadataRow('Indexes', '${table.indexes.length}'),
                          ],
                        ),
                      ),
                      if (table.documentation?.isNotEmpty == true)
                        _Section(
                          title: 'Description',
                          child: SelectableText(table.documentation!),
                        ),
                      if (_definition.entries.any(
                        (e) => _isExtra(e.key, e.value),
                      ))
                        _Section(
                          title: 'Database metadata',
                          child: Column(
                            children: [
                              for (final entry in _definition.entries)
                                if (_isExtra(entry.key, entry.value))
                                  _MetadataRow(entry.key, '${entry.value}'),
                            ],
                          ),
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: TextField(
                          key: ValueKey('fields:${table.name}'),
                          decoration: InputDecoration(
                            hintText: 'Search fields',
                            prefixIcon: const Icon(Icons.search),
                            suffixText:
                                '${columns.length}/${table.columns.length}',
                            border: const OutlineInputBorder(),
                          ),
                          onChanged: (value) => setState(() => _query = value),
                        ),
                      ),
                      Expanded(
                        child: columns.isEmpty
                            ? const Center(child: Text('No matching fields'))
                            : ListView.builder(
                                padding: const EdgeInsets.fromLTRB(
                                  16,
                                  0,
                                  16,
                                  16,
                                ),
                                itemCount: columns.length,
                                itemBuilder: (_, index) => _FieldCard(
                                  column: columns[index],
                                  modelField: _metadata.declaredField(
                                    columns[index].name,
                                  ),
                                  metadata: _metadata.column(
                                    columns[index].name,
                                  ),
                                  declarations: {
                                    for (final value
                                        in widget.graph.enums.values)
                                      value.name: {
                                        'kind': 'enum',
                                        'serialization': 'database',
                                        'values': value.values,
                                      },
                                    ..._metadata.declarations,
                                  },
                                  foreignKeys: table.foreignKeys
                                      .where(
                                        (fk) => fk.columns.contains(
                                          columns[index].name,
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                      ),
                    ],
                  ),
                  SchemaRelationshipsPanel(
                    graph: widget.graph,
                    members: {table.name},
                    onSelect: widget.onSelectTable,
                  ),
                  table.indexes.isEmpty
                      ? const Center(child: Text('No indexes in this snapshot'))
                      : ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: table.indexes.length,
                          itemBuilder: (_, index) {
                            final key = table.indexes[index];
                            return _Section(
                              title: key.name,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    spacing: 6,
                                    runSpacing: 6,
                                    children: [
                                      SchemaDetailBadge(key.type),
                                      if (key.unique)
                                        const SchemaDetailBadge(
                                          'Unique',
                                          keyField: true,
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  _MetadataRow(
                                    'Fields',
                                    key.columns.join(', '),
                                  ),
                                  if (key.predicate != null)
                                    _MetadataRow('Where', key.predicate!),
                                  SchemaMetadataDetails(
                                    metadata: _metadata.index(key.name),
                                    exclude: const {
                                      'indexName',
                                      'elements',
                                      'type',
                                      'isUnique',
                                      'predicate',
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      if (safe) ...[
                        Row(
                          children: [
                            const Icon(Icons.description_outlined, size: 18),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                path.split('/').last,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                            if (widget.onOpenModel != null)
                              IconButton(
                                tooltip: 'Open model',
                                icon: const Icon(Icons.open_in_new, size: 18),
                                onPressed: () => _openSource(context, path),
                              ),
                          ],
                        ),
                        SelectableText(
                          path,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 16),
                      ],
                      if (widget.sourceCode != null)
                        SchemaCodeCard(
                          title: 'Serverpod model',
                          language: 'YAML',
                          code: widget.sourceCode!,
                        ),
                      if (_resolved != null)
                        _Section(
                          title: 'Resolved database definition',
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            title: const Text(
                              'Table metadata',
                              style: TextStyle(fontSize: 13),
                            ),
                            initiallyExpanded: widget.sourceCode == null,
                            children: [
                              SchemaCodeCard(
                                title: 'Generated definition',
                                language: 'JSON',
                                code: _resolved!,
                              ),
                            ],
                          ),
                        ),
                      if (widget.sourceCode == null && _resolved == null)
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Text(
                            'Source is unavailable for this table. Imported SQL and framework tables may have no authored project model.',
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

  bool _isExtra(String key, Object? value) =>
      value != null &&
      value is! Map &&
      value is! List &&
      !{
        'name',
        'schema',
        'className',
        'module',
        'columns',
        'documentation',
      }.contains(key);
  Future<void> _openSource(BuildContext context, String path) async {
    try {
      await widget.onOpenModel!(path);
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not open the model source.')),
        );
      }
    }
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 12),
        child,
      ],
    ),
  );
}

class _MetadataRow extends StatelessWidget {
  const _MetadataRow(this.label, this.value);
  final String label, value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 94,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(
          child: SelectableText(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    ),
  );
}

class _FieldCard extends StatelessWidget {
  const _FieldCard({
    required this.column,
    required this.foreignKeys,
    required this.metadata,
    required this.modelField,
    required this.declarations,
  });
  final SchemaColumn column;
  final List<SchemaForeignKey> foreignKeys;
  final Map<String, dynamic> metadata;
  final Map<String, dynamic> modelField;
  final Map<String, dynamic> declarations;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        border: Border.all(color: colors.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  column.isPrimaryKey
                      ? Icons.key
                      : foreignKeys.isNotEmpty
                      ? Icons.link
                      : Icons.view_column_outlined,
                  size: 16,
                  color: colors.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectableText(
                    column.fieldName,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            if (column.name != column.fieldName)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Column: ${column.name}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                SchemaDetailBadge(column.dbType),
                if (column.dartType != column.dbType)
                  SchemaDetailBadge(column.dartType),
                if (column.isPrimaryKey)
                  const SchemaDetailBadge('Primary key', keyField: true),
                if (foreignKeys.isNotEmpty)
                  const SchemaDetailBadge('Foreign key', keyField: true),
                SchemaDetailBadge(column.isNullable ? 'Nullable' : 'Required'),
                if (column.isUnique) const SchemaDetailBadge('Unique'),
                if (modelField['scope'] == 'serverOnly')
                  const SchemaDetailBadge('Server only'),
                if (modelField['scope'] == 'none')
                  const SchemaDetailBadge('Not serialized'),
              ],
            ),
            if (column.defaultValue != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SelectableText(
                  'Default: ${column.defaultValue}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            for (final name in {
              ...SchemaModelCatalog.references(column.dartType),
              if (declarations.containsKey(column.dbType)) column.dbType,
            })
              if (declarations[name] case final Map declaration
                  when declaration['kind'] == 'enum')
                _DeclaredModel(name: name, declarations: declarations),
            if (const {'json', 'jsonb'}.contains(column.dbType))
              ExpansionTile(
                key: ValueKey('structure:${column.name}'),
                tilePadding: EdgeInsets.zero,
                title: const Text('Type structure'),
                subtitle: Text(column.dartType),
                children: [
                  _DeclaredType(
                    type: SchemaTypeStructure.parse(column.dartType),
                    declarations: declarations,
                  ),
                ],
              ),
            SchemaMetadataDetails(
              metadata: metadata,
              exclude: const {
                'name',
                'fieldName',
                'columnType',
                'dartType',
                'isNullable',
                'columnDefault',
                'vectorDimension',
              },
            ),
            for (final fk in foreignKeys)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'References ${fk.refTable} (${fk.refColumns.join(', ')})',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Declared types enrich persisted JSON; they never invent database columns.
class _DeclaredModel extends StatelessWidget {
  const _DeclaredModel({
    required this.name,
    required this.declarations,
    this.visited = const {},
  });
  final String name;
  final Map<String, dynamic> declarations;
  final Set<String> visited;
  @override
  Widget build(BuildContext context) {
    final value = declarations[name];
    if (value is! Map) return Text(name);
    if (visited.contains(name) || visited.length >= 12) {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: Text('$name · recursive reference'),
      );
    }
    if (value['kind'] == 'enum') {
      final values = value['values'] as List? ?? [];
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enum values · $name · ${value['serialization']}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            for (var i = 0; i < values.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SchemaDetailBadge(
                      values[i] is String
                          ? values[i] as String
                          : '${(values[i] as Map).keys.first}',
                    ),
                    if (value['serialization'] == 'byIndex')
                      SchemaDetailBadge('$i'),
                    if (values[i] case final Map properties)
                      for (final detail in properties.values)
                        if (detail is Map)
                          for (final attribute in detail.entries)
                            Text(
                              '${attribute.key}: ${attribute.value}',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                  ],
                ),
              ),
          ],
        ),
      );
    }
    final fields = value['fields'] as Map? ?? {};
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(name, style: Theme.of(context).textTheme.titleSmall),
        if (value['extends'] case final String parent)
          Text('Extends $parent', style: Theme.of(context).textTheme.bodySmall),
        for (final field in fields.entries)
          if (SchemaModelCatalog.references('${field.value}')
              .any(declarations.containsKey))
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text('${field.key}'),
              subtitle: Text('${field.value}'),
              children: [
                for (final nested in SchemaModelCatalog.references(
                  '${field.value}',
                ))
                  if (declarations.containsKey(nested))
                    _DeclaredModel(
                      name: nested,
                      declarations: declarations,
                      visited: {...visited, name},
                    ),
              ],
            )
          else
            _MetadataRow('${field.key}', '${field.value}'),
        if (value['variants'] case final List variants)
          for (final variant in variants)
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text('Variant: $variant'),
              children: [
                _DeclaredModel(
                  name: '$variant',
                  declarations: declarations,
                  visited: {...visited, name},
                ),
              ],
            ),
      ],
    );
  }
}

class _DeclaredType extends StatelessWidget {
  const _DeclaredType({required this.type, required this.declarations});
  final SchemaTypeStructure type;
  final Map<String, dynamic> declarations;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 12, bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final name in SchemaModelCatalog.references(type.name))
          if (declarations.containsKey(name))
            _DeclaredModel(name: name, declarations: declarations),
        for (final child in type.children) ...[
          _MetadataRow(child.label, child.type.source),
          _DeclaredType(type: child.type, declarations: declarations),
        ],
      ],
    ),
  );
}
