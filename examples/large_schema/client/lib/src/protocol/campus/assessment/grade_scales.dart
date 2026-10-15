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

/// Fictional university fixture: assessment.
abstract class CampusGradeScale
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGradeScale._({
    this.id,
    required this.name,
    required this.passScore,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGradeScale({
    _isc.UuidValue? id,
    required String name,
    required double passScore,
    DateTime? createdAt,
  }) = _CampusGradeScaleImpl;

  factory CampusGradeScale.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGradeScale(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      passScore: (jsonSerialization['passScore'] as num).toDouble(),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String name;

  double passScore;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGradeScale]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGradeScale copyWith({
    _isc.UuidValue? id,
    String? name,
    double? passScore,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGradeScale',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'passScore': passScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGradeScale',
      if (id != null) 'id': id?.toJson(),
      'name': name,
      'passScore': passScore,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGradeScaleImpl extends CampusGradeScale {
  _CampusGradeScaleImpl({
    _isc.UuidValue? id,
    required String name,
    required double passScore,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         passScore: passScore,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGradeScale]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGradeScale copyWith({
    Object? id = _Undefined,
    String? name,
    double? passScore,
    DateTime? createdAt,
  }) {
    return CampusGradeScale(
      id: id is _isc.UuidValue? ? id : this.id,
      name: name ?? this.name,
      passScore: passScore ?? this.passScore,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
