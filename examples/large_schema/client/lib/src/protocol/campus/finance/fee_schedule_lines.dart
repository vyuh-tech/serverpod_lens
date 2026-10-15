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

/// Fictional university fixture: finance.
abstract class CampusFeeScheduleLine
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusFeeScheduleLine._({
    this.id,
    required this.scheduleId,
    required this.feeTypeId,
    required this.amountMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusFeeScheduleLine({
    _isc.UuidValue? id,
    required _isc.UuidValue scheduleId,
    required _isc.UuidValue feeTypeId,
    required int amountMinor,
    DateTime? createdAt,
  }) = _CampusFeeScheduleLineImpl;

  factory CampusFeeScheduleLine.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusFeeScheduleLine(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      scheduleId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['scheduleId'],
      ),
      feeTypeId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['feeTypeId'],
      ),
      amountMinor: jsonSerialization['amountMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue scheduleId;

  _isc.UuidValue feeTypeId;

  int amountMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusFeeScheduleLine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusFeeScheduleLine copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? scheduleId,
    _isc.UuidValue? feeTypeId,
    int? amountMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusFeeScheduleLine',
      if (id != null) 'id': id?.toJson(),
      'scheduleId': scheduleId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusFeeScheduleLine',
      if (id != null) 'id': id?.toJson(),
      'scheduleId': scheduleId.toJson(),
      'feeTypeId': feeTypeId.toJson(),
      'amountMinor': amountMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusFeeScheduleLineImpl extends CampusFeeScheduleLine {
  _CampusFeeScheduleLineImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue scheduleId,
    required _isc.UuidValue feeTypeId,
    required int amountMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         scheduleId: scheduleId,
         feeTypeId: feeTypeId,
         amountMinor: amountMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusFeeScheduleLine]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusFeeScheduleLine copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? scheduleId,
    _isc.UuidValue? feeTypeId,
    int? amountMinor,
    DateTime? createdAt,
  }) {
    return CampusFeeScheduleLine(
      id: id is _isc.UuidValue? ? id : this.id,
      scheduleId: scheduleId ?? this.scheduleId,
      feeTypeId: feeTypeId ?? this.feeTypeId,
      amountMinor: amountMinor ?? this.amountMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
