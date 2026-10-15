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

abstract class ShopTag
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopTag._({this.id, required this.label});

  factory ShopTag({int? id, required String label}) = _ShopTagImpl;

  factory ShopTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopTag(
      id: jsonSerialization['id'] as int?,
      label: jsonSerialization['label'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String label;

  /// Returns a shallow copy of this [ShopTag]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopTag copyWith({int? id, String? label});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopTag',
      if (id != null) 'id': id,
      'label': label,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopTag',
      if (id != null) 'id': id,
      'label': label,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopTagImpl extends ShopTag {
  _ShopTagImpl({int? id, required String label})
    : super._(id: id, label: label);

  /// Returns a shallow copy of this [ShopTag]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopTag copyWith({Object? id = _Undefined, String? label}) {
    return ShopTag(id: id is int? ? id : this.id, label: label ?? this.label);
  }
}
