import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_imports/serverpod_lens_imports.dart';

void main() {
  test(
    'real PostgreSQL AST preserves composite keys, enums, arrays and ALTER',
    () {
      final ast = jsonDecode(
        File('test/fixtures/postgres.json').readAsStringSync(),
      ) as Map<String, dynamic>;
      final result = PostgresSchemaImporter.fromAst(
        ast,
        source: 'regression.sql',
      );
      expect(result.warnings, isEmpty);
      final parent = result.graph.tables.first;
      expect(parent.name, 'app.parent');
      expect(
        parent.columns.every(
          (c) => c.isPrimaryKey && !c.isNullable && !c.isUnique,
        ),
        isTrue,
      );
      final child = result.graph.tables.last;
      expect(child.foreignKeys.single.refColumns, ['tenant', 'id']);
      expect(child.foreignKeys.single.onDelete, 'cascade');
      expect(child.columns.first.isUnique, isTrue);
      expect(
        child.columns.firstWhere((c) => c.name == 'title').defaultValue,
        isNull,
      );
      expect(
        child.columns.firstWhere((c) => c.name == 'title').isUnique,
        isFalse,
      );
      expect(
        child.columns.firstWhere((c) => c.name == 'tags').dbType,
        'text[]',
      );
      expect(
        child.columns.firstWhere((c) => c.name == 'active').isNullable,
        isFalse,
      );
      expect(
        child.columns.firstWhere((c) => c.name == 'active').defaultValue,
        'true',
      );
      expect(child.indexes.last.predicate, 'parent_id > 0');
      expect(result.graph.enums.single.values, ['new', 'done']);
      expect(
        SchemaGraph.fromJson(jsonDecode(jsonEncode(result.graph.toJson())))
            .toJson(),
        result.graph.toJson(),
      );
    },
  );
  test('unsupported statements and absent FK targets are disclosed', () {
    final ast = jsonDecode(
      File('test/fixtures/postgres.json').readAsStringSync(),
    ) as Map<String, dynamic>;
    (ast['stmts'] as List).removeAt(1);
    (ast['stmts'] as List).add({
      'stmt': {'DropStmt': {}},
    });
    final result = PostgresSchemaImporter.fromAst(ast, source: 'partial.sql');
    expect(result.isPartial, isTrue);
    expect(result.warnings.join('\n'), contains('absent table app.parent'));
    expect(result.warnings.join('\n'), contains('DropStmt'));
  });
  test(
    'nested schema declarations are disclosed rather than assigned to public',
    () {
      final result = PostgresSchemaImporter.fromAst({
        'stmts': [
          {
            'stmt': {
              'CreateSchemaStmt': {
                'schemaname': 'app',
                'schemaElts': [
                  {
                    'CreateStmt': {
                      'relation': {'relname': 'nested'},
                    },
                  },
                ],
              },
            },
          },
        ],
      }, source: 'nested');
      expect(result.graph.tables, isEmpty);
      expect(result.warnings.single, contains('Nested CREATE SCHEMA'));
    },
  );
  test('copyWith can clear nullable model metadata', () {
    const column = SchemaColumn(
      name: 'id',
      fieldName: 'id',
      dartType: 'int',
      dbType: 'bigint',
      isNullable: false,
      isPrimaryKey: true,
      isUnique: true,
      defaultValue: '42',
    );
    expect(column.copyWith().defaultValue, '42');
    expect(column.copyWith(defaultValue: null).defaultValue, isNull);
  });
  test('YAML inference resolves parent classes and reports compiler-dependent fields', () {
    final result = ProjectAnalyzer.analyzeYamlFiles({
      'parent.spy.yaml':
          'class: Parent\ntable: parents\nfields:\n  label: String\n',
      'child.spy.yaml': 'class: Child\ntable: children\nfields:\n  parentId: int, relation(parent=Parent)\n  transient: String, !persist\n  unresolved: Parent\nindexes:\n  parent_unique:\n    fields: parentId\n    unique: true\n',
    }, name: 'models');
    final child = result.graph.tables.first;
    expect(child.columns.first.name, 'id');
    expect(child.columns.map((c) => c.name), ['id', 'parentId']);
    expect(child.columns.last.isUnique, isTrue);
    expect(child.foreignKeys.single.refTable, 'public.parents');
    expect(result.warnings.join('\n'), contains('unresolved'));
    expect(result.warnings.first, contains('partial'));
    expect(
      () => ProjectAnalyzer.analyzeYamlFiles({
        'broken.spy.yaml': 'fields: [',
      }, name: 'bad'),
      throwsA(
        isA<FormatException>().having(
          (e) => e.message,
          'filename',
          contains('broken.spy.yaml'),
        ),
      ),
    );
  });
}
