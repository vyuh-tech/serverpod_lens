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

abstract class ElogBusinessAssociates
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogBusinessAssociates._({
    this.id,
    required this.code,
    required this.name,
    this.description,
    required this.associateType,
    required this.associateStatus,
    this.contactPerson,
    this.email,
    this.phone,
    this.address,
    this.website,
  });

  factory ElogBusinessAssociates({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required List<String> associateType,
    required String associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  }) = _ElogBusinessAssociatesImpl;

  factory ElogBusinessAssociates.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogBusinessAssociates(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      associateType: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['associateType'],
      ),
      associateStatus: jsonSerialization['associateStatus'] as String,
      contactPerson: jsonSerialization['contactPerson'] as String?,
      email: jsonSerialization['email'] as String?,
      phone: jsonSerialization['phone'] as String?,
      address: jsonSerialization['address'] as String?,
      website: jsonSerialization['website'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String? description;

  List<String> associateType;

  String associateStatus;

  String? contactPerson;

  String? email;

  String? phone;

  String? address;

  String? website;

  /// Returns a shallow copy of this [ElogBusinessAssociates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogBusinessAssociates copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? description,
    List<String>? associateType,
    String? associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogBusinessAssociates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'associateType': associateType.toJson(),
      'associateStatus': associateStatus,
      if (contactPerson != null) 'contactPerson': contactPerson,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (website != null) 'website': website,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogBusinessAssociates',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      if (description != null) 'description': description,
      'associateType': associateType.toJson(),
      'associateStatus': associateStatus,
      if (contactPerson != null) 'contactPerson': contactPerson,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (website != null) 'website': website,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogBusinessAssociatesImpl extends ElogBusinessAssociates {
  _ElogBusinessAssociatesImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    String? description,
    required List<String> associateType,
    required String associateStatus,
    String? contactPerson,
    String? email,
    String? phone,
    String? address,
    String? website,
  }) : super._(
         id: id,
         code: code,
         name: name,
         description: description,
         associateType: associateType,
         associateStatus: associateStatus,
         contactPerson: contactPerson,
         email: email,
         phone: phone,
         address: address,
         website: website,
       );

  /// Returns a shallow copy of this [ElogBusinessAssociates]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogBusinessAssociates copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    Object? description = _Undefined,
    List<String>? associateType,
    String? associateStatus,
    Object? contactPerson = _Undefined,
    Object? email = _Undefined,
    Object? phone = _Undefined,
    Object? address = _Undefined,
    Object? website = _Undefined,
  }) {
    return ElogBusinessAssociates(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      associateType:
          associateType ?? this.associateType.map((e0) => e0).toList(),
      associateStatus: associateStatus ?? this.associateStatus,
      contactPerson: contactPerson is String?
          ? contactPerson
          : this.contactPerson,
      email: email is String? ? email : this.email,
      phone: phone is String? ? phone : this.phone,
      address: address is String? ? address : this.address,
      website: website is String? ? website : this.website,
    );
  }
}
