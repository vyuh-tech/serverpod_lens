import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/src/screens/schema_table_inspector.dart';

void main() {
  for (final (label, declaration) in <(String, Map<String, dynamic>)>[
    (
      'invalid enum value',
      {
        'kind': 'enum',
        'values': [12],
      },
    ),
    (
      'empty enhanced enum',
      {
        'kind': 'enum',
        'values': [{}],
      },
    ),
    ('invalid enum collection', {'kind': 'enum', 'values': 'incomplete'}),
    ('invalid object fields', {'kind': 'class', 'fields': 'incomplete'}),
  ]) {
    testWidgets('optional $label cannot hide a persisted field', (
      tester,
    ) async {
      final graph = SchemaExtractor.fromDefinitionJson(
        jsonEncode({
          'tables': [
            {
              'name': 'items',
              'columns': [
                {
                  'name': 'data',
                  'columnType': 'jsonb',
                  'dartType': 'protocol:Payload',
                },
              ],
              'lensModel': {
                'fields': {
                  'data': {'scope': 'serverOnly'},
                },
                'models': {'Payload': declaration},
              },
            },
          ],
        }),
        source: 'native',
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SchemaTableInspector(
              table: graph.tables.single,
              graph: SchemaContext(graph),
              onClose: () {},
              onSelectTable: (_) {},
            ),
          ),
        ),
      );
      await tester.tap(find.widgetWithText(Tab, 'Fields'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('structure:data')));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      expect(find.widgetWithText(SelectableText, 'data'), findsOneWidget);
      expect(find.text('Server only'), findsOneWidget);
    });
  }
}
