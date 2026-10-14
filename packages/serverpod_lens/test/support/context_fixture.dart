import 'package:serverpod_lens/serverpod_lens.dart';

SchemaGraph contextFixture() {
  SchemaForeignKey fk(String name, String target) => SchemaForeignKey(
    name: name,
    columns: ['parentId'],
    refTable: target,
    refColumns: ['id'],
    onDelete: 'restrict',
    onUpdate: 'noAction',
  );
  SchemaTable table(String name, List<SchemaForeignKey> keys) => SchemaTable(
    name: name,
    className: name.split('.').last,
    schema: name.split('.').first,
    module: 'demo',
    columns: [
      SchemaColumn(
        name: 'id',
        fieldName: 'id',
        dartType: 'int?',
        dbType: 'integer',
        isNullable: false,
        isPrimaryKey: true,
        isUnique: true,
      ),
      SchemaColumn(
        name: 'name',
        fieldName: 'name',
        dartType: 'String',
        dbType: 'text',
        isNullable: false,
        isPrimaryKey: false,
        isUnique: false,
      ),
      SchemaColumn(
        name: 'parentId',
        fieldName: 'parentId',
        dartType: 'int?',
        dbType: 'integer',
        isNullable: true,
        isPrimaryKey: false,
        isUnique: false,
      ),
    ],
    foreignKeys: keys,
    indexes: const [],
  );
  return SchemaGraph(
    source: 'Context exploration fixture',
    generatedAt: DateTime.utc(2026, 10, 9),
    modules: const [],
    enums: const [],
    tables: [
      table('auth.users', [fk('users_manager', 'auth.users')]),
      table('sales.orders', [fk('orders_user', 'auth.users')]),
      table('sales.items', [fk('items_order', 'sales.orders')]),
      table('sales.payments', [fk('payments_item', 'sales.items')]),
      table('audit.events', [fk('events_missing', 'external.logs')]),
      table('catalog.products', []),
    ],
  );
}
