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
import '../schema/schema_enum.dart' as _isfxzqcy;
import '../schema/schema_module.dart' as _ij5fcmsk;
import '../schema/schema_table.dart' as _imfwfxkx;

abstract class SchemaGraph
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaGraph._({
    required this.source,
    required this.generatedAt,
    required this.modules,
    required this.tables,
    required this.enums,
  });

  factory SchemaGraph({
    required String source,
    required DateTime generatedAt,
    required List<_ij5fcmsk.SchemaModule> modules,
    required List<_imfwfxkx.SchemaTable> tables,
    required List<_isfxzqcy.SchemaEnum> enums,
  }) = _SchemaGraphImpl;

  factory SchemaGraph.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaGraph(
      source: jsonSerialization['source'] as String,
      generatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['generatedAt'],
      ),
      modules: _ixq89rj6.Protocol().deserialize<List<_ij5fcmsk.SchemaModule>>(
        jsonSerialization['modules'],
      ),
      tables: _ixq89rj6.Protocol().deserialize<List<_imfwfxkx.SchemaTable>>(
        jsonSerialization['tables'],
      ),
      enums: _ixq89rj6.Protocol().deserialize<List<_isfxzqcy.SchemaEnum>>(
        jsonSerialization['enums'],
      ),
    );
  }

  String source;

  DateTime generatedAt;

  List<_ij5fcmsk.SchemaModule> modules;

  List<_imfwfxkx.SchemaTable> tables;

  List<_isfxzqcy.SchemaEnum> enums;

  /// Returns a shallow copy of this [SchemaGraph]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaGraph copyWith({
    String? source,
    DateTime? generatedAt,
    List<_ij5fcmsk.SchemaModule>? modules,
    List<_imfwfxkx.SchemaTable>? tables,
    List<_isfxzqcy.SchemaEnum>? enums,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaGraph',
      'source': source,
      'generatedAt': generatedAt.toJson(),
      'modules': modules.toJson(valueToJson: (v) => v.toJson()),
      'tables': tables.toJson(valueToJson: (v) => v.toJson()),
      'enums': enums.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaGraph',
      'source': source,
      'generatedAt': generatedAt.toJson(),
      'modules': modules.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'tables': tables.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'enums': enums.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _SchemaGraphImpl extends SchemaGraph {
  _SchemaGraphImpl({
    required String source,
    required DateTime generatedAt,
    required List<_ij5fcmsk.SchemaModule> modules,
    required List<_imfwfxkx.SchemaTable> tables,
    required List<_isfxzqcy.SchemaEnum> enums,
  }) : super._(
         source: source,
         generatedAt: generatedAt,
         modules: modules,
         tables: tables,
         enums: enums,
       );

  /// Returns a shallow copy of this [SchemaGraph]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaGraph copyWith({
    String? source,
    DateTime? generatedAt,
    List<_ij5fcmsk.SchemaModule>? modules,
    List<_imfwfxkx.SchemaTable>? tables,
    List<_isfxzqcy.SchemaEnum>? enums,
  }) {
    return SchemaGraph(
      source: source ?? this.source,
      generatedAt: generatedAt ?? this.generatedAt,
      modules: modules ?? this.modules.map((e0) => e0.copyWith()).toList(),
      tables: tables ?? this.tables.map((e0) => e0.copyWith()).toList(),
      enums: enums ?? this.enums.map((e0) => e0.copyWith()).toList(),
    );
  }
}
