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

abstract class ElogUnitOfMeasures
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogUnitOfMeasures._({
    this.id,
    required this.code,
    required this.name,
    required this.symbol,
    this.description,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    this.createdBy,
    this.updatedBy,
    required this.versionNumber,
  });

  factory ElogUnitOfMeasures({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String symbol,
    String? description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) = _ElogUnitOfMeasuresImpl;

  factory ElogUnitOfMeasures.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogUnitOfMeasures(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      name: jsonSerialization['name'] as String,
      symbol: jsonSerialization['symbol'] as String,
      description: jsonSerialization['description'] as String?,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
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
      versionNumber: jsonSerialization['versionNumber'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String code;

  String name;

  String symbol;

  String? description;

  bool isActive;

  DateTime createdAt;

  DateTime updatedAt;

  _isc.UuidValue? createdBy;

  _isc.UuidValue? updatedBy;

  int versionNumber;

  /// Returns a shallow copy of this [ElogUnitOfMeasures]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogUnitOfMeasures copyWith({
    _isc.UuidValue? id,
    String? code,
    String? name,
    String? symbol,
    String? description,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    int? versionNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogUnitOfMeasures',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'symbol': symbol,
      if (description != null) 'description': description,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogUnitOfMeasures',
      if (id != null) 'id': id?.toJson(),
      'code': code,
      'name': name,
      'symbol': symbol,
      if (description != null) 'description': description,
      'isActive': isActive,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      if (updatedBy != null) 'updatedBy': updatedBy?.toJson(),
      'versionNumber': versionNumber,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogUnitOfMeasuresImpl extends ElogUnitOfMeasures {
  _ElogUnitOfMeasuresImpl({
    _isc.UuidValue? id,
    required String code,
    required String name,
    required String symbol,
    String? description,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    _isc.UuidValue? createdBy,
    _isc.UuidValue? updatedBy,
    required int versionNumber,
  }) : super._(
         id: id,
         code: code,
         name: name,
         symbol: symbol,
         description: description,
         isActive: isActive,
         createdAt: createdAt,
         updatedAt: updatedAt,
         createdBy: createdBy,
         updatedBy: updatedBy,
         versionNumber: versionNumber,
       );

  /// Returns a shallow copy of this [ElogUnitOfMeasures]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogUnitOfMeasures copyWith({
    Object? id = _Undefined,
    String? code,
    String? name,
    String? symbol,
    Object? description = _Undefined,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    Object? createdBy = _Undefined,
    Object? updatedBy = _Undefined,
    int? versionNumber,
  }) {
    return ElogUnitOfMeasures(
      id: id is _isc.UuidValue? ? id : this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy is _isc.UuidValue? ? createdBy : this.createdBy,
      updatedBy: updatedBy is _isc.UuidValue? ? updatedBy : this.updatedBy,
      versionNumber: versionNumber ?? this.versionNumber,
    );
  }
}
