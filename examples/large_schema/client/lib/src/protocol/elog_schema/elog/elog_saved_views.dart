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

abstract class ElogSavedViews
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogSavedViews._({
    this.id,
    required this.entityType,
    required this.userId,
    required this.name,
    required this.filter,
    required this.sort,
    required this.layout,
    required this.isFavorite,
    required this.isDefault,
    this.createdAt,
    this.updatedAt,
  });

  factory ElogSavedViews({
    _isc.UuidValue? id,
    required String entityType,
    required _isc.UuidValue userId,
    required String name,
    required String filter,
    required String sort,
    required String layout,
    required bool isFavorite,
    required bool isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ElogSavedViewsImpl;

  factory ElogSavedViews.fromJson(Map<String, dynamic> jsonSerialization) {
    return ElogSavedViews(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      entityType: jsonSerialization['entityType'] as String,
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      name: jsonSerialization['name'] as String,
      filter: jsonSerialization['filter'] as String,
      sort: jsonSerialization['sort'] as String,
      layout: jsonSerialization['layout'] as String,
      isFavorite: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isFavorite'],
      ),
      isDefault: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isDefault'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String entityType;

  _isc.UuidValue userId;

  String name;

  String filter;

  String sort;

  String layout;

  bool isFavorite;

  bool isDefault;

  DateTime? createdAt;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [ElogSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogSavedViews copyWith({
    _isc.UuidValue? id,
    String? entityType,
    _isc.UuidValue? userId,
    String? name,
    String? filter,
    String? sort,
    String? layout,
    bool? isFavorite,
    bool? isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogSavedViews',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'userId': userId.toJson(),
      'name': name,
      'filter': filter,
      'sort': sort,
      'layout': layout,
      'isFavorite': isFavorite,
      'isDefault': isDefault,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogSavedViews',
      if (id != null) 'id': id?.toJson(),
      'entityType': entityType,
      'userId': userId.toJson(),
      'name': name,
      'filter': filter,
      'sort': sort,
      'layout': layout,
      'isFavorite': isFavorite,
      'isDefault': isDefault,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogSavedViewsImpl extends ElogSavedViews {
  _ElogSavedViewsImpl({
    _isc.UuidValue? id,
    required String entityType,
    required _isc.UuidValue userId,
    required String name,
    required String filter,
    required String sort,
    required String layout,
    required bool isFavorite,
    required bool isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         entityType: entityType,
         userId: userId,
         name: name,
         filter: filter,
         sort: sort,
         layout: layout,
         isFavorite: isFavorite,
         isDefault: isDefault,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ElogSavedViews]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogSavedViews copyWith({
    Object? id = _Undefined,
    String? entityType,
    _isc.UuidValue? userId,
    String? name,
    String? filter,
    String? sort,
    String? layout,
    bool? isFavorite,
    bool? isDefault,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return ElogSavedViews(
      id: id is _isc.UuidValue? ? id : this.id,
      entityType: entityType ?? this.entityType,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      filter: filter ?? this.filter,
      sort: sort ?? this.sort,
      layout: layout ?? this.layout,
      isFavorite: isFavorite ?? this.isFavorite,
      isDefault: isDefault ?? this.isDefault,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
