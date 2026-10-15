import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/src/screens/schema_table_inspector.dart';

SchemaGraph modelGraph() {
  const source =
      'class: Entry\ntable: entries\nfields:\n  displayName: String, column=display_name\n';
  return LensSchemaSource(projectId: 'app')
      .read(
        [
          {
            'name': 'entries',
            'schema': 'public',
            'dartName': 'Entry',
            'columns': [
              {
                'name': 'display_name',
                'columnType': 'text',
                'dartType': 'String',
              },
              {
                'name': 'state',
                'columnType': 'text',
                'dartType': 'protocol:State',
              },
              {
                'name': 'payload',
                'columnType': 'jsonb',
                'dartType': 'List<protocol:Payload>',
              },
            ],
          },
        ],
        sourcePaths: {'public.entries': 'lib/entry.spy.yaml'},
        modelSources: {'public.entries': source},
        modelCatalog: SchemaModelCatalog.fromSources([
          source,
          'enum: State\nserialized: byName\nproperties:\n  label: String\nvalues:\n  - draft:\n      label: Draft entry\n  - active:\n      label: Active entry\n',
          'class: Payload\nfields:\n  email: String\n  next: Payload?\n',
        ]),
      )
      .graph!;
}

void main() {
  for (final (mode, width) in [
    (ThemeMode.light, 700.0),
    (ThemeMode.dark, 700.0),
    (ThemeMode.light, 380.0),
    (ThemeMode.dark, 380.0),
  ]) {
    testWidgets(
      'inspector shows aliases, enum values and expandable nested types in $mode at $width',
      (tester) async {
        tester.view.physicalSize = Size(width, 1100);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        final graph = modelGraph();
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: mode,
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
        expect(find.widgetWithText(SelectableText, 'displayName'), findsOneWidget);
        expect(find.text('Column: display_name'), findsOneWidget);
        expect(find.text('draft'), findsOneWidget);
        expect(find.text('label: Draft entry'), findsOneWidget);
        final structure = find.byKey(const ValueKey('structure:payload'));
        await tester.ensureVisible(structure);
        await tester.tap(structure);
        await tester.pumpAndSettle();
        expect(find.text('email'), findsOneWidget);
        expect(find.text('next'), findsOneWidget);
        await tester.ensureVisible(find.text('next'));
        await tester.tap(find.text('next'));
        await tester.pumpAndSettle();
        expect(find.text('Payload · recursive reference'), findsOneWidget);
        await tester.enterText(find.byType(TextField), 'displayName');
        await tester.pumpAndSettle();
        expect(find.widgetWithText(SelectableText, 'displayName'), findsOneWidget);
        expect(find.text('draft'), findsNothing);
        expect(tester.takeException(), isNull);
      },
    );
  }
}
