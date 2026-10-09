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
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_lens_server/src/generated/protocol.dart' as _ioh8es0p;

abstract class SchemaIndex
    implements _is.SerializableModel, _is.ProtocolSerialization {
  SchemaIndex._({
    required this.name,
    required this.columns,
    required this.unique,
    required this.type,
  });

  factory SchemaIndex({
    required String name,
    required List<String> columns,
    required bool unique,
    required String type,
  }) = _SchemaIndexImpl;

  factory SchemaIndex.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaIndex(
      name: jsonSerialization['name'] as String,
      columns: _ioh8es0p.Protocol().deserialize<List<String>>(
        jsonSerialization['columns'],
      ),
      unique: _is.BoolJsonExtension.fromJson(jsonSerialization['unique']),
      type: jsonSerialization['type'] as String,
    );
  }

  String name;

  List<String> columns;

  bool unique;

  String type;

  /// Returns a shallow copy of this [SchemaIndex]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SchemaIndex copyWith({
    String? name,
    List<String>? columns,
    bool? unique,
    String? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaIndex',
      'name': name,
      'columns': columns.toJson(),
      'unique': unique,
      'type': type,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaIndex',
      'name': name,
      'columns': columns.toJson(),
      'unique': unique,
      'type': type,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _SchemaIndexImpl extends SchemaIndex {
  _SchemaIndexImpl({
    required String name,
    required List<String> columns,
    required bool unique,
    required String type,
  }) : super._(
         name: name,
         columns: columns,
         unique: unique,
         type: type,
       );

  /// Returns a shallow copy of this [SchemaIndex]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SchemaIndex copyWith({
    String? name,
    List<String>? columns,
    bool? unique,
    String? type,
  }) {
    return SchemaIndex(
      name: name ?? this.name,
      columns: columns ?? this.columns.map((e0) => e0).toList(),
      unique: unique ?? this.unique,
      type: type ?? this.type,
    );
  }
}
