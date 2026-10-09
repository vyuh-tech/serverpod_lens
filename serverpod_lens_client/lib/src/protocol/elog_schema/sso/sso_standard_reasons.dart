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

abstract class SsoStandardReasons
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoStandardReasons._({
    this.id,
    required this.name,
    this.description,
    required this.code,
    this.displayOrder,
  });

  factory SsoStandardReasons({
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String code,
    int? displayOrder,
  }) = _SsoStandardReasonsImpl;

  factory SsoStandardReasons.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoStandardReasons(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      code: jsonSerialization['code'] as String,
      displayOrder: jsonSerialization['displayOrder'] as int?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  String? description;

  String code;

  int? displayOrder;

  /// Returns a shallow copy of this [SsoStandardReasons]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoStandardReasons copyWith({
    _isc.UuidValue? id,
    String? name,
    String? description,
    String? code,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoStandardReasons',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      if (displayOrder != null) 'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoStandardReasons',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'code': code,
      if (displayOrder != null) 'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoStandardReasonsImpl extends SsoStandardReasons {
  _SsoStandardReasonsImpl({
    _isc.UuidValue? id,
    required String name,
    String? description,
    required String code,
    int? displayOrder,
  }) : super._(
         id: id,
         name: name,
         description: description,
         code: code,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [SsoStandardReasons]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoStandardReasons copyWith({
    Object? id = _Undefined,
    String? name,
    Object? description = _Undefined,
    String? code,
    Object? displayOrder = _Undefined,
  }) {
    return SsoStandardReasons(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      code: code ?? this.code,
      displayOrder: displayOrder is int? ? displayOrder : this.displayOrder,
    );
  }
}
