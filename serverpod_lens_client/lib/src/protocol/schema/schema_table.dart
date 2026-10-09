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
import '../schema/schema_column.dart' as _ia7efkzh;
import '../schema/schema_foreign_key.dart' as _iqtfaf2b;
import '../schema/schema_index.dart' as _ij2l1t2u;

abstract class SchemaTable
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaTable._({
    required this.name,
    required this.className,
    required this.schema,
    required this.module,
    this.documentation,
    required this.columns,
    required this.foreignKeys,
    required this.indexes,
  });

  factory SchemaTable({
    required String name,
    required String className,
    required String schema,
    required String module,
    String? documentation,
    required List<_ia7efkzh.SchemaColumn> columns,
    required List<_iqtfaf2b.SchemaForeignKey> foreignKeys,
    required List<_ij2l1t2u.SchemaIndex> indexes,
  }) = _SchemaTableImpl;

  factory SchemaTable.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaTable(
      name: jsonSerialization['name'] as String,
      className: jsonSerialization['className'] as String,
      schema: jsonSerialization['schema'] as String,
      module: jsonSerialization['module'] as String,
      documentation: jsonSerialization['documentation'] as String?,
      columns: _ixq89rj6.Protocol().deserialize<List<_ia7efkzh.SchemaColumn>>(
        jsonSerialization['columns'],
      ),
      foreignKeys: _ixq89rj6.Protocol()
          .deserialize<List<_iqtfaf2b.SchemaForeignKey>>(
            jsonSerialization['foreignKeys'],
          ),
      indexes: _ixq89rj6.Protocol().deserialize<List<_ij2l1t2u.SchemaIndex>>(
        jsonSerialization['indexes'],
      ),
    );
  }

  String name;

  String className;

  String schema;

  String module;

  String? documentation;

  List<_ia7efkzh.SchemaColumn> columns;

  List<_iqtfaf2b.SchemaForeignKey> foreignKeys;

  List<_ij2l1t2u.SchemaIndex> indexes;

  /// Returns a shallow copy of this [SchemaTable]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaTable copyWith({
    String? name,
    String? className,
    String? schema,
    String? module,
    String? documentation,
    List<_ia7efkzh.SchemaColumn>? columns,
    List<_iqtfaf2b.SchemaForeignKey>? foreignKeys,
    List<_ij2l1t2u.SchemaIndex>? indexes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaTable',
      'name': name,
      'className': className,
      'schema': schema,
      'module': module,
      if (documentation != null) 'documentation': documentation,
      'columns': columns.toJson(valueToJson: (v) => v.toJson()),
      'foreignKeys': foreignKeys.toJson(valueToJson: (v) => v.toJson()),
      'indexes': indexes.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaTable',
      'name': name,
      'className': className,
      'schema': schema,
      'module': module,
      if (documentation != null) 'documentation': documentation,
      'columns': columns.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'foreignKeys': foreignKeys.toJson(
        valueToJson: (v) => v.toJsonForProtocol(),
      ),
      'indexes': indexes.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SchemaTableImpl extends SchemaTable {
  _SchemaTableImpl({
    required String name,
    required String className,
    required String schema,
    required String module,
    String? documentation,
    required List<_ia7efkzh.SchemaColumn> columns,
    required List<_iqtfaf2b.SchemaForeignKey> foreignKeys,
    required List<_ij2l1t2u.SchemaIndex> indexes,
  }) : super._(
         name: name,
         className: className,
         schema: schema,
         module: module,
         documentation: documentation,
         columns: columns,
         foreignKeys: foreignKeys,
         indexes: indexes,
       );

  /// Returns a shallow copy of this [SchemaTable]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaTable copyWith({
    String? name,
    String? className,
    String? schema,
    String? module,
    Object? documentation = _Undefined,
    List<_ia7efkzh.SchemaColumn>? columns,
    List<_iqtfaf2b.SchemaForeignKey>? foreignKeys,
    List<_ij2l1t2u.SchemaIndex>? indexes,
  }) {
    return SchemaTable(
      name: name ?? this.name,
      className: className ?? this.className,
      schema: schema ?? this.schema,
      module: module ?? this.module,
      documentation: documentation is String?
          ? documentation
          : this.documentation,
      columns: columns ?? this.columns.map((e0) => e0.copyWith()).toList(),
      foreignKeys:
          foreignKeys ?? this.foreignKeys.map((e0) => e0.copyWith()).toList(),
      indexes: indexes ?? this.indexes.map((e0) => e0.copyWith()).toList(),
    );
  }
}
