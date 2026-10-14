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

abstract class ElogProducts
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogProducts._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    this.brandName,
    this.productType,
    this.dosageForm,
    this.hazardClassifications,
    this.isActive,
  });

  factory ElogProducts({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  }) = _ElogProductsImpl;

  factory ElogProducts.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogProducts(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      brandName: jsonSerialization['brandName'] as String?,
      productType: jsonSerialization['productType'] as String?,
      dosageForm: jsonSerialization['dosageForm'] as String?,
      hazardClassifications: jsonSerialization['hazardClassifications'] == null
          ? null
          : _ixq89rj6.Protocol().deserialize<List<String>>(
              jsonSerialization['hazardClassifications'],
            ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  String? brandName;

  String? productType;

  String? dosageForm;

  List<String>? hazardClassifications;

  bool? isActive;

  /// Returns a shallow copy of this [ElogProducts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogProducts copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogProducts',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (brandName != null) 'brandName': brandName,
      if (productType != null) 'productType': productType,
      if (dosageForm != null) 'dosageForm': dosageForm,
      if (hazardClassifications != null)
        'hazardClassifications': hazardClassifications?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogProducts',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      if (brandName != null) 'brandName': brandName,
      if (productType != null) 'productType': productType,
      if (dosageForm != null) 'dosageForm': dosageForm,
      if (hazardClassifications != null)
        'hazardClassifications': hazardClassifications?.toJson(),
      if (isActive != null) 'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogProductsImpl extends ElogProducts {
  _ElogProductsImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    String? brandName,
    String? productType,
    String? dosageForm,
    List<String>? hazardClassifications,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         brandName: brandName,
         productType: productType,
         dosageForm: dosageForm,
         hazardClassifications: hazardClassifications,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [ElogProducts]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogProducts copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    Object? brandName = _Undefined,
    Object? productType = _Undefined,
    Object? dosageForm = _Undefined,
    Object? hazardClassifications = _Undefined,
    Object? isActive = _Undefined,
  }) {
    return ElogProducts(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      brandName: brandName is String? ? brandName : this.brandName,
      productType: productType is String? ? productType : this.productType,
      dosageForm: dosageForm is String? ? dosageForm : this.dosageForm,
      hazardClassifications: hazardClassifications is List<String>?
          ? hazardClassifications
          : this.hazardClassifications?.map((e0) => e0).toList(),
      isActive: isActive is bool? ? isActive : this.isActive,
    );
  }
}
