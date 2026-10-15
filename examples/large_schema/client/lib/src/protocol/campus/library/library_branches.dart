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

/// Fictional university fixture: library.
abstract class CampusLibraryBranch
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusLibraryBranch._({
    this.id,
    required this.campusId,
    required this.name,
    required this.openingHours,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusLibraryBranch({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String name,
    required String openingHours,
    DateTime? createdAt,
  }) = _CampusLibraryBranchImpl;

  factory CampusLibraryBranch.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusLibraryBranch(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      campusId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['campusId'],
      ),
      name: jsonSerialization['name'] as String,
      openingHours: jsonSerialization['openingHours'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue campusId;

  String name;

  String openingHours;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusLibraryBranch]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusLibraryBranch copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? campusId,
    String? name,
    String? openingHours,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusLibraryBranch',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'openingHours': openingHours,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusLibraryBranch',
      if (id != null) 'id': id?.toJson(),
      'campusId': campusId.toJson(),
      'name': name,
      'openingHours': openingHours,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusLibraryBranchImpl extends CampusLibraryBranch {
  _CampusLibraryBranchImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue campusId,
    required String name,
    required String openingHours,
    DateTime? createdAt,
  }) : super._(
         id: id,
         campusId: campusId,
         name: name,
         openingHours: openingHours,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusLibraryBranch]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusLibraryBranch copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? campusId,
    String? name,
    String? openingHours,
    DateTime? createdAt,
  }) {
    return CampusLibraryBranch(
      id: id is _isc.UuidValue? ? id : this.id,
      campusId: campusId ?? this.campusId,
      name: name ?? this.name,
      openingHours: openingHours ?? this.openingHours,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
