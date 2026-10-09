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

abstract class ElogPresetIndustries
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPresetIndustries._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.iconName,
    required this.displayOrder,
    required this.isActive,
  });

  factory ElogPresetIndustries({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? iconName,
    required int displayOrder,
    required bool isActive,
  }) = _ElogPresetIndustriesImpl;

  factory ElogPresetIndustries.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPresetIndustries(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      iconName: jsonSerialization['iconName'] as String?,
      displayOrder: jsonSerialization['displayOrder'] as int,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String? iconName;

  int displayOrder;

  bool isActive;

  /// Returns a shallow copy of this [ElogPresetIndustries]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPresetIndustries copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? iconName,
    int? displayOrder,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPresetIndustries',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPresetIndustries',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (iconName != null) 'iconName': iconName,
      'displayOrder': displayOrder,
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPresetIndustriesImpl extends ElogPresetIndustries {
  _ElogPresetIndustriesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? iconName,
    required int displayOrder,
    required bool isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         iconName: iconName,
         displayOrder: displayOrder,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogPresetIndustries]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPresetIndustries copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? iconName = _Undefined,
    int? displayOrder,
    bool? isActive,
  }) {
    return ElogPresetIndustries(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      iconName: iconName is String? ? iconName : this.iconName,
      displayOrder: displayOrder ?? this.displayOrder,
      isActive: isActive ?? this.isActive,
    );
  }
}
