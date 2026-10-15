/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _idt;
import 'package:serverpod/serverpod.dart' as _is;
import 'package:shop_server/src/generated/protocol.dart' as _iicbhma1;
import '../compatibility/payload.dart' as _i0pcuowi;
import '../compatibility/priority.dart' as _iv7lj9ls;
import '../compatibility/state.dart' as _iasvdvkq;
import '../protocol.dart' as _iv35mfmj;

abstract class ShopRecord extends _iv35mfmj.ShopAuditBase
    implements _is.TableRow<_is.UuidValue?>, _is.ProtocolSerialization {
  ShopRecord._({
    this.id,
    super.createdAt,
    required this.displayName,
    _iasvdvkq.ShopState? state,
    required this.priority,
    bool? enabled,
    required this.itemCount,
    required this.amount,
    required this.elapsed,
    required this.website,
    required this.largeNumber,
    required this.bytes,
    required this.labels,
    required this.flags,
    required this.attributes,
    required this.lookup,
    required this.coordinates,
    required this.payload,
    this.optionalPayload,
    required this.legacyPayload,
    this.secret,
    this.transient,
    this.embedding,
    this.compactEmbedding,
    this.sparseEmbedding,
    this.mask,
    this.location,
    this.route,
    this.area,
    this.geometry,
  }) : state = state ?? _iasvdvkq.ShopState.draft,
       enabled = enabled ?? true;

  factory ShopRecord({
    _is.UuidValue? id,
    DateTime? createdAt,
    required String displayName,
    _iasvdvkq.ShopState? state,
    required _iv7lj9ls.ShopPriority priority,
    bool? enabled,
    required int itemCount,
    required double amount,
    required Duration elapsed,
    required Uri website,
    required BigInt largeNumber,
    required _idt.ByteData bytes,
    required List<String> labels,
    required Set<int> flags,
    required Map<String, String> attributes,
    required Map<int, String> lookup,
    required (double, double) coordinates,
    required _i0pcuowi.ShopPayload payload,
    _i0pcuowi.ShopPayload? optionalPayload,
    required List<String> legacyPayload,
    String? secret,
    String? transient,
    _is.Vector? embedding,
    _is.HalfVector? compactEmbedding,
    _is.SparseVector? sparseEmbedding,
    _is.Bit? mask,
    _is.GeographyPoint? location,
    _is.GeographyLineString? route,
    _is.GeographyPolygon? area,
    _is.GeographyGeometryCollection? geometry,
  }) = _ShopRecordImpl;

  factory ShopRecord.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopRecord(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      displayName: jsonSerialization['displayName'] as String,
      state: jsonSerialization['state'] == null
          ? null
          : _iasvdvkq.ShopState.fromJson(
              (jsonSerialization['state'] as String),
            ),
      priority: _iv7lj9ls.ShopPriority.fromJson(
        (jsonSerialization['priority'] as int),
      ),
      enabled: jsonSerialization['enabled'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['enabled']),
      itemCount: jsonSerialization['itemCount'] as int,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      elapsed: _is.DurationJsonExtension.fromJson(jsonSerialization['elapsed']),
      website: _is.UriJsonExtension.fromJson(jsonSerialization['website']),
      largeNumber: _is.BigIntJsonExtension.fromJson(
        jsonSerialization['largeNumber'],
      ),
      bytes: _is.ByteDataJsonExtension.fromJson(jsonSerialization['bytes']),
      labels: _iicbhma1.Protocol().deserialize<List<String>>(
        jsonSerialization['labels'],
      ),
      flags: _iicbhma1.Protocol().deserialize<Set<int>>(
        jsonSerialization['flags'],
      ),
      attributes: _iicbhma1.Protocol().deserialize<Map<String, String>>(
        jsonSerialization['attributes'],
      ),
      lookup: _iicbhma1.Protocol().deserialize<Map<int, String>>(
        jsonSerialization['lookup'],
      ),
      coordinates: _iicbhma1.Protocol().deserialize<(double, double)>(
        (jsonSerialization['coordinates'] as Map<String, dynamic>),
      ),
      payload: _iicbhma1.Protocol().deserialize<_i0pcuowi.ShopPayload>(
        jsonSerialization['payload'],
      ),
      optionalPayload: jsonSerialization['optionalPayload'] == null
          ? null
          : _iicbhma1.Protocol().deserialize<_i0pcuowi.ShopPayload>(
              jsonSerialization['optionalPayload'],
            ),
      legacyPayload: _iicbhma1.Protocol().deserialize<List<String>>(
        jsonSerialization['legacyPayload'],
      ),
      secret: jsonSerialization['secret'] as String?,
      transient: jsonSerialization['transient'] as String?,
      embedding: jsonSerialization['embedding'] == null
          ? null
          : _is.VectorJsonExtension.fromJson(jsonSerialization['embedding']),
      compactEmbedding: jsonSerialization['compactEmbedding'] == null
          ? null
          : _is.HalfVectorJsonExtension.fromJson(
              jsonSerialization['compactEmbedding'],
            ),
      sparseEmbedding: jsonSerialization['sparseEmbedding'] == null
          ? null
          : _is.SparseVectorJsonExtension.fromJson(
              jsonSerialization['sparseEmbedding'],
            ),
      mask: jsonSerialization['mask'] == null
          ? null
          : _is.BitJsonExtension.fromJson(jsonSerialization['mask']),
      location: jsonSerialization['location'] == null
          ? null
          : _is.GeographyPointJsonExtension.fromJson(
              jsonSerialization['location'],
            ),
      route: jsonSerialization['route'] == null
          ? null
          : _is.GeographyLineStringJsonExtension.fromJson(
              jsonSerialization['route'],
            ),
      area: jsonSerialization['area'] == null
          ? null
          : _is.GeographyPolygonJsonExtension.fromJson(
              jsonSerialization['area'],
            ),
      geometry: jsonSerialization['geometry'] == null
          ? null
          : _is.GeographyGeometryCollectionJsonExtension.fromJson(
              jsonSerialization['geometry'],
            ),
    );
  }

  static final t = ShopRecordTable();

  static const db = ShopRecordRepository._();

  @override
  _is.UuidValue? id;

  String displayName;

  _iasvdvkq.ShopState state;

  _iv7lj9ls.ShopPriority priority;

  bool enabled;

  int itemCount;

  double amount;

  Duration elapsed;

  Uri website;

  BigInt largeNumber;

  _idt.ByteData bytes;

  List<String> labels;

  Set<int> flags;

  Map<String, String> attributes;

  Map<int, String> lookup;

  (double, double) coordinates;

  _i0pcuowi.ShopPayload payload;

  _i0pcuowi.ShopPayload? optionalPayload;

  List<String> legacyPayload;

  String? secret;

  String? transient;

  _is.Vector? embedding;

  _is.HalfVector? compactEmbedding;

  _is.SparseVector? sparseEmbedding;

  _is.Bit? mask;

  _is.GeographyPoint? location;

  _is.GeographyLineString? route;

  _is.GeographyPolygon? area;

  _is.GeographyGeometryCollection? geometry;

  @override
  _is.Table<_is.UuidValue?> get table => t;

  /// Returns a shallow copy of this [ShopRecord]
  /// with some or all fields replaced by the given arguments.
  @override
  @_is.useResult
  ShopRecord copyWith({
    Object? id,
    DateTime? createdAt,
    String? displayName,
    _iasvdvkq.ShopState? state,
    _iv7lj9ls.ShopPriority? priority,
    bool? enabled,
    int? itemCount,
    double? amount,
    Duration? elapsed,
    Uri? website,
    BigInt? largeNumber,
    _idt.ByteData? bytes,
    List<String>? labels,
    Set<int>? flags,
    Map<String, String>? attributes,
    Map<int, String>? lookup,
    (double, double)? coordinates,
    _i0pcuowi.ShopPayload? payload,
    _i0pcuowi.ShopPayload? optionalPayload,
    List<String>? legacyPayload,
    String? secret,
    String? transient,
    _is.Vector? embedding,
    _is.HalfVector? compactEmbedding,
    _is.SparseVector? sparseEmbedding,
    _is.Bit? mask,
    _is.GeographyPoint? location,
    _is.GeographyLineString? route,
    _is.GeographyPolygon? area,
    _is.GeographyGeometryCollection? geometry,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopRecord',
      if (id != null) 'id': id?.toJson(),
      'createdAt': createdAt.toJson(),
      'displayName': displayName,
      'state': state.toJson(),
      'priority': priority.toJson(),
      'enabled': enabled,
      'itemCount': itemCount,
      'amount': amount,
      'elapsed': elapsed.toJson(),
      'website': website.toJson(),
      'largeNumber': largeNumber.toJson(),
      'bytes': bytes.toJson(),
      'labels': labels.toJson(),
      'flags': flags.toJson(),
      'attributes': attributes.toJson(),
      'lookup': lookup.toJson(),
      'coordinates': _iicbhma1.Protocol().mapRecordToJson(coordinates),
      'payload': payload.toJson(),
      if (optionalPayload != null) 'optionalPayload': optionalPayload?.toJson(),
      'legacyPayload': legacyPayload.toJson(),
      if (secret != null) 'secret': secret,
      if (transient != null) 'transient': transient,
      if (embedding != null) 'embedding': embedding?.toJson(),
      if (compactEmbedding != null)
        'compactEmbedding': compactEmbedding?.toJson(),
      if (sparseEmbedding != null) 'sparseEmbedding': sparseEmbedding?.toJson(),
      if (mask != null) 'mask': mask?.toJson(),
      if (location != null) 'location': location?.toJson(),
      if (route != null) 'route': route?.toJson(),
      if (area != null) 'area': area?.toJson(),
      if (geometry != null) 'geometry': geometry?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopRecord',
      if (id != null) 'id': id?.toJson(),
      'createdAt': createdAt.toJson(),
      'displayName': displayName,
      'state': state.toJson(),
      'priority': priority.toJson(),
      'enabled': enabled,
      'itemCount': itemCount,
      'amount': amount,
      'elapsed': elapsed.toJson(),
      'website': website.toJson(),
      'largeNumber': largeNumber.toJson(),
      'bytes': bytes.toJson(),
      'labels': labels.toJson(),
      'flags': flags.toJson(),
      'attributes': attributes.toJson(),
      'lookup': lookup.toJson(),
      'coordinates': _iicbhma1.Protocol().mapRecordToJson(coordinates),
      'payload': payload.toJsonForProtocol(),
      if (optionalPayload != null)
        'optionalPayload': optionalPayload?.toJsonForProtocol(),
      'legacyPayload': legacyPayload.toJson(),
      if (transient != null) 'transient': transient,
      if (embedding != null) 'embedding': embedding?.toJson(),
      if (compactEmbedding != null)
        'compactEmbedding': compactEmbedding?.toJson(),
      if (sparseEmbedding != null) 'sparseEmbedding': sparseEmbedding?.toJson(),
      if (mask != null) 'mask': mask?.toJson(),
      if (location != null) 'location': location?.toJson(),
      if (route != null) 'route': route?.toJson(),
      if (area != null) 'area': area?.toJson(),
      if (geometry != null) 'geometry': geometry?.toJson(),
    };
  }

  static ShopRecordInclude include() {
    return ShopRecordInclude._();
  }

  static ShopRecordIncludeList includeList({
    _is.WhereExpressionBuilder<ShopRecordTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    ShopRecordInclude? include,
  }) {
    return ShopRecordIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopRecordImpl extends ShopRecord {
  _ShopRecordImpl({
    _is.UuidValue? id,
    DateTime? createdAt,
    required String displayName,
    _iasvdvkq.ShopState? state,
    required _iv7lj9ls.ShopPriority priority,
    bool? enabled,
    required int itemCount,
    required double amount,
    required Duration elapsed,
    required Uri website,
    required BigInt largeNumber,
    required _idt.ByteData bytes,
    required List<String> labels,
    required Set<int> flags,
    required Map<String, String> attributes,
    required Map<int, String> lookup,
    required (double, double) coordinates,
    required _i0pcuowi.ShopPayload payload,
    _i0pcuowi.ShopPayload? optionalPayload,
    required List<String> legacyPayload,
    String? secret,
    String? transient,
    _is.Vector? embedding,
    _is.HalfVector? compactEmbedding,
    _is.SparseVector? sparseEmbedding,
    _is.Bit? mask,
    _is.GeographyPoint? location,
    _is.GeographyLineString? route,
    _is.GeographyPolygon? area,
    _is.GeographyGeometryCollection? geometry,
  }) : super._(
         id: id,
         createdAt: createdAt,
         displayName: displayName,
         state: state,
         priority: priority,
         enabled: enabled,
         itemCount: itemCount,
         amount: amount,
         elapsed: elapsed,
         website: website,
         largeNumber: largeNumber,
         bytes: bytes,
         labels: labels,
         flags: flags,
         attributes: attributes,
         lookup: lookup,
         coordinates: coordinates,
         payload: payload,
         optionalPayload: optionalPayload,
         legacyPayload: legacyPayload,
         secret: secret,
         transient: transient,
         embedding: embedding,
         compactEmbedding: compactEmbedding,
         sparseEmbedding: sparseEmbedding,
         mask: mask,
         location: location,
         route: route,
         area: area,
         geometry: geometry,
       );

  /// Returns a shallow copy of this [ShopRecord]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopRecord copyWith({
    Object? id = _Undefined,
    DateTime? createdAt,
    String? displayName,
    _iasvdvkq.ShopState? state,
    _iv7lj9ls.ShopPriority? priority,
    bool? enabled,
    int? itemCount,
    double? amount,
    Duration? elapsed,
    Uri? website,
    BigInt? largeNumber,
    _idt.ByteData? bytes,
    List<String>? labels,
    Set<int>? flags,
    Map<String, String>? attributes,
    Map<int, String>? lookup,
    (double, double)? coordinates,
    _i0pcuowi.ShopPayload? payload,
    Object? optionalPayload = _Undefined,
    List<String>? legacyPayload,
    Object? secret = _Undefined,
    Object? transient = _Undefined,
    Object? embedding = _Undefined,
    Object? compactEmbedding = _Undefined,
    Object? sparseEmbedding = _Undefined,
    Object? mask = _Undefined,
    Object? location = _Undefined,
    Object? route = _Undefined,
    Object? area = _Undefined,
    Object? geometry = _Undefined,
  }) {
    return ShopRecord(
      id: id is _is.UuidValue? ? id : this.id,
      createdAt: createdAt ?? this.createdAt,
      displayName: displayName ?? this.displayName,
      state: state ?? this.state,
      priority: priority ?? this.priority,
      enabled: enabled ?? this.enabled,
      itemCount: itemCount ?? this.itemCount,
      amount: amount ?? this.amount,
      elapsed: elapsed ?? this.elapsed,
      website: website ?? this.website,
      largeNumber: largeNumber ?? this.largeNumber,
      bytes: bytes ?? this.bytes.clone(),
      labels: labels ?? this.labels.map((e0) => e0).toList(),
      flags: flags ?? this.flags.map((e0) => e0).toSet(),
      attributes:
          attributes ??
          this.attributes.map((key0, value0) => MapEntry(key0, value0)),
      lookup:
          lookup ?? this.lookup.map((key0, value0) => MapEntry(key0, value0)),
      coordinates: coordinates ?? (this.coordinates.$1, this.coordinates.$2),
      payload: payload ?? this.payload.copyWith(),
      optionalPayload: optionalPayload is _i0pcuowi.ShopPayload?
          ? optionalPayload
          : this.optionalPayload?.copyWith(),
      legacyPayload:
          legacyPayload ?? this.legacyPayload.map((e0) => e0).toList(),
      secret: secret is String? ? secret : this.secret,
      transient: transient is String? ? transient : this.transient,
      embedding: embedding is _is.Vector? ? embedding : this.embedding?.clone(),
      compactEmbedding: compactEmbedding is _is.HalfVector?
          ? compactEmbedding
          : this.compactEmbedding?.clone(),
      sparseEmbedding: sparseEmbedding is _is.SparseVector?
          ? sparseEmbedding
          : this.sparseEmbedding?.clone(),
      mask: mask is _is.Bit? ? mask : this.mask?.clone(),
      location: location is _is.GeographyPoint? ? location : this.location,
      route: route is _is.GeographyLineString? ? route : this.route,
      area: area is _is.GeographyPolygon? ? area : this.area,
      geometry: geometry is _is.GeographyGeometryCollection?
          ? geometry
          : this.geometry,
    );
  }
}

class ShopRecordUpdateTable extends _is.UpdateTable<ShopRecordTable> {
  ShopRecordUpdateTable(super.table);

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(table.createdAt, value);

  _is.ColumnValue<String, String> displayName(String value) =>
      _is.ColumnValue(table.displayName, value);

  _is.ColumnValue<_iasvdvkq.ShopState, _iasvdvkq.ShopState> state(
    _iasvdvkq.ShopState value,
  ) => _is.ColumnValue(table.state, value);

  _is.ColumnValue<_iv7lj9ls.ShopPriority, _iv7lj9ls.ShopPriority> priority(
    _iv7lj9ls.ShopPriority value,
  ) => _is.ColumnValue(table.priority, value);

  _is.ColumnValue<bool, bool> enabled(bool value) =>
      _is.ColumnValue(table.enabled, value);

  _is.ColumnValue<int, int> itemCount(int value) =>
      _is.ColumnValue(table.itemCount, value);

  _is.ColumnValue<double, double> amount(double value) =>
      _is.ColumnValue(table.amount, value);

  _is.ColumnValue<Duration, Duration> elapsed(Duration value) =>
      _is.ColumnValue(table.elapsed, value);

  _is.ColumnValue<Uri, Uri> website(Uri value) =>
      _is.ColumnValue(table.website, value);

  _is.ColumnValue<BigInt, BigInt> largeNumber(BigInt value) =>
      _is.ColumnValue(table.largeNumber, value);

  _is.ColumnValue<_idt.ByteData, _idt.ByteData> bytes(_idt.ByteData value) =>
      _is.ColumnValue(table.bytes, value);

  _is.ColumnValue<List<String>, List<String>> labels(List<String> value) =>
      _is.ColumnValue(table.labels, value);

  _is.ColumnValue<Set<int>, Set<int>> flags(Set<int> value) =>
      _is.ColumnValue(table.flags, value);

  _is.ColumnValue<Map<String, String>, Map<String, String>> attributes(
    Map<String, String> value,
  ) => _is.ColumnValue(table.attributes, value);

  _is.ColumnValue<Map<int, String>, Map<int, String>> lookup(
    Map<int, String> value,
  ) => _is.ColumnValue(table.lookup, value);

  _is.ColumnValue<(double, double), Map<String, dynamic>?> coordinates(
    (double, double) value,
  ) => _is.ColumnValue(
    table.coordinates,
    _iicbhma1.Protocol().mapRecordToJson(value),
  );

  _is.ColumnValue<_i0pcuowi.ShopPayload, _i0pcuowi.ShopPayload> payload(
    _i0pcuowi.ShopPayload value,
  ) => _is.ColumnValue(table.payload, value);

  _is.ColumnValue<_i0pcuowi.ShopPayload, _i0pcuowi.ShopPayload> optionalPayload(
    _i0pcuowi.ShopPayload? value,
  ) => _is.ColumnValue(table.optionalPayload, value);

  _is.ColumnValue<List<String>, List<String>> legacyPayload(
    List<String> value,
  ) => _is.ColumnValue(table.legacyPayload, value);

  _is.ColumnValue<String, String> secret(String? value) =>
      _is.ColumnValue(table.secret, value);

  _is.ColumnValue<_is.Vector, _is.Vector> embedding(_is.Vector? value) =>
      _is.ColumnValue(table.embedding, value);

  _is.ColumnValue<_is.HalfVector, _is.HalfVector> compactEmbedding(
    _is.HalfVector? value,
  ) => _is.ColumnValue(table.compactEmbedding, value);

  _is.ColumnValue<_is.SparseVector, _is.SparseVector> sparseEmbedding(
    _is.SparseVector? value,
  ) => _is.ColumnValue(table.sparseEmbedding, value);

  _is.ColumnValue<_is.Bit, _is.Bit> mask(_is.Bit? value) =>
      _is.ColumnValue(table.mask, value);

  _is.ColumnValue<_is.GeographyPoint, _is.GeographyPoint> location(
    _is.GeographyPoint? value,
  ) => _is.ColumnValue(table.location, value);

  _is.ColumnValue<_is.GeographyLineString, _is.GeographyLineString> route(
    _is.GeographyLineString? value,
  ) => _is.ColumnValue(table.route, value);

  _is.ColumnValue<_is.GeographyPolygon, _is.GeographyPolygon> area(
    _is.GeographyPolygon? value,
  ) => _is.ColumnValue(table.area, value);

  _is.ColumnValue<
    _is.GeographyGeometryCollection,
    _is.GeographyGeometryCollection
  >
  geometry(_is.GeographyGeometryCollection? value) =>
      _is.ColumnValue(table.geometry, value);
}

class ShopRecordTable extends _is.Table<_is.UuidValue?> {
  ShopRecordTable({super.tableRelation}) : super(tableName: 'shop_records') {
    updateTable = ShopRecordUpdateTable(this);
    createdAt = _is.ColumnDateTime('createdAt', this, hasDefault: true);
    displayName = _is.ColumnString(
      'display_name',
      this,
      fieldName: 'displayName',
    );
    state = _is.ColumnEnum(
      'state',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    priority = _is.ColumnEnum('priority', this, _is.EnumSerialization.byIndex);
    enabled = _is.ColumnBool('enabled', this, hasDefault: true);
    itemCount = _is.ColumnInt('itemCount', this);
    amount = _is.ColumnDouble('amount', this);
    elapsed = _is.ColumnDuration('elapsed', this);
    website = _is.ColumnUri('website', this);
    largeNumber = _is.ColumnBigInt('largeNumber', this);
    bytes = _is.ColumnByteData('bytes', this);
    labels = _is.ColumnStructured<List<String>>('labels', this);
    flags = _is.ColumnStructured<Set<int>>('flags', this);
    attributes = _is.ColumnStructured<Map<String, String>>('attributes', this);
    lookup = _is.ColumnStructured<Map<int, String>>('lookup', this);
    coordinates = _is.ColumnStructured<(double, double)>('coordinates', this);
    payload = _is.ColumnStructured<_i0pcuowi.ShopPayload>('payload', this);
    optionalPayload = _is.ColumnStructured<_i0pcuowi.ShopPayload>(
      'optionalPayload',
      this,
    );
    legacyPayload = _is.ColumnSerializable<List<String>>('legacyPayload', this);
    secret = _is.ColumnString('secret', this);
    embedding = _is.ColumnVector('embedding', this, dimension: 3);
    compactEmbedding = _is.ColumnHalfVector(
      'compactEmbedding',
      this,
      dimension: 3,
    );
    sparseEmbedding = _is.ColumnSparseVector(
      'sparseEmbedding',
      this,
      dimension: 3,
    );
    mask = _is.ColumnBit('mask', this, dimension: 8);
    location = _is.ColumnGeographyPoint('location', this);
    route = _is.ColumnGeographyLineString('route', this);
    area = _is.ColumnGeographyPolygon('area', this);
    geometry = _is.ColumnGeographyGeometryCollection('geometry', this);
  }

  late final ShopRecordUpdateTable updateTable;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnString displayName;

  late final _is.ColumnEnum<_iasvdvkq.ShopState> state;

  late final _is.ColumnEnum<_iv7lj9ls.ShopPriority> priority;

  late final _is.ColumnBool enabled;

  late final _is.ColumnInt itemCount;

  late final _is.ColumnDouble amount;

  late final _is.ColumnDuration elapsed;

  late final _is.ColumnUri website;

  late final _is.ColumnBigInt largeNumber;

  late final _is.ColumnByteData bytes;

  late final _is.ColumnStructured<List<String>> labels;

  late final _is.ColumnStructured<Set<int>> flags;

  late final _is.ColumnStructured<Map<String, String>> attributes;

  late final _is.ColumnStructured<Map<int, String>> lookup;

  late final _is.ColumnStructured<(double, double)> coordinates;

  late final _is.ColumnStructured<_i0pcuowi.ShopPayload> payload;

  late final _is.ColumnStructured<_i0pcuowi.ShopPayload> optionalPayload;

  late final _is.ColumnSerializable<List<String>> legacyPayload;

  late final _is.ColumnString secret;

  late final _is.ColumnVector embedding;

  late final _is.ColumnHalfVector compactEmbedding;

  late final _is.ColumnSparseVector sparseEmbedding;

  late final _is.ColumnBit mask;

  late final _is.ColumnGeographyPoint location;

  late final _is.ColumnGeographyLineString route;

  late final _is.ColumnGeographyPolygon area;

  late final _is.ColumnGeographyGeometryCollection geometry;

  @override
  List<_is.Column> get columns => [
    id,
    createdAt,
    displayName,
    state,
    priority,
    enabled,
    itemCount,
    amount,
    elapsed,
    website,
    largeNumber,
    bytes,
    labels,
    flags,
    attributes,
    lookup,
    coordinates,
    payload,
    optionalPayload,
    legacyPayload,
    secret,
    embedding,
    compactEmbedding,
    sparseEmbedding,
    mask,
    location,
    route,
    area,
    geometry,
  ];
}

class ShopRecordInclude extends _is.IncludeObject {
  ShopRecordInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<_is.UuidValue?> get table => ShopRecord.t;
}

class ShopRecordIncludeList extends _is.IncludeList {
  ShopRecordIncludeList._({
    _is.WhereExpressionBuilder<ShopRecordTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopRecord.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue?> get table => ShopRecord.t;
}

class ShopRecordRepository {
  const ShopRecordRepository._();

  /// Returns a list of [ShopRecord]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<ShopRecord>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopRecordTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ShopRecord>(
      where: where?.call(ShopRecord.t),
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ShopRecord] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<ShopRecord?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopRecordTable>? where,
    int? offset,
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ShopRecord>(
      where: where?.call(ShopRecord.t),
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ShopRecord] by its [id] or null if no such row exists.
  Future<ShopRecord?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ShopRecord>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ShopRecord]s in the list and returns the inserted rows.
  ///
  /// The returned [ShopRecord]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> insert(
    _is.DatabaseSession session,
    List<ShopRecord> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ShopRecord>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ShopRecord] and returns the inserted row.
  ///
  /// The returned [ShopRecord] will have its `id` field set.
  Future<ShopRecord> insertRow(
    _is.DatabaseSession session,
    ShopRecord row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ShopRecord>(row, transaction: transaction);
  }

  /// Upserts all [ShopRecord]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [ShopRecord]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> upsert(
    _is.DatabaseSession session,
    List<ShopRecord> rows, {
    required _is.ColumnSelections<ShopRecordTable> conflictColumns,
    _is.ColumnSelections<ShopRecordTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopRecordTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ShopRecord>(
      rows,
      conflictColumns: conflictColumns(ShopRecord.t),
      updateColumns: updateColumns?.call(ShopRecord.t),
      updateWhere: updateWhere?.call(ShopRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ShopRecord] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [ShopRecord] will have its `id` field set.
  Future<ShopRecord?> upsertRow(
    _is.DatabaseSession session,
    ShopRecord row, {
    required _is.ColumnSelections<ShopRecordTable> conflictColumns,
    _is.ColumnSelections<ShopRecordTable>? updateColumns,
    _is.WhereExpressionBuilder<ShopRecordTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ShopRecord>(
      row,
      conflictColumns: conflictColumns(ShopRecord.t),
      updateColumns: updateColumns?.call(ShopRecord.t),
      updateWhere: updateWhere?.call(ShopRecord.t),
      transaction: transaction,
    );
  }

  /// Updates all [ShopRecord]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> update(
    _is.DatabaseSession session,
    List<ShopRecord> rows, {
    _is.ColumnSelections<ShopRecordTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ShopRecord>(
      rows,
      columns: columns?.call(ShopRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ShopRecord]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ShopRecord> updateRow(
    _is.DatabaseSession session,
    ShopRecord row, {
    _is.ColumnSelections<ShopRecordTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<ShopRecord>(
      row,
      columns: columns?.call(ShopRecord.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ShopRecord] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ShopRecord?> updateById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ShopRecordUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ShopRecord>(
      id,
      columnValues: columnValues(ShopRecord.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ShopRecord]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ShopRecordUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ShopRecordTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ShopRecord>(
      columnValues: columnValues(ShopRecord.t.updateTable),
      where: where(ShopRecord.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ShopRecord]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> delete(
    _is.DatabaseSession session,
    List<ShopRecord> rows, {
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ShopRecord>(
      rows,
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ShopRecord].
  Future<ShopRecord> deleteRow(
    _is.DatabaseSession session,
    ShopRecord row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ShopRecord>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ShopRecord>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopRecordTable> where,
    _is.OrderByBuilder<ShopRecordTable>? orderBy,
    _is.OrderByListBuilder<ShopRecordTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ShopRecord>(
      where: where(ShopRecord.t),
      orderBy: orderBy?.call(ShopRecord.t),
      orderByList: orderByList?.call(ShopRecord.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ShopRecordTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ShopRecord>(
      where: where?.call(ShopRecord.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ShopRecord] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ShopRecordTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ShopRecord>(
      where: where(ShopRecord.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
