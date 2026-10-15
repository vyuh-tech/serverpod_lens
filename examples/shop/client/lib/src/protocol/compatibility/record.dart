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
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:shop_client/src/protocol/protocol.dart' as _id88xlko;
import '../compatibility/payload.dart' as _i0pcuowi;
import '../compatibility/priority.dart' as _iv7lj9ls;
import '../compatibility/state.dart' as _iasvdvkq;
import '../protocol.dart' as _iv35mfmj;

abstract class ShopRecord extends _iv35mfmj.ShopAuditBase
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
    _isc.UuidValue? id,
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
    String? transient,
    _isc.Vector? embedding,
    _isc.HalfVector? compactEmbedding,
    _isc.SparseVector? sparseEmbedding,
    _isc.Bit? mask,
    _isc.GeographyPoint? location,
    _isc.GeographyLineString? route,
    _isc.GeographyPolygon? area,
    _isc.GeographyGeometryCollection? geometry,
  }) = _ShopRecordImpl;

  factory ShopRecord.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopRecord(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
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
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['enabled']),
      itemCount: jsonSerialization['itemCount'] as int,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      elapsed: _isc.DurationJsonExtension.fromJson(
        jsonSerialization['elapsed'],
      ),
      website: _isc.UriJsonExtension.fromJson(jsonSerialization['website']),
      largeNumber: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['largeNumber'],
      ),
      bytes: _isc.ByteDataJsonExtension.fromJson(jsonSerialization['bytes']),
      labels: _id88xlko.Protocol().deserialize<List<String>>(
        jsonSerialization['labels'],
      ),
      flags: _id88xlko.Protocol().deserialize<Set<int>>(
        jsonSerialization['flags'],
      ),
      attributes: _id88xlko.Protocol().deserialize<Map<String, String>>(
        jsonSerialization['attributes'],
      ),
      lookup: _id88xlko.Protocol().deserialize<Map<int, String>>(
        jsonSerialization['lookup'],
      ),
      coordinates: _id88xlko.Protocol().deserialize<(double, double)>(
        (jsonSerialization['coordinates'] as Map<String, dynamic>),
      ),
      payload: _id88xlko.Protocol().deserialize<_i0pcuowi.ShopPayload>(
        jsonSerialization['payload'],
      ),
      optionalPayload: jsonSerialization['optionalPayload'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_i0pcuowi.ShopPayload>(
              jsonSerialization['optionalPayload'],
            ),
      legacyPayload: _id88xlko.Protocol().deserialize<List<String>>(
        jsonSerialization['legacyPayload'],
      ),
      transient: jsonSerialization['transient'] as String?,
      embedding: jsonSerialization['embedding'] == null
          ? null
          : _isc.VectorJsonExtension.fromJson(jsonSerialization['embedding']),
      compactEmbedding: jsonSerialization['compactEmbedding'] == null
          ? null
          : _isc.HalfVectorJsonExtension.fromJson(
              jsonSerialization['compactEmbedding'],
            ),
      sparseEmbedding: jsonSerialization['sparseEmbedding'] == null
          ? null
          : _isc.SparseVectorJsonExtension.fromJson(
              jsonSerialization['sparseEmbedding'],
            ),
      mask: jsonSerialization['mask'] == null
          ? null
          : _isc.BitJsonExtension.fromJson(jsonSerialization['mask']),
      location: jsonSerialization['location'] == null
          ? null
          : _isc.GeographyPointJsonExtension.fromJson(
              jsonSerialization['location'],
            ),
      route: jsonSerialization['route'] == null
          ? null
          : _isc.GeographyLineStringJsonExtension.fromJson(
              jsonSerialization['route'],
            ),
      area: jsonSerialization['area'] == null
          ? null
          : _isc.GeographyPolygonJsonExtension.fromJson(
              jsonSerialization['area'],
            ),
      geometry: jsonSerialization['geometry'] == null
          ? null
          : _isc.GeographyGeometryCollectionJsonExtension.fromJson(
              jsonSerialization['geometry'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

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

  String? transient;

  _isc.Vector? embedding;

  _isc.HalfVector? compactEmbedding;

  _isc.SparseVector? sparseEmbedding;

  _isc.Bit? mask;

  _isc.GeographyPoint? location;

  _isc.GeographyLineString? route;

  _isc.GeographyPolygon? area;

  _isc.GeographyGeometryCollection? geometry;

  /// Returns a shallow copy of this [ShopRecord]
  /// with some or all fields replaced by the given arguments.
  @override
  @_isc.useResult
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
    String? transient,
    _isc.Vector? embedding,
    _isc.HalfVector? compactEmbedding,
    _isc.SparseVector? sparseEmbedding,
    _isc.Bit? mask,
    _isc.GeographyPoint? location,
    _isc.GeographyLineString? route,
    _isc.GeographyPolygon? area,
    _isc.GeographyGeometryCollection? geometry,
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
      'coordinates': _id88xlko.Protocol().mapRecordToJson(coordinates),
      'payload': payload.toJson(),
      if (optionalPayload != null) 'optionalPayload': optionalPayload?.toJson(),
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
      'coordinates': _id88xlko.Protocol().mapRecordToJson(coordinates),
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopRecordImpl extends ShopRecord {
  _ShopRecordImpl({
    _isc.UuidValue? id,
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
    String? transient,
    _isc.Vector? embedding,
    _isc.HalfVector? compactEmbedding,
    _isc.SparseVector? sparseEmbedding,
    _isc.Bit? mask,
    _isc.GeographyPoint? location,
    _isc.GeographyLineString? route,
    _isc.GeographyPolygon? area,
    _isc.GeographyGeometryCollection? geometry,
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
  @_isc.useResult
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
      id: id is _isc.UuidValue? ? id : this.id,
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
      transient: transient is String? ? transient : this.transient,
      embedding: embedding is _isc.Vector?
          ? embedding
          : this.embedding?.clone(),
      compactEmbedding: compactEmbedding is _isc.HalfVector?
          ? compactEmbedding
          : this.compactEmbedding?.clone(),
      sparseEmbedding: sparseEmbedding is _isc.SparseVector?
          ? sparseEmbedding
          : this.sparseEmbedding?.clone(),
      mask: mask is _isc.Bit? ? mask : this.mask?.clone(),
      location: location is _isc.GeographyPoint? ? location : this.location,
      route: route is _isc.GeographyLineString? ? route : this.route,
      area: area is _isc.GeographyPolygon? ? area : this.area,
      geometry: geometry is _isc.GeographyGeometryCollection?
          ? geometry
          : this.geometry,
    );
  }
}
