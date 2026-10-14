import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

void main() {
  test(
    'elog schema selection filters by database schema, with an All view',
    () {
      final graph = SchemaDiagram.graphFromJson(
        File('test/fixtures/large_schema.json').readAsStringSync(),
      );
      final catalog = SchemaCatalog(graph);
      expect(
        catalog.schemaCounts.keys,
        containsAll([
          'public',
          'sso',
          'elog',
          'docs_iq',
          'workflow_runtime',
          'assure_iq',
        ]),
      );
      expect(catalog.tables().length, graph.tables.length);
      expect(
        catalog.tables(schema: 'sso'),
        hasLength(catalog.schemaCounts['sso']!),
      );
      expect(
        catalog.tables(schema: 'sso').every((table) => table.schema == 'sso'),
        isTrue,
      );
      expect(
        catalog
            .tables(schema: 'elog', query: 'id')
            .every((table) => table.schema == 'elog'),
        isTrue,
      );
      expect(graph.source, 'flutter_elog');
      expect(
        graph.tables.map((table) => table.name).toSet().length,
        graph.tables.length,
      );
    },
  );
}
