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

/// Fictional university fixture: finance.
abstract class CampusInvoice
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusInvoice._({
    this.id,
    required this.studentId,
    this.termId,
    required this.number,
    required this.currency,
    required this.issuedAt,
    required this.dueAt,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusInvoice({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    _isc.UuidValue? termId,
    required String number,
    required String currency,
    required DateTime issuedAt,
    required DateTime dueAt,
    required String status,
    DateTime? createdAt,
  }) = _CampusInvoiceImpl;

  factory CampusInvoice.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusInvoice(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      studentId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['studentId'],
      ),
      termId: jsonSerialization['termId'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['termId']),
      number: jsonSerialization['number'] as String,
      currency: jsonSerialization['currency'] as String,
      issuedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['issuedAt'],
      ),
      dueAt: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['dueAt']),
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

  _isc.UuidValue studentId;

  _isc.UuidValue? termId;

  String number;

  String currency;

  DateTime issuedAt;

  DateTime dueAt;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusInvoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusInvoice copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? studentId,
    _isc.UuidValue? termId,
    String? number,
    String? currency,
    DateTime? issuedAt,
    DateTime? dueAt,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusInvoice',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (termId != null) 'termId': termId?.toJson(),
      'number': number,
      'currency': currency,
      'issuedAt': issuedAt.toJson(),
      'dueAt': dueAt.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusInvoice',
      if (id != null) 'id': id?.toJson(),
      'studentId': studentId.toJson(),
      if (termId != null) 'termId': termId?.toJson(),
      'number': number,
      'currency': currency,
      'issuedAt': issuedAt.toJson(),
      'dueAt': dueAt.toJson(),
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

class _CampusInvoiceImpl extends CampusInvoice {
  _CampusInvoiceImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue studentId,
    _isc.UuidValue? termId,
    required String number,
    required String currency,
    required DateTime issuedAt,
    required DateTime dueAt,
    required String status,
    DateTime? createdAt,
  }) : super._(
         id: id,
         studentId: studentId,
         termId: termId,
         number: number,
         currency: currency,
         issuedAt: issuedAt,
         dueAt: dueAt,
         status: status,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusInvoice]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusInvoice copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? studentId,
    Object? termId = _Undefined,
    String? number,
    String? currency,
    DateTime? issuedAt,
    DateTime? dueAt,
    String? status,
    DateTime? createdAt,
  }) {
    return CampusInvoice(
      id: id is _isc.UuidValue? ? id : this.id,
      studentId: studentId ?? this.studentId,
      termId: termId is _isc.UuidValue? ? termId : this.termId,
      number: number ?? this.number,
      currency: currency ?? this.currency,
      issuedAt: issuedAt ?? this.issuedAt,
      dueAt: dueAt ?? this.dueAt,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
