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
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:serverpod_database/serverpod_database.dart' as _isd;
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
export 'client.dart';

class Protocol extends _isd.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static List<_isd.TableDefinition> get targetTableDefinitions => [
    _isd.TableDefinition(
      name: 'shop_client_drafts',
      dartName: 'ShopClientDraft',
      schema: 'public',
      module: 'shop',
      columns: [
        _isd.ColumnDefinition(
          name: 'id',
          columnType: _isd.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isd.ColumnDefinition(
          name: 'title',
          columnType: _isd.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isd.TableDefinition(
      name: 'shop_shared_preferences',
      dartName: 'ShopSharedPreference',
      schema: 'public',
      module: 'shop',
      columns: [
        _isd.ColumnDefinition(
          name: 'id',
          columnType: _isd.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isd.ColumnDefinition(
          name: 'key',
          columnType: _isd.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isd.ColumnDefinition(
          name: 'value',
          columnType: _isd.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
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
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
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
    if (t == _isc.getType<_i97nqzsd.ShopRecord?>()) {
      return (data != null ? _i97nqzsd.ShopRecord.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iiayclwd.ShopAuditBase?>()) {
      return (data != null ? _iiayclwd.ShopAuditBase.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ine9533w.ShopBin?>()) {
      return (data != null ? _ine9533w.ShopBin.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ikhw4jxc.ShopCategory?>()) {
      return (data != null ? _ikhw4jxc.ShopCategory.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ihatvein.ShopClientDraft?>()) {
      return (data != null ? _ihatvein.ShopClientDraft.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i99dvj10.ShopMember?>()) {
      return (data != null ? _i99dvj10.ShopMember.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iz1nt8jc.ShopPayload?>()) {
      return (data != null ? _iz1nt8jc.ShopPayload.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ielmbjaw.ShopPriority?>()) {
      return (data != null ? _ielmbjaw.ShopPriority.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_in7cvpdg.ShopProductTag?>()) {
      return (data != null ? _in7cvpdg.ShopProductTag.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iw487p6s.ShopProfile?>()) {
      return (data != null ? _iw487p6s.ShopProfile.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iu4gid76.ShopSharedPreference?>()) {
      return (data != null
              ? _iu4gid76.ShopSharedPreference.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_imaroc3v.ShopState?>()) {
      return (data != null ? _imaroc3v.ShopState.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i4ev7iy1.ShopTag?>()) {
      return (data != null ? _i4ev7iy1.ShopTag.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ivv5cn92.ShopTeam?>()) {
      return (data != null ? _ivv5cn92.ShopTeam.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i5v5zau6.ShopWarehouse?>()) {
      return (data != null ? _i5v5zau6.ShopWarehouse.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_id4xn1l3.Customer?>()) {
      return (data != null ? _id4xn1l3.Customer.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ir1ryoer.Order?>()) {
      return (data != null ? _ir1ryoer.Order.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_imuez7sb.OrderItem?>()) {
      return (data != null ? _imuez7sb.OrderItem.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i8ctgxfn.Product?>()) {
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
    if (t == _isc.getType<(double, double)>()) {
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
    if (t == _isc.getType<List<_i99dvj10.ShopMember>?>()) {
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
    if (t == _isc.getType<List<_ine9533w.ShopBin>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_ine9533w.ShopBin>(e))
                    .toList()
              : null)
          as T;
    }
    if (t == _isc.getType<(double, double)>()) {
      return (
            deserialize<double>(((data as Map)['p'] as List)[0]),
            deserialize<double>(data['p'][1]),
          )
          as T;
    }
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
    return super.deserializeByClassName(data);
  }

  @override
  _isd.Table? getTableForType(Type t) {
    switch (t) {
      case _ihatvein.ShopClientDraft:
        return _ihatvein.ShopClientDraft.t;
      case _iu4gid76.ShopSharedPreference:
        return _iu4gid76.ShopSharedPreference.t;
    }
    return null;
  }

  @override
  List<_isd.TableDefinition> getTargetTableDefinitions() =>
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
