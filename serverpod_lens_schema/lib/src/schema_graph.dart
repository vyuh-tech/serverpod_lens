/// Plain Dart schema contract shared by importers and the Flutter viewer.
const _unset = Object();

class SchemaColumn {
  const SchemaColumn({
    required this.name,
    required this.fieldName,
    required this.dartType,
    required this.dbType,
    required this.isNullable,
    required this.isPrimaryKey,
    required this.isUnique,
    this.defaultValue,
  });
  final String name;
  final String fieldName;
  final String dartType;
  final String dbType;
  final bool isNullable;
  final bool isPrimaryKey;
  final bool isUnique;
  final String? defaultValue;
  factory SchemaColumn.fromJson(Map<String, dynamic> json) => SchemaColumn(
    name: json['name'] as String,
    fieldName: json['fieldName'] as String,
    dartType: json['dartType'] as String,
    dbType: json['dbType'] as String,
    isNullable: json['isNullable'] as bool,
    isPrimaryKey: json['isPrimaryKey'] as bool,
    isUnique: json['isUnique'] as bool,
    defaultValue: json['defaultValue'] as String?,
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaColumn',
    'name': name,
    'fieldName': fieldName,
    'dartType': dartType,
    'dbType': dbType,
    'isNullable': isNullable,
    'isPrimaryKey': isPrimaryKey,
    'isUnique': isUnique,
    'defaultValue': defaultValue,
  };
  SchemaColumn copyWith({
    String? name,
    String? fieldName,
    String? dartType,
    String? dbType,
    bool? isNullable,
    bool? isPrimaryKey,
    bool? isUnique,
    Object? defaultValue = _unset,
  }) => SchemaColumn(
    name: name ?? this.name,
    fieldName: fieldName ?? this.fieldName,
    dartType: dartType ?? this.dartType,
    dbType: dbType ?? this.dbType,
    isNullable: isNullable ?? this.isNullable,
    isPrimaryKey: isPrimaryKey ?? this.isPrimaryKey,
    isUnique: isUnique ?? this.isUnique,
    defaultValue: identical(defaultValue, _unset)
        ? this.defaultValue
        : defaultValue as String?,
  );
}

class SchemaEnum {
  const SchemaEnum({required this.name, required this.values});
  final String name;
  final List<String> values;
  factory SchemaEnum.fromJson(Map<String, dynamic> json) => SchemaEnum(
    name: json['name'] as String,
    values: (json['values'] as List? ?? []).map((v) => v as String).toList(),
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaEnum',
    'name': name,
    'values': values,
  };
  SchemaEnum copyWith({String? name, List<String>? values}) =>
      SchemaEnum(name: name ?? this.name, values: values ?? this.values);
}

class SchemaForeignKey {
  const SchemaForeignKey({
    required this.name,
    required this.columns,
    required this.refTable,
    required this.refColumns,
    required this.onDelete,
    required this.onUpdate,
  });
  final String name;
  final List<String> columns;
  final String refTable;
  final List<String> refColumns;
  final String onDelete;
  final String onUpdate;
  factory SchemaForeignKey.fromJson(Map<String, dynamic> json) =>
      SchemaForeignKey(
        name: json['name'] as String,
        columns: (json['columns'] as List? ?? [])
            .map((v) => v as String)
            .toList(),
        refTable: json['refTable'] as String,
        refColumns: (json['refColumns'] as List? ?? [])
            .map((v) => v as String)
            .toList(),
        onDelete: json['onDelete'] as String,
        onUpdate: json['onUpdate'] as String,
      );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaForeignKey',
    'name': name,
    'columns': columns,
    'refTable': refTable,
    'refColumns': refColumns,
    'onDelete': onDelete,
    'onUpdate': onUpdate,
  };
  SchemaForeignKey copyWith({
    String? name,
    List<String>? columns,
    String? refTable,
    List<String>? refColumns,
    String? onDelete,
    String? onUpdate,
  }) => SchemaForeignKey(
    name: name ?? this.name,
    columns: columns ?? this.columns,
    refTable: refTable ?? this.refTable,
    refColumns: refColumns ?? this.refColumns,
    onDelete: onDelete ?? this.onDelete,
    onUpdate: onUpdate ?? this.onUpdate,
  );
}

class SchemaIndex {
  const SchemaIndex({
    required this.name,
    required this.columns,
    required this.unique,
    required this.type,
    this.predicate,
  });
  final String name;
  final List<String> columns;
  final bool unique;
  final String type;
  final String? predicate;
  factory SchemaIndex.fromJson(Map<String, dynamic> json) => SchemaIndex(
    name: json['name'] as String,
    columns: (json['columns'] as List? ?? []).map((v) => v as String).toList(),
    unique: json['unique'] as bool,
    type: json['type'] as String,
    predicate: json['predicate'] as String?,
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaIndex',
    'name': name,
    'columns': columns,
    'unique': unique,
    'type': type,
    'predicate': predicate,
  };
  SchemaIndex copyWith({
    String? name,
    List<String>? columns,
    bool? unique,
    String? type,
    Object? predicate = _unset,
  }) => SchemaIndex(
    name: name ?? this.name,
    columns: columns ?? this.columns,
    unique: unique ?? this.unique,
    type: type ?? this.type,
    predicate: identical(predicate, _unset)
        ? this.predicate
        : predicate as String?,
  );
}

class SchemaModule {
  const SchemaModule({required this.name, required this.tableCount});
  final String name;
  final int tableCount;
  factory SchemaModule.fromJson(Map<String, dynamic> json) => SchemaModule(
    name: json['name'] as String,
    tableCount: json['tableCount'] as int,
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaModule',
    'name': name,
    'tableCount': tableCount,
  };
  SchemaModule copyWith({String? name, int? tableCount}) => SchemaModule(
    name: name ?? this.name,
    tableCount: tableCount ?? this.tableCount,
  );
}

class SchemaTable {
  const SchemaTable({
    required this.name,
    required this.className,
    required this.schema,
    required this.module,
    this.documentation,
    this.definition,
    required this.columns,
    required this.foreignKeys,
    required this.indexes,
  });
  final String name;
  final String className;
  final String schema;
  final String module;
  final String? documentation;

  /// Complete resolved table metadata, including newer Serverpod attributes.
  final String? definition;
  final List<SchemaColumn> columns;
  final List<SchemaForeignKey> foreignKeys;
  final List<SchemaIndex> indexes;
  factory SchemaTable.fromJson(Map<String, dynamic> json) => SchemaTable(
    name: json['name'] as String,
    className: json['className'] as String,
    schema: json['schema'] as String,
    module: json['module'] as String,
    documentation: json['documentation'] as String?,
    definition: json['definition'] as String?,
    columns: (json['columns'] as List? ?? [])
        .map((v) => SchemaColumn.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList(),
    foreignKeys: (json['foreignKeys'] as List? ?? [])
        .map(
          (v) => SchemaForeignKey.fromJson(Map<String, dynamic>.from(v as Map)),
        )
        .toList(),
    indexes: (json['indexes'] as List? ?? [])
        .map((v) => SchemaIndex.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList(),
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaTable',
    'name': name,
    'className': className,
    'schema': schema,
    'module': module,
    'documentation': documentation,
    if (definition != null) 'definition': definition,
    'columns': columns.map((v) => v.toJson()).toList(),
    'foreignKeys': foreignKeys.map((v) => v.toJson()).toList(),
    'indexes': indexes.map((v) => v.toJson()).toList(),
  };
  SchemaTable copyWith({
    String? name,
    String? className,
    String? schema,
    String? module,
    Object? documentation = _unset,
    String? definition,
    List<SchemaColumn>? columns,
    List<SchemaForeignKey>? foreignKeys,
    List<SchemaIndex>? indexes,
  }) => SchemaTable(
    name: name ?? this.name,
    className: className ?? this.className,
    schema: schema ?? this.schema,
    module: module ?? this.module,
    definition: definition ?? this.definition,
    documentation: identical(documentation, _unset)
        ? this.documentation
        : documentation as String?,
    columns: columns ?? this.columns,
    foreignKeys: foreignKeys ?? this.foreignKeys,
    indexes: indexes ?? this.indexes,
  );
}

class SchemaGraph {
  const SchemaGraph({
    required this.source,
    required this.generatedAt,
    required this.modules,
    required this.tables,
    required this.enums,
  });
  final String source;
  final DateTime generatedAt;
  final List<SchemaModule> modules;
  final List<SchemaTable> tables;
  final List<SchemaEnum> enums;
  factory SchemaGraph.fromJson(Map<String, dynamic> json) => SchemaGraph(
    source: json['source'] as String,
    generatedAt: DateTime.parse(json['generatedAt'] as String),
    modules: (json['modules'] as List? ?? [])
        .map((v) => SchemaModule.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList(),
    tables: (json['tables'] as List? ?? [])
        .map((v) => SchemaTable.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList(),
    enums: (json['enums'] as List? ?? [])
        .map((v) => SchemaEnum.fromJson(Map<String, dynamic>.from(v as Map)))
        .toList(),
  );
  Map<String, dynamic> toJson() => {
    '__className__': 'SchemaGraph',
    'source': source,
    'generatedAt': generatedAt.toUtc().toIso8601String(),
    'modules': modules.map((v) => v.toJson()).toList(),
    'tables': tables.map((v) => v.toJson()).toList(),
    'enums': enums.map((v) => v.toJson()).toList(),
  };
  SchemaGraph copyWith({
    String? source,
    DateTime? generatedAt,
    List<SchemaModule>? modules,
    List<SchemaTable>? tables,
    List<SchemaEnum>? enums,
  }) => SchemaGraph(
    source: source ?? this.source,
    generatedAt: generatedAt ?? this.generatedAt,
    modules: modules ?? this.modules,
    tables: tables ?? this.tables,
    enums: enums ?? this.enums,
  );
}

/// A model path is relative to its owning project, never a URL or filesystem escape.
bool isSafeModelPath(String path) =>
    path.isNotEmpty &&
    !path.startsWith('/') &&
    !path.contains('\\') &&
    !path.contains(':') &&
    !path.codeUnits.any((code) => code < 32 || code == 127) &&
    !path
        .split('/')
        .any((part) => part == '..' || part == '.' || part.isEmpty) &&
    path.endsWith('.spy.yaml');
