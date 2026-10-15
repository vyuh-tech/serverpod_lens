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
import '../compatibility/profile.dart' as _i09u2zl9;
import '../compatibility/team.dart' as _icj80dj0;

abstract class ShopMember
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ShopMember._({
    this.id,
    required this.name,
    required this.teamId,
    this.team,
    this.profileId,
    this.profile,
  });

  factory ShopMember({
    int? id,
    required String name,
    required int teamId,
    _icj80dj0.ShopTeam? team,
    int? profileId,
    _i09u2zl9.ShopProfile? profile,
  }) = _ShopMemberImpl;

  factory ShopMember.fromJson(Map<String, dynamic> jsonSerialization) {
    return ShopMember(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      teamId: jsonSerialization['teamId'] as int,
      team: jsonSerialization['team'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_icj80dj0.ShopTeam>(
              jsonSerialization['team'],
            ),
      profileId: jsonSerialization['profileId'] as int?,
      profile: jsonSerialization['profile'] == null
          ? null
          : _id88xlko.Protocol().deserialize<_i09u2zl9.ShopProfile>(
              jsonSerialization['profile'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int teamId;

  _icj80dj0.ShopTeam? team;

  int? profileId;

  _i09u2zl9.ShopProfile? profile;

  /// Returns a shallow copy of this [ShopMember]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ShopMember copyWith({
    int? id,
    String? name,
    int? teamId,
    _icj80dj0.ShopTeam? team,
    int? profileId,
    _i09u2zl9.ShopProfile? profile,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ShopMember',
      if (id != null) 'id': id,
      'name': name,
      'teamId': teamId,
      if (team != null) 'team': team?.toJson(),
      if (profileId != null) 'profileId': profileId,
      if (profile != null) 'profile': profile?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ShopMember',
      if (id != null) 'id': id,
      'name': name,
      'teamId': teamId,
      if (team != null) 'team': team?.toJsonForProtocol(),
      if (profileId != null) 'profileId': profileId,
      if (profile != null) 'profile': profile?.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShopMemberImpl extends ShopMember {
  _ShopMemberImpl({
    int? id,
    required String name,
    required int teamId,
    _icj80dj0.ShopTeam? team,
    int? profileId,
    _i09u2zl9.ShopProfile? profile,
  }) : super._(
         id: id,
         name: name,
         teamId: teamId,
         team: team,
         profileId: profileId,
         profile: profile,
       );

  /// Returns a shallow copy of this [ShopMember]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ShopMember copyWith({
    Object? id = _Undefined,
    String? name,
    int? teamId,
    Object? team = _Undefined,
    Object? profileId = _Undefined,
    Object? profile = _Undefined,
  }) {
    return ShopMember(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      teamId: teamId ?? this.teamId,
      team: team is _icj80dj0.ShopTeam? ? team : this.team?.copyWith(),
      profileId: profileId is int? ? profileId : this.profileId,
      profile: profile is _i09u2zl9.ShopProfile?
          ? profile
          : this.profile?.copyWith(),
    );
  }
}
