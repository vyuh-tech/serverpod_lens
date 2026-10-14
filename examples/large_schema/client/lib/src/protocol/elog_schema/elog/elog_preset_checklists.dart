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

abstract class ElogPresetChecklists
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetChecklists._({
    this.id,
    required this.industryId,
    required this.code,
    required this.name,
    required this.checklistType,
    this.description,
    this.template,
    required this.isDefaultEnabled,
    required this.displayOrder,
  });

  factory ElogPresetChecklists({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String checklistType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) = _ElogPresetChecklistsImpl;

  factory ElogPresetChecklists.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetChecklists(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      industryId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['industryId'],
      ),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      checklistType: jsonSerialization['checklistType'] as String,
      description: jsonSerialization['description'] as String?,
      template: jsonSerialization['template'] as String?,
      isDefaultEnabled: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isDefaultEnabled'],
      ),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue industryId;

  String code;

  String name;

  String checklistType;

  String? description;

  String? template;

  bool isDefaultEnabled;

  int displayOrder;

  /// Returns a shallow copy of this [ElogPresetChecklists]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetChecklists copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? checklistType,
    String? description,
    String? template,
    bool? isDefaultEnabled,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetChecklists',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'checklistType': checklistType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetChecklists',
      if (id != null) 'id': id?.toJson(),
      'industryId': industryId.toJson(),
      'code': code,
      'name': name,
      'checklistType': checklistType,
      if (description != null) 'description': description,
      if (template != null) 'template': template,
      'isDefaultEnabled': isDefaultEnabled,
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetChecklistsImpl extends ElogPresetChecklists {
  _ElogPresetChecklistsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue industryId,
    required String code,
    required String name,
    required String checklistType,
    String? description,
    String? template,
    required bool isDefaultEnabled,
    required int displayOrder,
  }) : super._(
         id: id,
         industryId: industryId,
         code: code,
         name: name,
         checklistType: checklistType,
         description: description,
         template: template,
         isDefaultEnabled: isDefaultEnabled,
         displayOrder: displayOrder,
       );

  /// Returns a shallow copy of this [ElogPresetChecklists]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetChecklists copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? industryId,
    String? code,
    String? name,
    String? checklistType,
    Object? description = _Undefined,
    Object? template = _Undefined,
    bool? isDefaultEnabled,
    int? displayOrder,
  }) {
    return ElogPresetChecklists(
      id: id is _isc.UuidValue? ? id : this.id,
      industryId: industryId ?? this.industryId,
      code: code ?? this.code,
      name: name ?? this.name,
      checklistType: checklistType ?? this.checklistType,
      description: description is String? ? description : this.description,
      template: template is String? ? template : this.template,
      isDefaultEnabled: isDefaultEnabled ?? this.isDefaultEnabled,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
