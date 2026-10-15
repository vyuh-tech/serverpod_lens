import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/diagram.dart';

void main() {
  test(
    'campus schema selection filters by database schema, with an All view',
    () {
      final graph = SchemaDiagram.graphFromJson(
        File('test/fixtures/large_schema.json').readAsStringSync(),
      );
      final catalog = SchemaCatalog(graph);
      expect(
        catalog.schemaCounts.keys,
        containsAll([
          'campus',
          'library',
          'academics',
          'admissions',
          'enrolment',
          'finance',
        ]),
      );
      expect(catalog.tables().length, graph.tables.length);
      expect(
        catalog.tables(schema: 'library'),
        hasLength(catalog.schemaCounts['library']!),
      );
      expect(
        catalog
            .tables(schema: 'library')
            .every((table) => table.schema == 'library'),
        isTrue,
      );
      expect(
        catalog
            .tables(schema: 'academics', query: 'id')
            .every((table) => table.schema == 'academics'),
        isTrue,
      );
      expect(graph.source, 'University campus');
      expect(
        graph.tables.map((table) => table.name).toSet().length,
        graph.tables.length,
      );
    },
  );
}
