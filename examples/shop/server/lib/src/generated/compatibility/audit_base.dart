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

class ShopAuditBase
    implements _is.SerializableModel, _is.ProtocolSerialization {
  ShopAuditBase({this.id, DateTime? createdAt})
    : createdAt = createdAt ?? DateTime.now();

  factory ShopAuditBase.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopAuditBase(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  _is.UuidValue? id;

  DateTime createdAt;

  /// Returns a shallow copy of this [ShopAuditBase]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopAuditBase copyWith({Object? id = _Undefined, DateTime? createdAt}) {
    return ShopAuditBase(
      id: id is _is.UuidValue? ? id : this.id,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopAuditBase',
      if (id != null) 'id': id?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopAuditBase',
      if (id != null) 'id': id?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}
