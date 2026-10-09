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

abstract class ElogEvents
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogEvents._({
    this.id,
    required this.idField,
    required this.eventNumber,
    required this.streamType,
    required this.streamId,
    required this.eventType,
    required this.eventCategory,
    required this.eventAt,
    required this.createdAt,
    this.performedBy,
    this.correlationId,
    this.causationId,
    this.notes,
    required this.eventData,
    required this.metadata,
  });

  factory ElogEvents({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required BigInt eventNumber,
    required String streamType,
    required _isc.UuidValue streamId,
    required String eventType,
    required String eventCategory,
    required DateTime eventAt,
    required DateTime createdAt,
    _isc.UuidValue? performedBy,
    _isc.UuidValue? correlationId,
    _isc.UuidValue? causationId,
    String? notes,
    required String eventData,
    required String metadata,
  }) = _ElogEventsImpl;

  factory ElogEvents.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogEvents(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      eventNumber: _isc.BigIntJsonExtension.fromJson(
        jsonSerialization['eventNumber'],
      ),
      streamType: jsonSerialization['streamType'] as String,
      streamId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['streamId'],
      ),
      eventType: jsonSerialization['eventType'] as String,
      eventCategory: jsonSerialization['eventCategory'] as String,
      eventAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['eventAt'],
      ),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      performedBy: jsonSerialization['performedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['performedBy'],
            ),
      correlationId: jsonSerialization['correlationId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['correlationId'],
            ),
      causationId: jsonSerialization['causationId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['causationId'],
            ),
      notes: jsonSerialization['notes'] as String?,
      eventData: jsonSerialization['eventData'] as String,
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  BigInt eventNumber;

  String streamType;

  _isc.UuidValue streamId;

  String eventType;

  String eventCategory;

  DateTime eventAt;

  DateTime createdAt;

  _isc.UuidValue? performedBy;

  _isc.UuidValue? correlationId;

  _isc.UuidValue? causationId;

  String? notes;

  String eventData;

  String metadata;

  /// Returns a shallow copy of this [ElogEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogEvents copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    BigInt? eventNumber,
    String? streamType,
    _isc.UuidValue? streamId,
    String? eventType,
    String? eventCategory,
    DateTime? eventAt,
    DateTime? createdAt,
    _isc.UuidValue? performedBy,
    _isc.UuidValue? correlationId,
    _isc.UuidValue? causationId,
    String? notes,
    String? eventData,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'eventNumber': eventNumber.toJson(),
      'streamType': streamType,
      'streamId': streamId.toJson(),
      'eventType': eventType,
      'eventCategory': eventCategory,
      'eventAt': eventAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      if (correlationId != null) 'correlationId': correlationId?.toJson(),
      if (causationId != null) 'causationId': causationId?.toJson(),
      if (notes != null) 'notes': notes,
      'eventData': eventData,
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogEvents',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'eventNumber': eventNumber.toJson(),
      'streamType': streamType,
      'streamId': streamId.toJson(),
      'eventType': eventType,
      'eventCategory': eventCategory,
      'eventAt': eventAt.toJson(),
      'createdAt': createdAt.toJson(),
      if (performedBy != null) 'performedBy': performedBy?.toJson(),
      if (correlationId != null) 'correlationId': correlationId?.toJson(),
      if (causationId != null) 'causationId': causationId?.toJson(),
      if (notes != null) 'notes': notes,
      'eventData': eventData,
      'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogEventsImpl extends ElogEvents {
  _ElogEventsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required BigInt eventNumber,
    required String streamType,
    required _isc.UuidValue streamId,
    required String eventType,
    required String eventCategory,
    required DateTime eventAt,
    required DateTime createdAt,
    _isc.UuidValue? performedBy,
    _isc.UuidValue? correlationId,
    _isc.UuidValue? causationId,
    String? notes,
    required String eventData,
    required String metadata,
  }) : super._(
         id: id,
         idField: idField,
         eventNumber: eventNumber,
         streamType: streamType,
         streamId: streamId,
         eventType: eventType,
         eventCategory: eventCategory,
         eventAt: eventAt,
         createdAt: createdAt,
         performedBy: performedBy,
         correlationId: correlationId,
         causationId: causationId,
         notes: notes,
         eventData: eventData,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [ElogEvents]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogEvents copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    BigInt? eventNumber,
    String? streamType,
    _isc.UuidValue? streamId,
    String? eventType,
    String? eventCategory,
    DateTime? eventAt,
    DateTime? createdAt,
    Object? performedBy = _Undefined,
    Object? correlationId = _Undefined,
    Object? causationId = _Undefined,
    Object? notes = _Undefined,
    String? eventData,
    String? metadata,
  }) {
    return ElogEvents(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      eventNumber: eventNumber ?? this.eventNumber,
      streamType: streamType ?? this.streamType,
      streamId: streamId ?? this.streamId,
      eventType: eventType ?? this.eventType,
      eventCategory: eventCategory ?? this.eventCategory,
      eventAt: eventAt ?? this.eventAt,
      createdAt: createdAt ?? this.createdAt,
      performedBy: performedBy is _isc.UuidValue?
          ? performedBy
          : this.performedBy,
      correlationId: correlationId is _isc.UuidValue?
          ? correlationId
          : this.correlationId,
      causationId: causationId is _isc.UuidValue?
          ? causationId
          : this.causationId,
      notes: notes is String? ? notes : this.notes,
      eventData: eventData ?? this.eventData,
      metadata: metadata ?? this.metadata,
    );
  }
}
