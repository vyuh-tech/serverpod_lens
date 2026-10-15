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
import 'package:shop_client/src/protocol/protocol.dart' as _id88xlko;
import '../compatibility/member.dart' as _inil7hhp;

abstract class ShopTeam
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopTeam._({this.id, required this.name, this.members});

  factory ShopTeam({
    int? id,
    required String name,
    List<_inil7hhp.ShopMember>? members,
  }) = _ShopTeamImpl;

  factory ShopTeam.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopTeam(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      members: jsonSerialization['members'] == null
          ? null
          : _id88xlko.Protocol().deserialize<List<_inil7hhp.ShopMember>>(
              jsonSerialization['members'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  List<_inil7hhp.ShopMember>? members;

  /// Returns a shallow copy of this [ShopTeam]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopTeam copyWith({
    int? id,
    String? name,
    List<_inil7hhp.ShopMember>? members,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopTeam',
      if (id != null) 'id': id,
      'name': name,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopTeam',
      if (id != null) 'id': id,
      'name': name,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopTeamImpl extends ShopTeam {
  _ShopTeamImpl({
    int? id,
    required String name,
    List<_inil7hhp.ShopMember>? members,
  }) : super._(id: id, name: name, members: members);

  /// Returns a shallow copy of this [ShopTeam]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopTeam copyWith({
    Object? id = _Undefined,
    String? name,
    Object? members = _Undefined,
  }) {
    return ShopTeam(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      members: members is List<_inil7hhp.ShopMember>?
          ? members
          : this.members?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
