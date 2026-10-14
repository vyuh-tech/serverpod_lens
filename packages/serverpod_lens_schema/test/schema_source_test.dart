import 'dart:io';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:serverpod_lens_schema/io.dart';
import 'package:test/test.dart';

Map<String, dynamic> table({
  String name = 'customers',
  String schema = 'public',
}) => {
  'name': name,
  'schema': schema,
  'module': 'shop',
  'columns': [
    {'name': 'id', 'columnType': 'bigint', 'isNullable': false},
  ],
  'foreignKeys': [],
  'indexes': [],
};
void main() {
  test('one extraction interface serves distinct hosts and identities', () {
    for (final project in ['shop', 'large_schema']) {
      final source = LensSchemaSource(projectId: project);
      final result = source.read([table()]);
      expect(result.projectId, project);
      expect(result.graph!.tables.single.name, 'public.customers');
      expect(result.toJson()['graph'], isA<Map<String, dynamic>>());
    }
  });
  test('unchanged revisions omit graph and source payloads', () {
    final source = LensSchemaSource(projectId: 'shop');
    final first = source.read(
      [table()],
      sourcePaths: {'public.customers': 'lib/src/models/customer.spy.yaml'},
      modelSources: {'public.customers': 'class: Customer'},
    );
    final second = source.read(
      [table()],
      knownRevision: first.revision,
      sourcePaths: {'public.customers': 'lib/src/models/customer.spy.yaml'},
      modelSources: {'public.customers': 'class: Customer'},
    );
    expect(second.revision, first.revision);
    expect(second.graph, isNull);
    expect(second.modelSources, isNull);
    final changed = source.read([table(name: 'orders')]);
    expect(changed.revision, isNot(first.revision));
  });
  test(
    'module duplication is deduplicated and schema identities remain distinct',
    () {
      final result = LensSchemaSource(projectId: 'shop')
          .read([table(), table(), table(schema: 'tenant')]);
      expect(result.graph!.tables.length, 2);
      expect(
        result.graph!.tables.map((table) => table.name),
        containsAll(['public.customers', 'tenant.customers']),
      );
    },
  );
  test('host identity and unsafe source paths are rejected', () {
    expect(() => LensSchemaSource(projectId: '../secret'), throwsArgumentError);
    final result = LensSchemaSource(projectId: 'shop').read(
      [table()],
      sourcePaths: {'public.customers': '../secret'},
      modelSources: {'public.customers': 'private'},
    );
    expect(result.sourcePaths, isEmpty);
    expect(result.modelSources, isEmpty);
  });
  test(
    'source index supports models outside src and prunes generated files',
    () {
      final root = Directory.systemTemp.createTempSync('lens-index-');
      addTearDown(() => root.deleteSync(recursive: true));
      File('${root.path}/lib/models/customer.spy.yaml')
        ..parent.createSync(recursive: true)
        ..writeAsStringSync('class: Customer\ntable: customers\n');
      File('${root.path}/lib/src/generated/private.spy.yaml')
        ..parent.createSync(recursive: true)
        ..writeAsStringSync('class: Customer\ntable: customers\n');
      final models = ModelSourceIndex(projectDirectory: root.path).read();
      expect(models.paths['public.customers'], 'lib/models/customer.spy.yaml');
      expect(models.sources.length, 1);
      for (final (extension, tableName) in [
        ('spy.yml', 'alias_yml'),
        ('spy', 'alias_spy'),
      ]) {
        File('${root.path}/lib/models/$tableName.$extension')
            .writeAsStringSync('class: Alias\ntable: $tableName\n');
      }
      final aliases = ModelSourceIndex(projectDirectory: root.path).read();
      expect(aliases.sources.length, 3);
      expect(aliases.paths['public.alias_yml'], endsWith('.spy.yml'));
      expect(aliases.paths['public.alias_spy'], endsWith('.spy'));
    },
  );
  test('source edits with equal size and timestamp remain visible', () {
    final root = Directory.systemTemp.createTempSync('lens-source-edit-');
    addTearDown(() => root.deleteSync(recursive: true));
    final file = File('${root.path}/lib/customer.spy.yaml')
      ..parent.createSync(recursive: true)
      ..writeAsStringSync('class: Before\ntable: customers\n');
    final index = ModelSourceIndex(projectDirectory: root.path);
    expect(index.read().sources['public.customers'], contains('Before'));
    final timestamp = file.lastModifiedSync();
    file.writeAsStringSync('class: After!\ntable: customers\n');
    file.setLastModifiedSync(timestamp);
    expect(index.read().sources['public.customers'], contains('After!'));
  });
  test('definition object key order does not alter identity or revisions', () {
    final definition = table();
    final reordered = {
      for (final key in definition.keys.toList().reversed) key: definition[key],
    };
    final source = LensSchemaSource(projectId: 'shop');
    final first = source.read([definition]);
    final second = source.read([
      reordered,
      definition,
    ], knownRevision: first.revision);
    expect(second.revision, first.revision);
    expect(second.graph, isNull);
  });
}
