import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens/diagram.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

SchemaGraph graph(String name) => SchemaGraph(
  source: 'Serverpod host',
  generatedAt: DateTime.utc(2026),
  modules: const [],
  enums: const [],
  tables: [
    SchemaTable(
      name: 'public.$name',
      className: name,
      schema: 'public',
      module: 'host',
      columns: const [
        SchemaColumn(
          name: 'id',
          fieldName: 'id',
          dartType: 'int',
          dbType: 'bigint',
          isNullable: false,
          isPrimaryKey: true,
          isUnique: true,
        ),
      ],
      foreignKeys: const [],
      indexes: const [],
    ),
  ],
);

void main() {
  testWidgets(
    'host supplies and refreshes a graph without demo loading controls',
    (tester) async {
      const cursorChannel = MethodChannel('native_mouse_cursor');
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        cursorChannel,
        (_) async => 'test-cursor',
      );
      addTearDown(
        () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
          cursorChannel,
          null,
        ),
      );
      Widget host(SchemaGraph schema) => MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [Locale('en')],
        home: SchemaViewer(graph: schema, viewStore: MemorySchemaViewStore()),
      );
      await tester.pumpWidget(host(graph('first')));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 500)),
      );
      await tester.pumpAndSettle();
      expect(find.byTooltip('Import schema'), findsNothing);
      expect(find.byTooltip('Paste SQL'), findsNothing);
      expect(
        tester
            .widget<DiagramCanvas>(find.byType(DiagramCanvas))
            .controller
            .document
            .elementById('public.first'),
        isNotNull,
      );
      await tester.pumpWidget(host(graph('second')));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 500)),
      );
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<DiagramCanvas>(find.byType(DiagramCanvas))
            .controller
            .document
            .elementById('public.first'),
        isNull,
      );
      expect(
        tester
            .widget<DiagramCanvas>(find.byType(DiagramCanvas))
            .controller
            .document
            .elementById('public.second'),
        isNotNull,
      );
      expect(tester.takeException(), isNull);
    },
  );
}
