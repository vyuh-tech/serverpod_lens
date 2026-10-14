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

abstract class SchemaModule
    implements _is.SerializableModel, _is.ProtocolSerialization {
  SchemaModule._({
    required this.name,
    required this.tableCount,
  });

  factory SchemaModule({
    required String name,
    required int tableCount,
  }) = _SchemaModuleImpl;

  factory SchemaModule.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaModule(
      name: jsonSerialization['name'] as String,
      tableCount: jsonSerialization['tableCount'] as int,
    );
  }

  String name;

  int tableCount;

  /// Returns a shallow copy of this [SchemaModule]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SchemaModule copyWith({
    String? name,
    int? tableCount,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaModule',
      'name': name,
      'tableCount': tableCount,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaModule',
      'name': name,
      'tableCount': tableCount,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _SchemaModuleImpl extends SchemaModule {
  _SchemaModuleImpl({
    required String name,
    required int tableCount,
  }) : super._(
         name: name,
         tableCount: tableCount,
       );

  /// Returns a shallow copy of this [SchemaModule]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SchemaModule copyWith({
    String? name,
    int? tableCount,
  }) {
    return SchemaModule(
      name: name ?? this.name,
      tableCount: tableCount ?? this.tableCount,
    );
  }
}
