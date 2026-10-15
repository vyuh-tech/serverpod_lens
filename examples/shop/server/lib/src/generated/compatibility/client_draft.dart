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

abstract class ShopClientDraft
    implements _is.SerializableModel, _is.ProtocolSerialization {
  ShopClientDraft._({this.id, required this.title});

  factory ShopClientDraft({int? id, required String title}) =
      _ShopClientDraftImpl;

  factory ShopClientDraft.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopClientDraft(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  /// Returns a shallow copy of this [ShopClientDraft]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ShopClientDraft copyWith({int? id, String? title});
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopClientDraft',
      if (id != null) 'id': id,
      'title': title,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopClientDraft',
      if (id != null) 'id': id,
      'title': title,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopClientDraftImpl extends ShopClientDraft {
  _ShopClientDraftImpl({int? id, required String title})
    : super._(id: id, title: title);

  /// Returns a shallow copy of this [ShopClientDraft]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ShopClientDraft copyWith({Object? id = _Undefined, String? title}) {
    return ShopClientDraft(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
    );
  }
}
