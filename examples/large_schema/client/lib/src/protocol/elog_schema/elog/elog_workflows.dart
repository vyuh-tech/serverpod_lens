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

abstract class ElogWorkflows
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogWorkflows._({
    this.id,
    required this.idField,
    required this.code,
    required this.name,
    this.description,
    required this.version,
    required this.isActive,
    required this.template,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
  });

  factory ElogWorkflows({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String code,
    required String name,
    String? description,
    required int version,
    required bool isActive,
    required String template,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) = _ElogWorkflowsImpl;

  factory ElogWorkflows.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogWorkflows(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      idField: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['idField'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      version: jsonSerialization['version'] as int,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      template: jsonSerialization['template'] as String,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['createdBy'],
            ),
      updatedBy: jsonSerialization['updatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['updatedBy'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue idField;

  String code;

  String name;

  String? description;

  int version;

  bool isActive;

  String template;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  /// Returns a shallow copy of this [ElogWorkflows]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogWorkflows copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? idField,
    String? code,
    String? name,
    String? description,
    int? version,
    bool? isActive,
    String? template,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogWorkflows',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'version': version,
      'isActive': isActive,
      'template': template,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogWorkflows',
      if (id != null) 'id': id?.toJson(),
      'idField': idField.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'version': version,
      'isActive': isActive,
      'template': template,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogWorkflowsImpl extends ElogWorkflows {
  _ElogWorkflowsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue idField,
    required String code,
    required String name,
    String? description,
    required int version,
    required bool isActive,
    required String template,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
  }) : super._(
         id: id,
         idField: idField,
         code: code,
         name: name,
         description: description,
         version: version,
         isActive: isActive,
         template: template,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
       );

  /// Returns a shallow copy of this [ElogWorkflows]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogWorkflows copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? idField,
    String? code,
    String? name,
    Object? description = _Undefined,
    int? version,
    bool? isActive,
    String? template,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
  }) {
    return ElogWorkflows(
      id: id is _isc.UuidValue? ? id : this.id,
      idField: idField ?? this.idField,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      version: version ?? this.version,
      isActive: isActive ?? this.isActive,
      template: template ?? this.template,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
    );
  }
}
