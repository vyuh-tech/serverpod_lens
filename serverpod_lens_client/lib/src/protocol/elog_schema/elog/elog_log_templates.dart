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

abstract class ElogLogTemplates
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogLogTemplates._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.template,
    required this.logType,
  });

  factory ElogLogTemplates({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
    required String logType,
  }) = _ElogLogTemplatesImpl;

  factory ElogLogTemplates.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogLogTemplates(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
      logType: jsonSerialization['logType'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String? template;

  String logType;

  /// Returns a shallow copy of this [ElogLogTemplates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogLogTemplates copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? template,
    String? logType,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogLogTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'logType': logType,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogLogTemplates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'logType': logType,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogLogTemplatesImpl extends ElogLogTemplates {
  _ElogLogTemplatesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? template,
    required String logType,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         template: template,
         logType: logType,
       );

  /// Returns a shallow copy of this [ElogLogTemplates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogLogTemplates copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? template = _Undefined,
    String? logType,
  }) {
    return ElogLogTemplates(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
      logType: logType ?? this.logType,
    );
  }
}
