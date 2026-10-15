/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/protocol.dart' as _isp;
import 'package:serverpod/serverpod.dart' as _is;
import 'compatibility/audit_base.dart' as _iiayclwd;
import 'compatibility/bin.dart' as _ine9533w;
import 'compatibility/category.dart' as _ikhw4jxc;
import 'compatibility/client_draft.dart' as _ihatvein;
import 'compatibility/member.dart' as _i99dvj10;
import 'compatibility/payload.dart' as _iz1nt8jc;
import 'compatibility/priority.dart' as _ielmbjaw;
import 'compatibility/product_tag.dart' as _in7cvpdg;
import 'compatibility/profile.dart' as _iw487p6s;
import 'compatibility/record.dart' as _i97nqzsd;
import 'compatibility/shared_preference.dart' as _iu4gid76;
import 'compatibility/state.dart' as _imaroc3v;
import 'compatibility/tag.dart' as _i4ev7iy1;
import 'compatibility/team.dart' as _ivv5cn92;
import 'compatibility/warehouse.dart' as _i5v5zau6;
import 'customer.dart' as _id4xn1l3;
import 'order.dart' as _ir1ryoer;
import 'order_item.dart' as _imuez7sb;
import 'product.dart' as _i8ctgxfn;
export 'compatibility/record.dart';
export 'compatibility/audit_base.dart';
export 'compatibility/bin.dart';
export 'compatibility/category.dart';
export 'compatibility/client_draft.dart';
export 'compatibility/member.dart';
export 'compatibility/payload.dart';
export 'compatibility/priority.dart';
export 'compatibility/product_tag.dart';
export 'compatibility/profile.dart';
export 'compatibility/shared_preference.dart';
export 'compatibility/state.dart';
export 'compatibility/tag.dart';
export 'compatibility/team.dart';
export 'compatibility/warehouse.dart';
export 'customer.dart';
export 'order.dart';
export 'order_item.dart';
export 'product.dart';

class Protocol extends _is.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static List<_isp.TableDefinition> get targetTableDefinitions => [
    _isp.TableDefinition(
      name: 'shop_bins',
      dartName: 'ShopBin',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: '_shopWarehousesBinsShopWarehousesId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_bins_fk_0',
          columns: ['_shopWarehousesBinsShopWarehousesId'],
          referenceTable: 'shop_warehouses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_categories',
      dartName: 'ShopCategory',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'parentId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_categories_fk_0',
          columns: ['parentId'],
          referenceTable: 'shop_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_customers',
      dartName: 'Customer',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_customer_email',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_members',
      dartName: 'ShopMember',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'teamId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'profileId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_members_fk_0',
          columns: ['teamId'],
          referenceTable: 'shop_teams',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_members_fk_1',
          columns: ['profileId'],
          referenceTable: 'shop_profiles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_member_profile',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'profileId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_order_items',
      dartName: 'OrderItem',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'orderId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'unitPrice',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_order_items_fk_0',
          columns: ['orderId'],
          referenceTable: 'shop_orders',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_order_items_fk_1',
          columns: ['productId'],
          referenceTable: 'shop_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_order_item_order',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'orderId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_orders',
      dartName: 'Order',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'customerId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'placedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'total',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_orders_fk_0',
          columns: ['customerId'],
          referenceTable: 'shop_customers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_order_customer',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'customerId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_product_tags',
      dartName: 'ShopProductTag',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'tagId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_product_tags_fk_0',
          columns: ['productId'],
          referenceTable: 'shop_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'shop_product_tags_fk_1',
          columns: ['tagId'],
          referenceTable: 'shop_tags',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_product_tag_pair',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'productId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'tagId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_products',
      dartName: 'Product',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sku',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'price',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_product_sku',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'sku',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_profiles',
      dartName: 'ShopProfile',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'bio',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_records',
      dartName: 'ShopRecord',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random_v7',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'display_name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ShopState',
          columnDefault: '\'draft\'',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'protocol:ShopPriority',
        ),
        _isp.ColumnDefinition(
          name: 'enabled',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _isp.ColumnDefinition(
          name: 'itemCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'amount',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'elapsed',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'Duration',
        ),
        _isp.ColumnDefinition(
          name: 'website',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'Uri',
        ),
        _isp.ColumnDefinition(
          name: 'largeNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'bytes',
          columnType: _isp.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
        _isp.ColumnDefinition(
          name: 'labels',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'flags',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: 'Set<int>',
        ),
        _isp.ColumnDefinition(
          name: 'attributes',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: 'Map<String,String>',
        ),
        _isp.ColumnDefinition(
          name: 'lookup',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: 'Map<int,String>',
        ),
        _isp.ColumnDefinition(
          name: 'coordinates',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: '(double, double,)',
        ),
        _isp.ColumnDefinition(
          name: 'payload',
          columnType: _isp.ColumnType.jsonb,
          isNullable: false,
          dartType: 'protocol:ShopPayload',
        ),
        _isp.ColumnDefinition(
          name: 'optionalPayload',
          columnType: _isp.ColumnType.jsonb,
          isNullable: true,
          dartType: 'protocol:ShopPayload?',
        ),
        _isp.ColumnDefinition(
          name: 'legacyPayload',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'secret',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'embedding',
          columnType: _isp.ColumnType.vector,
          isNullable: true,
          dartType: 'Vector(3)?',
          vectorDimension: 3,
        ),
        _isp.ColumnDefinition(
          name: 'compactEmbedding',
          columnType: _isp.ColumnType.halfvec,
          isNullable: true,
          dartType: 'HalfVector(3)?',
          vectorDimension: 3,
        ),
        _isp.ColumnDefinition(
          name: 'sparseEmbedding',
          columnType: _isp.ColumnType.sparsevec,
          isNullable: true,
          dartType: 'SparseVector(3)?',
          vectorDimension: 3,
        ),
        _isp.ColumnDefinition(
          name: 'mask',
          columnType: _isp.ColumnType.bit,
          isNullable: true,
          dartType: 'Bit(8)?',
          vectorDimension: 8,
        ),
        _isp.ColumnDefinition(
          name: 'location',
          columnType: _isp.ColumnType.geography,
          isNullable: true,
          dartType: 'GeographyPoint?',
        ),
        _isp.ColumnDefinition(
          name: 'route',
          columnType: _isp.ColumnType.geographyLineString,
          isNullable: true,
          dartType: 'GeographyLineString?',
        ),
        _isp.ColumnDefinition(
          name: 'area',
          columnType: _isp.ColumnType.geographyPolygon,
          isNullable: true,
          dartType: 'GeographyPolygon?',
        ),
        _isp.ColumnDefinition(
          name: 'geometry',
          columnType: _isp.ColumnType.geographyGeometryCollection,
          isNullable: true,
          dartType: 'GeographyGeometryCollection?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'shop_record_display',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'display_name',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_shared_preferences',
      dartName: 'ShopSharedPreference',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'key',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'value',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_tags',
      dartName: 'ShopTag',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_teams',
      dartName: 'ShopTeam',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'shop_warehouses',
      dartName: 'ShopWarehouse',
      schema: 'public',
      module: 'shop',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    ..._isp.Protocol.targetTableDefinitions,
  ];

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(dynamic data, [Type? t]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _is.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i97nqzsd.ShopRecord) {
      return _i97nqzsd.ShopRecord.fromJson(data) as T;
    }
    if (t == _iiayclwd.ShopAuditBase) {
      return _iiayclwd.ShopAuditBase.fromJson(data) as T;
    }
    if (t == _ine9533w.ShopBin) {
      return _ine9533w.ShopBin.fromJson(data) as T;
    }
    if (t == _ikhw4jxc.ShopCategory) {
      return _ikhw4jxc.ShopCategory.fromJson(data) as T;
    }
    if (t == _ihatvein.ShopClientDraft) {
      return _ihatvein.ShopClientDraft.fromJson(data) as T;
    }
    if (t == _i99dvj10.ShopMember) {
      return _i99dvj10.ShopMember.fromJson(data) as T;
    }
    if (t == _iz1nt8jc.ShopPayload) {
      return _iz1nt8jc.ShopPayload.fromJson(data) as T;
    }
    if (t == _ielmbjaw.ShopPriority) {
      return _ielmbjaw.ShopPriority.fromJson(data) as T;
    }
    if (t == _in7cvpdg.ShopProductTag) {
      return _in7cvpdg.ShopProductTag.fromJson(data) as T;
    }
    if (t == _iw487p6s.ShopProfile) {
      return _iw487p6s.ShopProfile.fromJson(data) as T;
    }
    if (t == _iu4gid76.ShopSharedPreference) {
      return _iu4gid76.ShopSharedPreference.fromJson(data) as T;
    }
    if (t == _imaroc3v.ShopState) {
      return _imaroc3v.ShopState.fromJson(data) as T;
    }
    if (t == _i4ev7iy1.ShopTag) {
      return _i4ev7iy1.ShopTag.fromJson(data) as T;
    }
    if (t == _ivv5cn92.ShopTeam) {
      return _ivv5cn92.ShopTeam.fromJson(data) as T;
    }
    if (t == _i5v5zau6.ShopWarehouse) {
      return _i5v5zau6.ShopWarehouse.fromJson(data) as T;
    }
    if (t == _id4xn1l3.Customer) {
      return _id4xn1l3.Customer.fromJson(data) as T;
    }
    if (t == _ir1ryoer.Order) {
      return _ir1ryoer.Order.fromJson(data) as T;
    }
    if (t == _imuez7sb.OrderItem) {
      return _imuez7sb.OrderItem.fromJson(data) as T;
    }
    if (t == _i8ctgxfn.Product) {
      return _i8ctgxfn.Product.fromJson(data) as T;
    }
    if (t == _is.getType<_i97nqzsd.ShopRecord?>()) {
      return (data != null ? _i97nqzsd.ShopRecord.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iiayclwd.ShopAuditBase?>()) {
      return (data != null ? _iiayclwd.ShopAuditBase.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ine9533w.ShopBin?>()) {
      return (data != null ? _ine9533w.ShopBin.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ikhw4jxc.ShopCategory?>()) {
      return (data != null ? _ikhw4jxc.ShopCategory.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ihatvein.ShopClientDraft?>()) {
      return (data != null ? _ihatvein.ShopClientDraft.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i99dvj10.ShopMember?>()) {
      return (data != null ? _i99dvj10.ShopMember.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iz1nt8jc.ShopPayload?>()) {
      return (data != null ? _iz1nt8jc.ShopPayload.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ielmbjaw.ShopPriority?>()) {
      return (data != null ? _ielmbjaw.ShopPriority.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_in7cvpdg.ShopProductTag?>()) {
      return (data != null ? _in7cvpdg.ShopProductTag.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iw487p6s.ShopProfile?>()) {
      return (data != null ? _iw487p6s.ShopProfile.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iu4gid76.ShopSharedPreference?>()) {
      return (data != null
              ? _iu4gid76.ShopSharedPreference.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_imaroc3v.ShopState?>()) {
      return (data != null ? _imaroc3v.ShopState.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i4ev7iy1.ShopTag?>()) {
      return (data != null ? _i4ev7iy1.ShopTag.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ivv5cn92.ShopTeam?>()) {
      return (data != null ? _ivv5cn92.ShopTeam.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i5v5zau6.ShopWarehouse?>()) {
      return (data != null ? _i5v5zau6.ShopWarehouse.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_id4xn1l3.Customer?>()) {
      return (data != null ? _id4xn1l3.Customer.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ir1ryoer.Order?>()) {
      return (data != null ? _ir1ryoer.Order.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_imuez7sb.OrderItem?>()) {
      return (data != null ? _imuez7sb.OrderItem.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i8ctgxfn.Product?>()) {
      return (data != null ? _i8ctgxfn.Product.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == Set<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toSet() as T;
    }
    if (t == Map<String, String>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<String>(v)),
          )
          as T;
    }
    if (t == Map<int, String>) {
      return Map.fromEntries(
            (data as List).map(
              (e) => MapEntry(
                deserialize<int>(e['k']),
                deserialize<String>(e['v']),
              ),
            ),
          )
          as T;
    }
    if (t == _is.getType<(double, double)>()) {
      return (
            deserialize<double>(((data as Map)['p'] as List)[0]),
            deserialize<double>(data['p'][1]),
          )
          as T;
    }
    if (t == List<Map<String, int>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, int>>(e))
              .toList()
          as T;
    }
    if (t == Map<String, int>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<int>(v)),
          )
          as T;
    }
    if (t == List<_i99dvj10.ShopMember>) {
      return (data as List)
              .map((e) => deserialize<_i99dvj10.ShopMember>(e))
              .toList()
          as T;
    }
    if (t == _is.getType<List<_i99dvj10.ShopMember>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_i99dvj10.ShopMember>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == List<_ine9533w.ShopBin>) {
      return (data as List)
              .map((e) => deserialize<_ine9533w.ShopBin>(e))
              .toList()
          as T;
    }
    if (t == _is.getType<List<_ine9533w.ShopBin>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_ine9533w.ShopBin>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == _is.getType<(double, double)>()) {
      return (
            deserialize<double>(((data as Map)['p'] as List)[0]),
            deserialize<double>(data['p'][1]),
          )
          as T;
    }
    try {
      return _isp.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i97nqzsd.ShopRecord => 'ShopRecord',
      _iiayclwd.ShopAuditBase => 'ShopAuditBase',
      _ine9533w.ShopBin => 'ShopBin',
      _ikhw4jxc.ShopCategory => 'ShopCategory',
      _ihatvein.ShopClientDraft => 'ShopClientDraft',
      _i99dvj10.ShopMember => 'ShopMember',
      _iz1nt8jc.ShopPayload => 'ShopPayload',
      _ielmbjaw.ShopPriority => 'ShopPriority',
      _in7cvpdg.ShopProductTag => 'ShopProductTag',
      _iw487p6s.ShopProfile => 'ShopProfile',
      _iu4gid76.ShopSharedPreference => 'ShopSharedPreference',
      _imaroc3v.ShopState => 'ShopState',
      _i4ev7iy1.ShopTag => 'ShopTag',
      _ivv5cn92.ShopTeam => 'ShopTeam',
      _i5v5zau6.ShopWarehouse => 'ShopWarehouse',
      _id4xn1l3.Customer => 'Customer',
      _ir1ryoer.Order => 'Order',
      _imuez7sb.OrderItem => 'OrderItem',
      _i8ctgxfn.Product => 'Product',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('shop.', '');
    }

    switch (data) {
      case _i97nqzsd.ShopRecord():
        return 'ShopRecord';
      case _iiayclwd.ShopAuditBase():
        return 'ShopAuditBase';
      case _ine9533w.ShopBin():
        return 'ShopBin';
      case _ikhw4jxc.ShopCategory():
        return 'ShopCategory';
      case _ihatvein.ShopClientDraft():
        return 'ShopClientDraft';
      case _i99dvj10.ShopMember():
        return 'ShopMember';
      case _iz1nt8jc.ShopPayload():
        return 'ShopPayload';
      case _ielmbjaw.ShopPriority():
        return 'ShopPriority';
      case _in7cvpdg.ShopProductTag():
        return 'ShopProductTag';
      case _iw487p6s.ShopProfile():
        return 'ShopProfile';
      case _iu4gid76.ShopSharedPreference():
        return 'ShopSharedPreference';
      case _imaroc3v.ShopState():
        return 'ShopState';
      case _i4ev7iy1.ShopTag():
        return 'ShopTag';
      case _ivv5cn92.ShopTeam():
        return 'ShopTeam';
      case _i5v5zau6.ShopWarehouse():
        return 'ShopWarehouse';
      case _id4xn1l3.Customer():
        return 'Customer';
      case _ir1ryoer.Order():
        return 'Order';
      case _imuez7sb.OrderItem():
        return 'OrderItem';
      case _i8ctgxfn.Product():
        return 'Product';
    }
    className = _isp.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'ShopRecord') {
      return deserialize<_i97nqzsd.ShopRecord>(data['data']);
    }
    if (dataClassName == 'ShopAuditBase') {
      return deserialize<_iiayclwd.ShopAuditBase>(data['data']);
    }
    if (dataClassName == 'ShopBin') {
      return deserialize<_ine9533w.ShopBin>(data['data']);
    }
    if (dataClassName == 'ShopCategory') {
      return deserialize<_ikhw4jxc.ShopCategory>(data['data']);
    }
    if (dataClassName == 'ShopClientDraft') {
      return deserialize<_ihatvein.ShopClientDraft>(data['data']);
    }
    if (dataClassName == 'ShopMember') {
      return deserialize<_i99dvj10.ShopMember>(data['data']);
    }
    if (dataClassName == 'ShopPayload') {
      return deserialize<_iz1nt8jc.ShopPayload>(data['data']);
    }
    if (dataClassName == 'ShopPriority') {
      return deserialize<_ielmbjaw.ShopPriority>(data['data']);
    }
    if (dataClassName == 'ShopProductTag') {
      return deserialize<_in7cvpdg.ShopProductTag>(data['data']);
    }
    if (dataClassName == 'ShopProfile') {
      return deserialize<_iw487p6s.ShopProfile>(data['data']);
    }
    if (dataClassName == 'ShopSharedPreference') {
      return deserialize<_iu4gid76.ShopSharedPreference>(data['data']);
    }
    if (dataClassName == 'ShopState') {
      return deserialize<_imaroc3v.ShopState>(data['data']);
    }
    if (dataClassName == 'ShopTag') {
      return deserialize<_i4ev7iy1.ShopTag>(data['data']);
    }
    if (dataClassName == 'ShopTeam') {
      return deserialize<_ivv5cn92.ShopTeam>(data['data']);
    }
    if (dataClassName == 'ShopWarehouse') {
      return deserialize<_i5v5zau6.ShopWarehouse>(data['data']);
    }
    if (dataClassName == 'Customer') {
      return deserialize<_id4xn1l3.Customer>(data['data']);
    }
    if (dataClassName == 'Order') {
      return deserialize<_ir1ryoer.Order>(data['data']);
    }
    if (dataClassName == 'OrderItem') {
      return deserialize<_imuez7sb.OrderItem>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i8ctgxfn.Product>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _isp.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _is.Table? getTableForType(Type t) {
    {
      var table = _isp.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i97nqzsd.ShopRecord:
        return _i97nqzsd.ShopRecord.t;
      case _ine9533w.ShopBin:
        return _ine9533w.ShopBin.t;
      case _ikhw4jxc.ShopCategory:
        return _ikhw4jxc.ShopCategory.t;
      case _i99dvj10.ShopMember:
        return _i99dvj10.ShopMember.t;
      case _in7cvpdg.ShopProductTag:
        return _in7cvpdg.ShopProductTag.t;
      case _iw487p6s.ShopProfile:
        return _iw487p6s.ShopProfile.t;
      case _iu4gid76.ShopSharedPreference:
        return _iu4gid76.ShopSharedPreference.t;
      case _i4ev7iy1.ShopTag:
        return _i4ev7iy1.ShopTag.t;
      case _ivv5cn92.ShopTeam:
        return _ivv5cn92.ShopTeam.t;
      case _i5v5zau6.ShopWarehouse:
        return _i5v5zau6.ShopWarehouse.t;
      case _id4xn1l3.Customer:
        return _id4xn1l3.Customer.t;
      case _ir1ryoer.Order:
        return _ir1ryoer.Order.t;
      case _imuez7sb.OrderItem:
        return _imuez7sb.OrderItem.t;
      case _i8ctgxfn.Product:
        return _i8ctgxfn.Product.t;
    }
    return null;
  }

  @override
  List<_isp.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'shop';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    if (record is (double, double)) {
      return {
        "p": [record.$1, record.$2],
      };
    }
    try {
      return _isp.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }

  /// Maps container types (like [List], [Map], [Set]) containing
  /// [Record]s or non-String-keyed [Map]s to their JSON representation.
  ///
  /// It should not be called for [SerializableModel] types. These
  /// handle the "[Record] in container" mapping internally already.
  ///
  /// It is only supposed to be called from generated protocol code.
  ///
  /// Returns either a `List<dynamic>` (for List, Sets, and Maps with
  /// non-String keys) or a `Map<String, dynamic>` in case the input was
  /// a `Map<String, …>`.
  Object? mapContainerToJson(Object obj) {
    if (obj is! Iterable && obj is! Map) {
      throw ArgumentError.value(
        obj,
        'obj',
        'The object to serialize should be of type List, Map, or Set',
      );
    }

    dynamic mapIfNeeded(Object? obj) {
      return switch (obj) {
        Record record => mapRecordToJson(record),
        Iterable iterable => mapContainerToJson(iterable),
        Map map => mapContainerToJson(map),
        Object? value => value,
      };
    }

    switch (obj) {
      case Map<String, dynamic>():
        return {
          for (var entry in obj.entries) entry.key: mapIfNeeded(entry.value),
        };
      case Map():
        return [
          for (var entry in obj.entries)
            {'k': mapIfNeeded(entry.key), 'v': mapIfNeeded(entry.value)},
        ];

      case Iterable():
        return [for (var e in obj) mapIfNeeded(e)];
    }

    return obj;
  }
}
