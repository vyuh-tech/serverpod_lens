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

abstract class ElogPdAssemblies
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogPdAssemblies._({
    this.id,
    required this.punchSetId,
    required this.ordinal,
    required this.label,
  });

  factory ElogPdAssemblies({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int ordinal,
    required String label,
  }) = _ElogPdAssembliesImpl;

  factory ElogPdAssemblies.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogPdAssemblies(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      punchSetId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['punchSetId'],
      ),
      ordinal: jsonSerialization['ordinal'] as int,
      label: jsonSerialization['label'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue punchSetId;

  int ordinal;

  String label;

  /// Returns a shallow copy of this [ElogPdAssemblies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogPdAssemblies copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? punchSetId,
    int? ordinal,
    String? label,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogPdAssemblies',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'ordinal': ordinal,
      'label': label,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogPdAssemblies',
      if (id != null) 'id': id?.toJson(),
      'punchSetId': punchSetId.toJson(),
      'ordinal': ordinal,
      'label': label,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogPdAssembliesImpl extends ElogPdAssemblies {
  _ElogPdAssembliesImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue punchSetId,
    required int ordinal,
    required String label,
  }) : super._(
         id: id,
         punchSetId: punchSetId,
         ordinal: ordinal,
         label: label,
       );

  /// Returns a shallow copy of this [ElogPdAssemblies]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogPdAssemblies copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? punchSetId,
    int? ordinal,
    String? label,
  }) {
    return ElogPdAssemblies(
      id: id is _isc.UuidValue? ? id : this.id,
      punchSetId: punchSetId ?? this.punchSetId,
      ordinal: ordinal ?? this.ordinal,
      label: label ?? this.label,
    );
  }
}
