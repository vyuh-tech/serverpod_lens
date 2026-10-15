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
abstract class CampusBookCopy
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusBookCopy._({
    this.id,
    required this.editionId,
    required this.branchId,
    required this.barcode,
    required this.shelf,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusBookCopy({
    _isc.UuidValue? id,
    required _isc.UuidValue editionId,
    required _isc.UuidValue branchId,
    required String barcode,
    required String shelf,
    required String status,
    DateTime? createdAt,
  }) = _CampusBookCopyImpl;

  factory CampusBookCopy.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusBookCopy(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      editionId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['editionId'],
      ),
      branchId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['branchId'],
      ),
      barcode: jsonSerialization['barcode'] as String,
      shelf: jsonSerialization['shelf'] as String,
      status: jsonSerialization['status'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue editionId;

  _isc.UuidValue branchId;

  String barcode;

  String shelf;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusBookCopy]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusBookCopy copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? editionId,
    _isc.UuidValue? branchId,
    String? barcode,
    String? shelf,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusBookCopy',
      if (id != null) 'id': id?.toJson(),
      'editionId': editionId.toJson(),
      'branchId': branchId.toJson(),
      'barcode': barcode,
      'shelf': shelf,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusBookCopy',
      if (id != null) 'id': id?.toJson(),
      'editionId': editionId.toJson(),
      'branchId': branchId.toJson(),
      'barcode': barcode,
      'shelf': shelf,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusBookCopyImpl extends CampusBookCopy {
  _CampusBookCopyImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue editionId,
    required _isc.UuidValue branchId,
    required String barcode,
    required String shelf,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         editionId: editionId,
         branchId: branchId,
         barcode: barcode,
         shelf: shelf,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusBookCopy]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusBookCopy copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? editionId,
    _isc.UuidValue? branchId,
    String? barcode,
    String? shelf,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusBookCopy(
      id: id is _isc.UuidValue? ? id : this.id,
      editionId: editionId ?? this.editionId,
      branchId: branchId ?? this.branchId,
      barcode: barcode ?? this.barcode,
      shelf: shelf ?? this.shelf,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
