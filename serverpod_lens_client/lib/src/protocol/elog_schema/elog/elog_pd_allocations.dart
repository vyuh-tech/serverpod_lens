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

abstract class ElogPdAllocations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdAllocations._({
    this.id,
    required this.punchSetId,
    required this.requestedQuantity,
    this.issuedTo,
    this.issuedToGroupId,
    required this.equipmentId,
    required this.createdAt,
    required this.policy,
  });

  factory ElogPdAllocations({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int requestedQuantity,
    _isc.UuidValue? issuedTo,
    _isc.UuidValue? issuedToGroupId,
    required _isc.UuidValue equipmentId,
    required DateTime createdAt,
    required String policy,
  }) = _ElogPdAllocationsImpl;

  factory ElogPdAllocations.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdAllocations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      requestedQuantity: jsonSerialization['requestedQuantity'] as int,
      issuedTo: jsonSerialization['issuedTo'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['issuedTo']),
      issuedToGroupId: jsonSerialization['issuedToGroupId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['issuedToGroupId'],
            ),
      equipmentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['equipmentId'],
      ),
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      policy: jsonSerialization['policy'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue punchSetId;

  int requestedQuantity;

  _isc.UuidValue? issuedTo;

  _isc.UuidValue? issuedToGroupId;

  _isc.UuidValue equipmentId;

  DateTime createdAt;

  String policy;

  /// Returns a shallow copy of this [ElogPdAllocations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdAllocations copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? punchSetId,
    int? requestedQuantity,
    _isc.UuidValue? issuedTo,
    _isc.UuidValue? issuedToGroupId,
    _isc.UuidValue? equipmentId,
    DateTime? createdAt,
    String? policy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAllocations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'requestedQuantity': requestedQuantity,
      if (issuedTo != null) 'issuedTo': issuedTo?.toJson(),
      if (issuedToGroupId != null) 'issuedToGroupId': issuedToGroupId?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'createdAt': createdAt.toJson(),
      'policy': policy,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAllocations',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'requestedQuantity': requestedQuantity,
      if (issuedTo != null) 'issuedTo': issuedTo?.toJson(),
      if (issuedToGroupId != null) 'issuedToGroupId': issuedToGroupId?.toJson(),
      'equipmentId': equipmentId.toJson(),
      'createdAt': createdAt.toJson(),
      'policy': policy,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAllocationsImpl extends ElogPdAllocations {
  _ElogPdAllocationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int requestedQuantity,
    _isc.UuidValue? issuedTo,
    _isc.UuidValue? issuedToGroupId,
    required _isc.UuidValue equipmentId,
    required DateTime createdAt,
    required String policy,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         requestedQuantity: requestedQuantity,
         issuedTo: issuedTo,
         issuedToGroupId: issuedToGroupId,
         equipmentId: equipmentId,
         createdAt: createdAt,
         policy: policy,
       );

  /// Returns a shallow copy of this [ElogPdAllocations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdAllocations copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? punchSetId,
    int? requestedQuantity,
    Object? issuedTo = _Undefined,
    Object? issuedToGroupId = _Undefined,
    _isc.UuidValue? equipmentId,
    DateTime? createdAt,
    String? policy,
  }) {
    return ElogPdAllocations(
      id: id is _isc.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      requestedQuantity: requestedQuantity ?? this.requestedQuantity,
      issuedTo: issuedTo is _isc.UuidValue? ? issuedTo : this.issuedTo,
      issuedToGroupId: issuedToGroupId is _isc.UuidValue?
          ? issuedToGroupId
          : this.issuedToGroupId,
      equipmentId: equipmentId ?? this.equipmentId,
      createdAt: createdAt ?? this.createdAt,
      policy: policy ?? this.policy,
    );
  }
}
