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

abstract class SchemaColumn
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SchemaColumn._({
    required this.name,
    required this.fieldName,
    required this.dartType,
    required this.dbType,
    required this.isNullable,
    required this.isPrimaryKey,
    required this.isUnique,
    this.defaultValue,
  });

  factory SchemaColumn({
    required String name,
    required String fieldName,
    required String dartType,
    required String dbType,
    required bool isNullable,
    required bool isPrimaryKey,
    required bool isUnique,
    String? defaultValue,
  }) = _SchemaColumnImpl;

  factory SchemaColumn.fromJson(Map<String, dynamic> jsonSerialization) {
    return SchemaColumn(
      name: jsonSerialization['name'] as String,
      fieldName: jsonSerialization['fieldName'] as String,
      dartType: jsonSerialization['dartType'] as String,
      dbType: jsonSerialization['dbType'] as String,
      isNullable: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isNullable'],
      ),
      isPrimaryKey: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isPrimaryKey'],
      ),
      isUnique: _isc.BoolJsonExtension.fromJson(jsonSerialization['isUnique']),
      defaultValue: jsonSerialization['defaultValue'] as String?,
    );
  }

  String name;

  String fieldName;

  String dartType;

  String dbType;

  bool isNullable;

  bool isPrimaryKey;

  bool isUnique;

  String? defaultValue;

  /// Returns a shallow copy of this [SchemaColumn]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SchemaColumn copyWith({
    String? name,
    String? fieldName,
    String? dartType,
    String? dbType,
    bool? isNullable,
    bool? isPrimaryKey,
    bool? isUnique,
    String? defaultValue,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SchemaColumn',
      'name': name,
      'fieldName': fieldName,
      'dartType': dartType,
      'dbType': dbType,
      'isNullable': isNullable,
      'isPrimaryKey': isPrimaryKey,
      'isUnique': isUnique,
      if (defaultValue != null) 'defaultValue': defaultValue,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SchemaColumn',
      'name': name,
      'fieldName': fieldName,
      'dartType': dartType,
      'dbType': dbType,
      'isNullable': isNullable,
      'isPrimaryKey': isPrimaryKey,
      'isUnique': isUnique,
      if (defaultValue != null) 'defaultValue': defaultValue,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SchemaColumnImpl extends SchemaColumn {
  _SchemaColumnImpl({
    required String name,
    required String fieldName,
    required String dartType,
    required String dbType,
    required bool isNullable,
    required bool isPrimaryKey,
    required bool isUnique,
    String? defaultValue,
  }) : super._(
         name: name,
         fieldName: fieldName,
         dartType: dartType,
         dbType: dbType,
         isNullable: isNullable,
         isPrimaryKey: isPrimaryKey,
         isUnique: isUnique,
         defaultValue: defaultValue,
       );

  /// Returns a shallow copy of this [SchemaColumn]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SchemaColumn copyWith({
    String? name,
    String? fieldName,
    String? dartType,
    String? dbType,
    bool? isNullable,
    bool? isPrimaryKey,
    bool? isUnique,
    Object? defaultValue = _Undefined,
  }) {
    return SchemaColumn(
      name: name ?? this.name,
      fieldName: fieldName ?? this.fieldName,
      dartType: dartType ?? this.dartType,
      dbType: dbType ?? this.dbType,
      isNullable: isNullable ?? this.isNullable,
      isPrimaryKey: isPrimaryKey ?? this.isPrimaryKey,
      isUnique: isUnique ?? this.isUnique,
      defaultValue: defaultValue is String? ? defaultValue : this.defaultValue,
    );
  }
}
