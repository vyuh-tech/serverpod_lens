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

/// Fictional university fixture: research.
abstract class CampusGrantBudget
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGrantBudget._({
    this.id,
    required this.grantId,
    required this.category,
    required this.allocatedMinor,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrantBudget({
    _isc.UuidValue? id,
    required _isc.UuidValue grantId,
    required String category,
    required int allocatedMinor,
    DateTime? createdAt,
  }) = _CampusGrantBudgetImpl;

  factory CampusGrantBudget.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrantBudget(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      grantId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['grantId'],
      ),
      category: jsonSerialization['category'] as String,
      allocatedMinor: jsonSerialization['allocatedMinor'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue grantId;

  String category;

  int allocatedMinor;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGrantBudget]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGrantBudget copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? grantId,
    String? category,
    int? allocatedMinor,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrantBudget',
      if (id != null) 'id': id?.toJson(),
      'grantId': grantId.toJson(),
      'category': category,
      'allocatedMinor': allocatedMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrantBudget',
      if (id != null) 'id': id?.toJson(),
      'grantId': grantId.toJson(),
      'category': category,
      'allocatedMinor': allocatedMinor,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGrantBudgetImpl extends CampusGrantBudget {
  _CampusGrantBudgetImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue grantId,
    required String category,
    required int allocatedMinor,
    DateTime? createdAt,
  }) : super._(
         id: id,
         grantId: grantId,
         category: category,
         allocatedMinor: allocatedMinor,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrantBudget]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGrantBudget copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? grantId,
    String? category,
    int? allocatedMinor,
    DateTime? createdAt,
  }) {
    return CampusGrantBudget(
      id: id is _isc.UuidValue? ? id : this.id,
      grantId: grantId ?? this.grantId,
      category: category ?? this.category,
      allocatedMinor: allocatedMinor ?? this.allocatedMinor,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
