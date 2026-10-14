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
import 'package:serverpod_lens_client/src/protocol/protocol.dart' as _ixq89rj6;

abstract class SchemaForeignKey
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaForeignKey._({
    required this.name,
    required this.columns,
    required this.refTable,
    required this.refColumns,
    required this.onDelete,
    required this.onUpdate,
  });

  factory SchemaForeignKey({
    required String name,
    required List<String> columns,
    required String refTable,
    required List<String> refColumns,
    required String onDelete,
    required String onUpdate,
  }) = _SchemaForeignKeyImpl;

  factory SchemaForeignKey.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaForeignKey(
      name: jsonSerialization['name'] as String,
      columns: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['columns'],
      ),
      refTable: jsonSerialization['refTable'] as String,
      refColumns: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['refColumns'],
      ),
      onDelete: jsonSerialization['onDelete'] as String,
      onUpdate: jsonSerialization['onUpdate'] as String,
    );
  }

  String name;

  List<String> columns;

  String refTable;

  List<String> refColumns;

  String onDelete;

  String onUpdate;

  /// Returns a shallow copy of this [SchemaForeignKey]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaForeignKey copyWith({
    String? name,
    List<String>? columns,
    String? refTable,
    List<String>? refColumns,
    String? onDelete,
    String? onUpdate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaForeignKey',
      'name': name,
      'columns': columns.toJson(),
      'refTable': refTable,
      'refColumns': refColumns.toJson(),
      'onDelete': onDelete,
      'onUpdate': onUpdate,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaForeignKey',
      'name': name,
      'columns': columns.toJson(),
      'refTable': refTable,
      'refColumns': refColumns.toJson(),
      'onDelete': onDelete,
      'onUpdate': onUpdate,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _SchemaForeignKeyImpl extends SchemaForeignKey {
  _SchemaForeignKeyImpl({
    required String name,
    required List<String> columns,
    required String refTable,
    required List<String> refColumns,
    required String onDelete,
    required String onUpdate,
  }) : super._(
         name: name,
         columns: columns,
         refTable: refTable,
         refColumns: refColumns,
         onDelete: onDelete,
         onUpdate: onUpdate,
       );

  /// Returns a shallow copy of this [SchemaForeignKey]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaForeignKey copyWith({
    String? name,
    List<String>? columns,
    String? refTable,
    List<String>? refColumns,
    String? onDelete,
    String? onUpdate,
  }) {
    return SchemaForeignKey(
      name: name ?? this.name,
      columns: columns ?? this.columns.map((e0) => e0).toList(),
      refTable: refTable ?? this.refTable,
      refColumns: refColumns ?? this.refColumns.map((e0) => e0).toList(),
      onDelete: onDelete ?? this.onDelete,
      onUpdate: onUpdate ?? this.onUpdate,
    );
  }
}
