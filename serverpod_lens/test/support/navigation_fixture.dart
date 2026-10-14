import 'package:serverpod_lens/serverpod_lens.dart';

SchemaColumn column(String name, {bool primary = false, bool unique = false}) =>
    SchemaColumn(
      name: name,
      fieldName: name,
      dartType: 'int',
      dbType: 'bigint',
      isNullable: false,
      isPrimaryKey: primary,
      isUnique: unique,
    );
SchemaForeignKey fk(
  String name,
  String target, {
  List<String> columns = const ['ownerId'],
  List<String> refs = const ['id'],
}) => SchemaForeignKey(
  name: name,
  columns: columns,
  refTable: target,
  refColumns: refs,
  onDelete: 'RESTRICT',
  onUpdate: 'CASCADE',
);
SchemaTable table(
  String name, {
  List<SchemaForeignKey> relations = const [],
  List<SchemaColumn>? columns,
  String module = 'commerce',
  List<SchemaIndex> indexes = const [],
}) => SchemaTable(
  name: name,
  className: name.split('.').last,
  schema: name.split('.').first,
  module: module,
  columns:
      columns ??
      [column('id', primary: true), column('ownerId'), column('description')],
  foreignKeys: relations,
  indexes: indexes,
);
SchemaGraph fixture({int neighbors = 3}) => SchemaGraph(
  source: 'test-project',
  generatedAt: DateTime.utc(2026),
  modules: const [],
  enums: const [],
  tables: [
    table('public.users'),
    table(
      'public.orders',
      relations: [
        fk('orders_user', 'public.users'),
        fk('missing', 'external.unavailable'),
      ],
    ),
    table(
      'audit.log',
      relations: [fk('log_order', 'public.orders')],
      module: 'audit',
    ),
    for (var i = 0; i < neighbors; i++)
      table('public.child$i', relations: [fk('child$i', 'public.users')]),
  ],
);
