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

abstract class SchemaEnum
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaEnum._({
    required this.name,
    required this.values,
  });

  factory SchemaEnum({
    required String name,
    required List<String> values,
  }) = _SchemaEnumImpl;

  factory SchemaEnum.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaEnum(
      name: jsonSerialization['name'] as String,
      values: _ixq89rj6.Protocol().deserialize<List<String>>(
        jsonSerialization['values'],
      ),
    );
  }

  String name;

  List<String> values;

  /// Returns a shallow copy of this [SchemaEnum]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaEnum copyWith({
    String? name,
    List<String>? values,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaEnum',
      'name': name,
      'values': values.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaEnum',
      'name': name,
      'values': values.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _SchemaEnumImpl extends SchemaEnum {
  _SchemaEnumImpl({
    required String name,
    required List<String> values,
  }) : super._(
         name: name,
         values: values,
       );

  /// Returns a shallow copy of this [SchemaEnum]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaEnum copyWith({
    String? name,
    List<String>? values,
  }) {
    return SchemaEnum(
      name: name ?? this.name,
      values: values ?? this.values.map((e0) => e0).toList(),
    );
  }
}
