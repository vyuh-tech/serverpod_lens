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
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

/// Fictional university fixture: campus.
abstract class CampusRoom
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusRoom._({
    this.id,
    required this.buildingId,
    required this.code,
    required this.capacity,
    required this.accessible,
    required this.facilities,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusRoom({
    _isc.UuidValue? id,
    required _isc.UuidValue buildingId,
    required String code,
    required int capacity,
    required bool accessible,
    required List<String> facilities,
    DateTime? createdAt,
  }) = _CampusRoomImpl;

  factory CampusRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusRoom(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      buildingId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['buildingId'],
      ),
      code: jsonSerialization['code'] as String,
      capacity: jsonSerialization['capacity'] as int,
      accessible: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['accessible'],
      ),
      facilities: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['facilities'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue buildingId;

  String code;

  int capacity;

  bool accessible;

  List<String> facilities;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusRoom]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusRoom copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? buildingId,
    String? code,
    int? capacity,
    bool? accessible,
    List<String>? facilities,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusRoom',
      if (id != null) 'id': id?.toJson(),
      'buildingId': buildingId.toJson(),
      'code': code,
      'capacity': capacity,
      'accessible': accessible,
      'facilities': facilities.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusRoom',
      if (id != null) 'id': id?.toJson(),
      'buildingId': buildingId.toJson(),
      'code': code,
      'capacity': capacity,
      'accessible': accessible,
      'facilities': facilities.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusRoomImpl extends CampusRoom {
  _CampusRoomImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue buildingId,
    required String code,
    required int capacity,
    required bool accessible,
    required List<String> facilities,
    DateTime? createdAt,
  }) : super._(
         id: id,
         buildingId: buildingId,
         code: code,
         capacity: capacity,
         accessible: accessible,
         facilities: facilities,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusRoom]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusRoom copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? buildingId,
    String? code,
    int? capacity,
    bool? accessible,
    List<String>? facilities,
    DateTime? createdAt,
  }) {
    return CampusRoom(
      id: id is _isc.UuidValue? ? id : this.id,
      buildingId: buildingId ?? this.buildingId,
      code: code ?? this.code,
      capacity: capacity ?? this.capacity,
      accessible: accessible ?? this.accessible,
      facilities: facilities ?? this.facilities.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
