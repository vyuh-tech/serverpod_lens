import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

import 'postgres_parser_stub.dart'
    if (dart.library.js_interop) 'postgres_parser_web.dart'
    as parser;

/// Import diagnostics are retained so callers can disclose partial coverage.
class SchemaImportResult {
  const SchemaImportResult(this.graph, {this.warnings = const []});
  final SchemaGraph graph;
  final List<String> warnings;
  bool get isPartial => warnings.isNotEmpty;
}

/// PostgreSQL DDL -> real PostgreSQL AST -> the shared schema model.
/// Parsing never executes SQL. Native hosts may supply an AST from libpg_query.
abstract final class PostgresSchemaImporter {
  static Future<SchemaImportResult> fromSql(
    String sql, {
    String source = 'Pasted PostgreSQL',
  }) async {
    if (sql.trim().isEmpty) {
      throw const FormatException(
        'Paste CREATE TABLE statements to import a schema.',
      );
    }
    if (sql.length > 2000000) {
      throw const FormatException(
        'SQL input exceeds the 2 million character limit.',
      );
    }
    return fromAst(await parser.parsePostgres(sql), source: source);
  }

  static SchemaImportResult fromAst(
    Map<String, dynamic> ast, {
    required String source,
  }) {
    final tables = <String, _Table>{};
    final enums = <SchemaEnum>[];
    final warnings = <String>[];
    void warn(String message) {
      if (!warnings.contains(message)) warnings.add(message);
    }

    void statement(Map<String, dynamic> stmt) {
      if (stmt.isEmpty) return;
      final kind = stmt.keys.first;
      final data = _map(stmt[kind]);
      switch (kind) {
        case 'CreateStmt':
          final relation = _map(data['relation']);
          final id = _name(relation);
          if (tables.containsKey(id)) {
            warn('Duplicate CREATE TABLE for $id was not applied.');
            return;
          }
          final table = _Table(
            id,
            relation['schemaname'] as String? ?? 'public',
          );
          tables[id] = table;
          for (final entry in _list(data['tableElts'])) {
            final element = _map(entry);
            if (element['ColumnDef'] != null) {
              _column(table, _map(element['ColumnDef']), warn);
            } else if (element['Constraint'] != null) {
              _constraint(table, _map(element['Constraint']), null, warn);
            } else {
              warn('$id contains an unsupported table declaration.');
            }
          }
          if (_list(data['inhRelations']).isNotEmpty ||
              data['partspec'] != null) {
            warn(
              '$id uses inheritance or partitioning; its resolved inherited columns are not inferred.',
            );
          }
        case 'CreateEnumStmt':
          enums.add(
            SchemaEnum(
              name: _strings(data['typeName']).join('.'),
              values: _strings(data['vals']),
            ),
          );
        case 'IndexStmt':
          final id = _name(_map(data['relation']));
          final table = tables[id];
          if (table == null) {
            warn('Index refers to absent table $id.');
            return;
          }
          final columns = <String>[];
          for (final item in _list(data['indexParams'])) {
            final field = _map(_map(item)['IndexElem']);
            if (field['name'] is String) {
              columns.add(field['name'] as String);
            } else {
              warn(
                'Expression index on $id is not represented as column uniqueness.',
              );
            }
          }
          final predicate = data['whereClause'] == null
              ? null
              : _expression(_map(data['whereClause']), warn);
          table.indexes.add(
            SchemaIndex(
              name:
                  data['idxname'] as String? ??
                  '${id}_index_${table.indexes.length}',
              columns: columns,
              unique:
                  data['unique'] == true &&
                  columns.length == _list(data['indexParams']).length,
              type: data['accessMethod'] as String? ?? 'btree',
              predicate: predicate,
            ),
          );
        case 'AlterTableStmt':
          final id = _name(_map(data['relation']));
          final table = tables[id];
          if (table == null) {
            warn('ALTER TABLE refers to absent table $id.');
            return;
          }
          for (final entry in _list(data['cmds'])) {
            final command = _map(_map(entry)['AlterTableCmd']);
            final definition = _map(command['def']);
            switch (command['subtype']) {
              case 'AT_AddColumn':
                _column(table, _map(definition['ColumnDef']), warn);
              case 'AT_AddConstraint':
                _constraint(table, _map(definition['Constraint']), null, warn);
              case 'AT_SetNotNull':
              case 'AT_DropNotNull':
                final name = command['name'];
                final index = table.columns.indexWhere((c) => c.name == name);
                if (index < 0) {
                  warn('$id: ALTER refers to absent column $name.');
                } else {
                  table.columns[index] = table.columns[index].copyWith(
                    isNullable: command['subtype'] == 'AT_DropNotNull',
                  );
                }
              case 'AT_ColumnDefault':
                final index = table.columns.indexWhere(
                  (c) => c.name == command['name'],
                );
                if (index < 0) {
                  warn('$id: default refers to an absent column.');
                } else {
                  table.columns[index] = table.columns[index].copyWith(
                    defaultValue: command['def'] == null
                        ? null
                        : _expression(definition, warn),
                  );
                }
              default:
                warn(
                  '$id: ${command['subtype']} is not applied; the displayed schema is partial.',
                );
            }
          }
        case 'CreateSchemaStmt':
          if (_list(data['schemaElts']).isNotEmpty) {
            warn(
              'Nested CREATE SCHEMA declarations were not imported. Use separate schema-qualified CREATE TABLE statements.',
            );
          }
        case 'TransactionStmt':
          break;
        default:
          warn(
            '$kind is not applied. Only supported declarative schema statements are visualized.',
          );
      }
    }

    for (final wrapper in _list(ast['stmts'])) {
      statement(_map(_map(wrapper)['stmt']));
    }
    // PKs and full unique constraints are applied after all CREATE/ALTER clauses.
    for (final table in tables.values) {
      final pk = table.indexes
          .where((i) => i.type == 'primary')
          .expand((i) => i.columns)
          .toSet();
      table.columns = table.columns
          .map(
            (c) => c.copyWith(
              isPrimaryKey: pk.contains(c.name),
              isNullable: pk.contains(c.name) ? false : c.isNullable,
              isUnique: table.indexes.any(
                (i) =>
                    i.unique &&
                    i.predicate == null &&
                    i.columns.length == 1 &&
                    i.columns.single == c.name,
              ),
            ),
          )
          .toList();
      for (var i = 0; i < table.foreignKeys.length; i++) {
        var fk = table.foreignKeys[i];
        final target = tables[fk.refTable];
        if (target == null) {
          warn(
            '${table.id}.${fk.columns.join(', ')} references absent table ${fk.refTable}.',
          );
          continue;
        }
        if (fk.refColumns.isEmpty) {
          final primary = target.indexes
              .where((index) => index.type == 'primary')
              .toList();
          if (primary.isEmpty) {
            warn(
              '${table.id}: implicit reference to ${fk.refTable} has no known primary key.',
            );
            continue;
          }
          fk = fk.copyWith(refColumns: primary.first.columns);
          table.foreignKeys[i] = fk;
        }
        if (fk.columns.length != fk.refColumns.length ||
            fk.columns.any(
              (name) => !table.columns.any((c) => c.name == name),
            ) ||
            fk.refColumns.any(
              (name) => !target.columns.any((c) => c.name == name),
            )) {
          warn(
            '${table.id}: relationship ${fk.name} has unresolved column bindings.',
          );
        }
      }
    }
    final counts = <String, int>{};
    for (final table in tables.values) {
      counts[table.schema] = (counts[table.schema] ?? 0) + 1;
    }
    return SchemaImportResult(
      SchemaGraph(
        source: source,
        generatedAt: DateTime.now().toUtc(),
        modules: counts.entries
            .map((e) => SchemaModule(name: e.key, tableCount: e.value))
            .toList(),
        tables: tables.values
            .map(
              (t) => SchemaTable(
                name: t.id,
                className: t.id.split('.').last,
                schema: t.schema,
                module: t.schema,
                columns: t.columns,
                foreignKeys: t.foreignKeys,
                indexes: t.indexes,
              ),
            )
            .toList(),
        enums: enums,
      ),
      warnings: warnings,
    );
  }

  static void _column(
    _Table table,
    Map<String, dynamic> data,
    void Function(String) warn,
  ) {
    final name = data['colname'] as String?;
    if (name == null) {
      warn('${table.id}: invalid column AST.');
      return;
    }
    if (table.columns.any((c) => c.name == name)) {
      warn('${table.id}: duplicate column $name was not applied.');
      return;
    }
    final type = _map(data['typeName']);
    final parts = _strings(type['names']);
    if (parts.isNotEmpty && parts.first == 'pg_catalog') parts.removeAt(0);
    var dbType = parts.join('.');
    final modifiers = _list(type['typmods'])
        .map((v) => _expression(_map(v), warn))
        .toList();
    if (modifiers.isNotEmpty) dbType += '(${modifiers.join(', ')})';
    dbType += '[]' * _list(type['arrayBounds']).length;
    table.columns.add(
      SchemaColumn(
        name: name,
        fieldName: name,
        dartType: dbType,
        dbType: dbType,
        isNullable: true,
        isPrimaryKey: false,
        isUnique: false,
      ),
    );
    for (final entry in _list(data['constraints'])) {
      _constraint(table, _map(_map(entry)['Constraint']), name, warn);
    }
    if (data['generated'] != null || data['identity'] != null) {
      warn(
        '${table.id}.$name: generated/identity metadata is not represented.',
      );
    }
  }

  static void _constraint(
    _Table table,
    Map<String, dynamic> data,
    String? column,
    void Function(String) warn,
  ) {
    final type = data['contype'];
    final name =
        data['conname'] as String? ??
        '${table.id}_${column ?? 'table'}_${table.indexes.length + table.foreignKeys.length}';
    switch (type) {
      case 'CONSTR_NOTNULL':
        final index = table.columns.indexWhere((c) => c.name == column);
        if (index >= 0) {
          table.columns[index] = table.columns[index].copyWith(
            isNullable: false,
          );
        }
      case 'CONSTR_NULL':
        break;
      case 'CONSTR_DEFAULT':
        final index = table.columns.indexWhere((c) => c.name == column);
        if (index >= 0) {
          table.columns[index] = table.columns[index].copyWith(
            defaultValue: _expression(_map(data['raw_expr']), warn),
          );
        }
      case 'CONSTR_PRIMARY':
      case 'CONSTR_UNIQUE':
        table.indexes.add(
          SchemaIndex(
            name: name,
            columns: column == null ? _strings(data['keys']) : [column],
            unique: true,
            type: type == 'CONSTR_PRIMARY' ? 'primary' : 'btree',
          ),
        );
      case 'CONSTR_FOREIGN':
        table.foreignKeys.add(
          SchemaForeignKey(
            name: name,
            columns: column == null ? _strings(data['fk_attrs']) : [column],
            refTable: _name(_map(data['pktable'])),
            refColumns: _strings(data['pk_attrs']),
            onDelete: _action(data['fk_del_action']),
            onUpdate: _action(data['fk_upd_action']),
          ),
        );
      default:
        warn('${table.id}: $type is not represented in the schema model.');
    }
    if (data['deferrable'] == true) {
      warn('${table.id}: deferrable constraint timing is not represented.');
    }
  }

  static String _action(Object? action) => switch (action) {
    'c' => 'cascade',
    'r' => 'restrict',
    'n' => 'setNull',
    'd' => 'setDefault',
    _ => 'noAction',
  };
  static String _expression(
    Map<String, dynamic> expr,
    void Function(String) warn,
  ) {
    if (expr['A_Const'] != null) {
      final c = _map(expr['A_Const']);
      if (c['isnull'] == true) return 'NULL';
      if (c['sval'] != null) {
        return "'${(_map(c['sval'])['sval'] as String? ?? '').replaceAll("'", "''")}'";
      }
      if (c['ival'] != null) return '${_map(c['ival'])['ival'] ?? 0}';
      if (c['fval'] != null) return '${_map(c['fval'])['fval']}';
      if (c['boolval'] != null) {
        return '${_map(c['boolval'])['boolval'] ?? false}';
      }
    }
    if (expr['FuncCall'] != null) {
      final f = _map(expr['FuncCall']);
      return '${_strings(f['funcname']).join('.')}(${_list(f['args']).map((v) => _expression(_map(v), warn)).join(', ')})';
    }
    if (expr['ColumnRef'] != null) {
      return _strings(_map(expr['ColumnRef'])['fields']).join('.');
    }
    if (expr['TypeCast'] != null) {
      final c = _map(expr['TypeCast']);
      return '${_expression(_map(c['arg']), warn)}::${_strings(_map(c['typeName'])['names']).join('.')}';
    }
    if (expr['A_Expr'] != null) {
      final e = _map(expr['A_Expr']);
      return '${e['lexpr'] == null ? '' : _expression(_map(e['lexpr']), warn)} ${_strings(e['name']).join('.')} ${_expression(_map(e['rexpr']), warn)}'
          .trim();
    }
    warn('An unsupported default/index expression was retained as AST text.');
    return expr.toString();
  }

  static Map<String, dynamic> _map(Object? value) =>
      value is Map ? Map<String, dynamic>.from(value) : {};
  static List<dynamic> _list(Object? value) => value is List ? value : [];
  static List<String> _strings(Object? value) =>
      _list(value).map((v) => '${_map(_map(v)['String'])['sval']}').toList();
  static String _name(Map<String, dynamic> relation) =>
      '${relation['schemaname'] ?? 'public'}.${relation['relname']}';
}

class _Table {
  _Table(this.id, this.schema);
  final String id;
  final String schema;
  List<SchemaColumn> columns = [];
  final foreignKeys = <SchemaForeignKey>[];
  final indexes = <SchemaIndex>[];
}
