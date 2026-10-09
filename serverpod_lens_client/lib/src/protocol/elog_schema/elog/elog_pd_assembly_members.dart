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

abstract class ElogPdAssemblyMembers
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdAssemblyMembers._({
    this.id,
    required this.assemblyId,
    required this.componentId,
  });

  factory ElogPdAssemblyMembers({
    _isc.UuidValue? id,
    required _isc.UuidValue assemblyId,
    required _isc.UuidValue componentId,
  }) = _ElogPdAssemblyMembersImpl;

  factory ElogPdAssemblyMembers.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAssemblyMembers(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      assemblyId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['assemblyId'],
      ),
      componentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['componentId'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue assemblyId;

  _isc.UuidValue componentId;

  /// Returns a shallow copy of this [ElogPdAssemblyMembers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdAssemblyMembers copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? assemblyId,
    _isc.UuidValue? componentId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAssemblyMembers',
      if (id != null) 'id': id?.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAssemblyMembers',
      if (id != null) 'id': id?.toJson(),
      'assemblyId': assemblyId.toJson(),
      'componentId': componentId.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAssemblyMembersImpl extends ElogPdAssemblyMembers {
  _ElogPdAssemblyMembersImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue assemblyId,
    required _isc.UuidValue componentId,
  }) : super._(
         id: id,
         assemblyId: assemblyId,
         componentId: componentId,
       );

  /// Returns a shallow copy of this [ElogPdAssemblyMembers]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdAssemblyMembers copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? assemblyId,
    _isc.UuidValue? componentId,
  }) {
    return ElogPdAssemblyMembers(
      id: id is _isc.UuidValue? ? id : this.id,
      assemblyId: assemblyId ?? this.assemblyId,
      componentId: componentId ?? this.componentId,
    );
  }
}
