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
abstract class CampusGrantExpense
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusGrantExpense._({
    this.id,
    required this.budgetId,
    this.invoiceId,
    required this.description,
    required this.amountMinor,
    required this.spentAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusGrantExpense({
    _isc.UuidValue? id,
    required _isc.UuidValue budgetId,
    _isc.UuidValue? invoiceId,
    required String description,
    required int amountMinor,
    required DateTime spentAt,
    DateTime? createdAt,
  }) = _CampusGrantExpenseImpl;

  factory CampusGrantExpense.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusGrantExpense(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      budgetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['budgetId'],
      ),
      invoiceId: jsonSerialization['invoiceId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['invoiceId'],
            ),
      description: jsonSerialization['description'] as String,
      amountMinor: jsonSerialization['amountMinor'] as int,
      spentAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['spentAt'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue budgetId;

  _isc.UuidValue? invoiceId;

  String description;

  int amountMinor;

  DateTime spentAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusGrantExpense]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusGrantExpense copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? budgetId,
    _isc.UuidValue? invoiceId,
    String? description,
    int? amountMinor,
    DateTime? spentAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusGrantExpense',
      if (id != null) 'id': id?.toJson(),
      'budgetId': budgetId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'description': description,
      'amountMinor': amountMinor,
      'spentAt': spentAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusGrantExpense',
      if (id != null) 'id': id?.toJson(),
      'budgetId': budgetId.toJson(),
      if (invoiceId != null) 'invoiceId': invoiceId?.toJson(),
      'description': description,
      'amountMinor': amountMinor,
      'spentAt': spentAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusGrantExpenseImpl extends CampusGrantExpense {
  _CampusGrantExpenseImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue budgetId,
    _isc.UuidValue? invoiceId,
    required String description,
    required int amountMinor,
    required DateTime spentAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         budgetId: budgetId,
         invoiceId: invoiceId,
         description: description,
         amountMinor: amountMinor,
         spentAt: spentAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusGrantExpense]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusGrantExpense copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? budgetId,
    Object? invoiceId = _Undefined,
    String? description,
    int? amountMinor,
    DateTime? spentAt,
    DateTime? createdAt,
  }) {
    return CampusGrantExpense(
      id: id is _isc.UuidValue? ? id : this.id,
      budgetId: budgetId ?? this.budgetId,
      invoiceId: invoiceId is _isc.UuidValue? ? invoiceId : this.invoiceId,
      description: description ?? this.description,
      amountMinor: amountMinor ?? this.amountMinor,
      spentAt: spentAt ?? this.spentAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
