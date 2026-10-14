import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show
        SchemaColumn,
        SchemaEnum,
        SchemaForeignKey,
        SchemaGraph,
        SchemaIndex,
        SchemaModule,
        SchemaTable;
import 'package:yaml/yaml.dart';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show SchemaExtractor;

/// Result of analyzing an uploaded Serverpod project.
class ProjectAnalysis {
  const ProjectAnalysis(
    this.graph, {
    this.warnings = const [],
    this.projectName,
    this.isValid = true,
    this.sourcePaths = const {},
    this.modelSources = const {},
  });

  final SchemaGraph graph;
  final Map<String, String> sourcePaths;
  final Map<String, String> modelSources;
  final List<String> warnings;
  final String? projectName;

  /// False when no usable source was found; an empty resolved schema is valid.
  final bool isValid;

  bool get isEmpty => graph.tables.isEmpty;
}

/// Analyzes an uploaded Serverpod project (a `.zip`) and builds a
/// [SchemaGraph].
///
/// Strategy, in order of preference:
///  1. the newest migration snapshot, preferring complete `definition.json`,
///  2. `definition_project.json` when a complete snapshot is unavailable,
///  3. `.spy.yaml` models as a fallback (tables, columns, `relation(parent=…)`).
abstract final class ProjectAnalyzer {
  static final _projectDef = RegExp(
    r'(^|/)migrations/\d+(?:-[a-z0-9-]+)?/definition_project\.json$',
  );
  static final _fullDef = RegExp(
    r'(^|/)migrations/\d+(?:-[a-z0-9-]+)?/definition\.json$',
  );

  static ProjectAnalysis analyzeZip(Uint8List bytes, {required String name}) {
    ProjectAnalysis rejected(String reason) =>
        ProjectAnalysis(_emptyGraph(name), isValid: false, warnings: [reason]);
    if (bytes.length > 20 * 1024 * 1024) {
      return rejected('ZIP input exceeds the 20 MiB limit.');
    }
    final projectDefs = <String, String>{};
    final fullDefs = <String, String>{};
    final spyFiles = <String, String>{};
    try {
      // Read metadata first. Do not let ZIP decoding eagerly inflate symlinks.
      final directory = ZipDirectory()..read(InputMemoryStream(bytes));
      if (directory.fileHeaders.length > 10000) {
        return rejected('ZIP contains more than 10,000 entries.');
      }
      var declaredTotal = 0;
      final seen = <String>{};
      for (final header in directory.fileHeaders) {
        final path = header.filename;
        if (path.endsWith('/')) continue;
        if (!_projectDef.hasMatch(path) &&
            !_fullDef.hasMatch(path) &&
            !path.endsWith('.spy.yaml') &&
            !path.endsWith('.spy.yml') &&
            !path.endsWith('.spy')) {
          continue;
        }
        if (path.startsWith('/') ||
            path.contains('\\') ||
            path.contains(':') ||
            path.codeUnits.any((code) => code < 32 || code == 127) ||
            path
                .split('/')
                .any((part) => part == '..' || part == '.' || part.isEmpty)) {
          return rejected('ZIP contains an unsafe schema path.');
        }
        if (!seen.add(path)) {
          return rejected('ZIP contains duplicate schema paths.');
        }
        if ((header.externalFileAttributes >> 16 & 0xf000) == 0xa000 ||
            header.generalPurposeBitFlag & 1 != 0) {
          return rejected(
            'Linked or encrypted schema entries are not supported.',
          );
        }
        final declared = header.uncompressedSize;
        declaredTotal += declared;
        if (declared < 0 ||
            declared > 8 * 1024 * 1024 ||
            declaredTotal > 32 * 1024 * 1024) {
          return rejected('Expanded schema exceeds the ZIP import size limit.');
        }
      }
      var actualTotal = 0;
      for (final header in directory.fileHeaders.where(
        (entry) => seen.contains(entry.filename),
      )) {
        final output = _BoundedSchemaOutput(8 * 1024 * 1024);
        header.file!.decompress(output);
        final contentBytes = output.getBytes();
        actualTotal += contentBytes.length;
        if (contentBytes.length != header.uncompressedSize ||
            actualTotal > 32 * 1024 * 1024) {
          return rejected(
            'ZIP schema size does not match its metadata or exceeds the limit.',
          );
        }
        final content = utf8.decode(contentBytes);
        final path = header.filename;
        if (_projectDef.hasMatch(path)) {
          projectDefs[path] = content;
        } else if (_fullDef.hasMatch(path)) {
          fullDefs[path] = content;
        } else {
          spyFiles[path] = content;
        }
      }
    } catch (_) {
      return rejected(
        'Invalid ZIP or expanded schema exceeds the import size limit.',
      );
    }

    // Prefer the complete, newest snapshot so framework/module relations remain
    // visible. Older migrations must not resurrect tables removed later.
    final serverRoots = {...projectDefs.keys, ...fullDefs.keys}.map((path) {
      final marker = path.indexOf('migrations/');
      return path.substring(0, marker);
    }).toSet();
    if (serverRoots.length > 1) {
      return ProjectAnalysis(
        _emptyGraph(name),
        isValid: false,
        warnings: const [
          'Multiple Serverpod server packages found. Upload a ZIP containing one server package.',
        ],
      );
    }
    final definitions = {...projectDefs, ...fullDefs};
    final paths = definitions.keys.toList()
      ..sort((a, b) {
        String version(String path) => path.split('/').reversed.skip(1).first;
        final byVersion = version(b).compareTo(version(a));
        if (byVersion != 0) return byVersion;
        return (fullDefs.containsKey(b) ? 1 : 0).compareTo(
          fullDefs.containsKey(a) ? 1 : 0,
        );
      });
    if (paths.isNotEmpty) {
      final path = paths.first;
      final graph = _tryDefinition(
        definitions[path]!,
        name,
        projectOnly: false,
      );
      if (graph != null) {
        final sources = _modelSources(graph, spyFiles);
        return ProjectAnalysis(
          _withModules(graph, name),
          sourcePaths: sources.$1,
          modelSources: sources.$2,
          warnings: fullDefs.containsKey(path)
              ? const []
              : const [
                  'Project-only migration: installed Serverpod modules and framework tables may be absent. Prefer definition.json for the complete schema.',
                ],
        );
      }
      return ProjectAnalysis(
        _emptyGraph(name),
        isValid: false,
        warnings: [
          'The newest migration definition is invalid: $path. Older snapshots were not loaded.',
        ],
      );
    }

    // 3. .spy.yaml fallback
    if (spyFiles.isNotEmpty) {
      return analyzeYamlFiles(spyFiles, name: name);
    }

    return ProjectAnalysis(
      _emptyGraph(name),
      isValid: false,
      warnings: const [
        'No Serverpod schema found (looked for migrations/*/definition*.json and *.spy.yaml).',
      ],
    );
  }

  /// Imports model declarations without requiring a ZIP. This is inference,
  /// not Serverpod's compiler: complete migration definitions are authoritative.
  static ProjectAnalysis analyzeYamlFiles(
    Map<String, String> files, {
    required String name,
  }) {
    if (files.length > 10000 ||
        files.values.any((source) => source.length > 1024 * 1024) ||
        files.values.fold<int>(0, (size, source) => size + source.length) >
            32 * 1024 * 1024) {
      return ProjectAnalysis(
        _emptyGraph(name),
        isValid: false,
        warnings: const ['YAML input exceeds the import size limit.'],
      );
    }
    final warnings = <String>[
      'YAML inference is partial: implicit relation columns, join tables, module dependencies and compiler-specific mappings may be absent. Default id columns are inferred as bigint.',
    ];
    final graph = _fromSpyFiles(files, name, warnings);
    final sources = _modelSources(graph, files);
    return ProjectAnalysis(
      _withModules(graph, name),
      warnings: warnings,
      sourcePaths: sources.$1,
      modelSources: sources.$2,
    );
  }

  static (Map<String, String>, Map<String, String>) _modelSources(
    SchemaGraph graph,
    Map<String, String> files,
  ) {
    final ids = graph.tables.map((table) => table.name).toSet();
    final paths = <String, String>{}, sources = <String, String>{};
    for (final entry in files.entries) {
      final Object? document;
      try {
        document = loadYaml(entry.value);
      } catch (_) {
        continue;
      }
      if (document is! YamlMap || document['table'] is! String) continue;
      final name = document['table'] as String;
      final id = name.contains('.')
          ? name
          : '${document['schema'] ?? 'public'}.$name';
      if (!ids.contains(id) ||
          entry.key.startsWith('/') ||
          entry.key.split('/').contains('..')) {
        continue;
      }
      paths[id] = entry.key;
      sources[id] = entry.value;
    }
    return (paths, sources);
  }

  static SchemaGraph? _tryDefinition(
    String content,
    String source, {
    required bool projectOnly,
  }) {
    try {
      return SchemaExtractor.fromDefinitionJson(
        content,
        source: source,
        projectOnly: projectOnly,
      );
    } catch (_) {
      return null;
    }
  }

  static SchemaGraph _emptyGraph(String source) => SchemaGraph(
    source: source,
    generatedAt: DateTime.now().toUtc(),
    modules: const [],
    tables: const [],
    enums: const [],
  );

  /// Recomputes module counts / ordering (used after spy parsing).
  static SchemaGraph _withModules(SchemaGraph graph, String source) {
    final counts = <String, int>{};
    for (final table in graph.tables) {
      counts[table.module] = (counts[table.module] ?? 0) + 1;
    }
    final modules =
        counts.entries
            .map((e) => SchemaModule(name: e.key, tableCount: e.value))
            .toList()
          ..sort((a, b) => b.tableCount.compareTo(a.tableCount));
    return SchemaGraph(
      source: source,
      generatedAt: graph.generatedAt,
      modules: modules,
      tables: graph.tables
          .map(
            (table) => table.copyWith(
              name: table.name.contains('.')
                  ? table.name
                  : '${table.schema}.${table.name}',
              foreignKeys: table.foreignKeys
                  .map(
                    (key) => key.copyWith(
                      refTable: key.refTable.contains('.')
                          ? key.refTable
                          : '${table.schema}.${key.refTable}',
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      enums: graph.enums,
    );
  }

  static SchemaGraph _fromSpyFiles(
    Map<String, String> files,
    String source,
    List<String> warnings,
  ) {
    final tables = <SchemaTable>[];
    final enums = <SchemaEnum>[];

    for (final entry in files.entries) {
      final Object? doc;
      try {
        doc = loadYaml(entry.value);
      } catch (error) {
        throw FormatException('Invalid Serverpod YAML in ${entry.key}: $error');
      }
      if (doc is! YamlMap) {
        warnings.add('${entry.key}: expected a model mapping.');
        continue;
      }

      if (doc['enum'] != null) {
        final values = (doc['values'] as YamlList?)?.map((v) => '$v').toList();
        if (values != null) {
          enums.add(SchemaEnum(name: '${doc['enum']}', values: values));
        }
        continue;
      }

      final tableName = doc['table']?.toString();
      if (tableName == null) continue; // non-table model
      final fields = doc['fields'];
      if (fields is! YamlMap) continue;

      final columns = <SchemaColumn>[];
      if (!fields.containsKey('id')) {
        columns.add(
          SchemaColumn(
            name: 'id',
            fieldName: 'id',
            dartType: 'int',
            dbType: 'bigint',
            isNullable: false,
            isPrimaryKey: true,
            isUnique: true,
          ),
        );
      }
      final foreignKeys = <SchemaForeignKey>[];

      for (final field in fields.entries) {
        final name = '${field.key}';
        var type = 'String';
        var modifiers = '';
        final spec = field.value;
        if (spec is String) {
          final parts = spec.split(',');
          type = parts.first.trim();
          modifiers = parts.skip(1).join(',');
        } else if (spec is YamlMap) {
          type = '${spec['type'] ?? 'String'}';
          modifiers = spec.toString();
        }
        if (modifiers.contains('!persist')) continue;
        if (!type.startsWith('List<') && _dbTypeFor(type) == 'unknown') {
          warnings.add(
            '${entry.key}: $name ($type) needs compiler resolution and was omitted.',
          );
          continue;
        }
        final nullable = name != 'id' && type.endsWith('?');

        final parent = RegExp(r'parent\s*=\s*([A-Za-z0-9_.]+)')
            .firstMatch(modifiers)
            ?.group(1);
        if (parent != null) {
          foreignKeys.add(
            SchemaForeignKey(
              name: '',
              columns: [name],
              refTable: parent,
              refColumns: const ['id'],
              onDelete: 'noAction',
              onUpdate: 'noAction',
            ),
          );
        }

        columns.add(
          SchemaColumn(
            name: name,
            fieldName: name,
            dartType: type,
            dbType: _dbTypeFor(type),
            isNullable: nullable,
            isPrimaryKey: name == 'id',
            isUnique: name == 'id' || modifiers.contains('unique'),
            defaultValue: null,
          ),
        );
      }

      final indexes = <SchemaIndex>[];
      final rawIndexes = doc['indexes'];
      if (rawIndexes is YamlMap) {
        for (final item in rawIndexes.entries) {
          final index = item.value;
          if (index is! YamlMap) continue;
          final rawFields = index['fields'];
          final names = rawFields is YamlList
              ? rawFields.map((v) => '$v').toList()
              : '$rawFields'.split(',').map((v) => v.trim()).toList();
          indexes.add(
            SchemaIndex(
              name: '${item.key}',
              columns: names,
              unique: index['unique'] == true,
              type: index['type']?.toString() ?? 'btree',
            ),
          );
        }
      }
      tables.add(
        SchemaTable(
          name: tableName,
          className: '${doc['class']}',
          schema: 'public',
          module: 'project',
          documentation: null,
          columns: columns,
          foreignKeys: foreignKeys,
          indexes: indexes,
        ),
      );
    }

    final aliases = <String, String>{
      for (final table in tables) table.className: table.name,
      for (final table in tables) table.name: table.name,
    };
    for (var i = 0; i < tables.length; i++) {
      final table = tables[i];
      tables[i] = table.copyWith(
        foreignKeys: table.foreignKeys.map((key) {
          final target = aliases[key.refTable];
          if (target == null) {
            warnings.add(
              '${table.name}: parent ${key.refTable} is not present in these YAML files.',
            );
          }
          return key.copyWith(refTable: target ?? key.refTable);
        }).toList(),
        columns: table.columns
            .map(
              (column) => column.copyWith(
                isUnique:
                    column.isUnique ||
                    table.indexes.any(
                      (index) =>
                          index.unique &&
                          index.columns.length == 1 &&
                          index.columns.single == column.name,
                    ),
              ),
            )
            .toList(),
      );
    }
    tables.sort((a, b) => a.name.compareTo(b.name));
    return SchemaGraph(
      source: source,
      generatedAt: DateTime.now().toUtc(),
      modules: const [],
      tables: tables,
      enums: enums,
    );
  }

  static String _dbTypeFor(String dartType) {
    final t = dartType.replaceAll('?', '').trim();
    if (t.startsWith('List<')) return 'array';
    return switch (t) {
      'UuidValue' => 'uuid',
      'String' => 'text',
      'int' => 'int',
      'BigInt' => 'bigint',
      'double' => 'double',
      'bool' => 'boolean',
      'DateTime' => 'timestamp',
      'Duration' => 'interval',
      'ByteData' => 'bytea',
      'Uri' => 'text',
      _ => 'unknown',
    };
  }
}

/// The declared ZIP size is untrusted; enforce the limit on actual output too.
final class _BoundedSchemaOutput extends OutputMemoryStream {
  _BoundedSchemaOutput(this.maximum);
  final int maximum;
  void _check(int extra) {
    if (extra < 0 || length + extra > maximum) {
      throw const FormatException(
        'Expanded schema exceeds the import size limit.',
      );
    }
  }

  @override
  void writeByte(int value) {
    _check(1);
    super.writeByte(value);
  }

  @override
  void writeBytes(List<int> bytes, {int? length}) {
    _check(length ?? bytes.length);
    super.writeBytes(bytes, length: length);
  }

  @override
  void writeStream(InputStream stream) {
    _check(stream.length);
    super.writeStream(stream);
  }
}
