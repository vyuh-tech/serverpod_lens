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

abstract class ElogPdAllocationCursors
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdAllocationCursors._({
    this.id,
    required this.punchSetId,
    required this.lastOrdinal,
  });

  factory ElogPdAllocationCursors({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int lastOrdinal,
  }) = _ElogPdAllocationCursorsImpl;

  factory ElogPdAllocationCursors.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogPdAllocationCursors(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      lastOrdinal: jsonSerialization['lastOrdinal'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue punchSetId;

  int lastOrdinal;

  /// Returns a shallow copy of this [ElogPdAllocationCursors]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdAllocationCursors copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? punchSetId,
    int? lastOrdinal,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAllocationCursors',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'lastOrdinal': lastOrdinal,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAllocationCursors',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'lastOrdinal': lastOrdinal,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAllocationCursorsImpl extends ElogPdAllocationCursors {
  _ElogPdAllocationCursorsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int lastOrdinal,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         lastOrdinal: lastOrdinal,
       );

  /// Returns a shallow copy of this [ElogPdAllocationCursors]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdAllocationCursors copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? punchSetId,
    int? lastOrdinal,
  }) {
    return ElogPdAllocationCursors(
      id: id is _isc.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      lastOrdinal: lastOrdinal ?? this.lastOrdinal,
    );
  }
}
