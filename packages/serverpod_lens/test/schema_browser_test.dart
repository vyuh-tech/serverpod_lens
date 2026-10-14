import 'dart:ui' show PointerDeviceKind;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/src/schema/schema_catalog.dart';
import 'package:serverpod_lens/src/screens/schema_browser.dart';

import 'support/navigation_fixture.dart';

Widget host({
  SchemaCatalog? catalog,
  String? selectedTable,
  String? selectedSchema,
  ValueChanged<String?>? selectSchema,
  ValueChanged<String>? selectTable,
  ThemeData? theme,
  bool enabled = true,
  bool rtl = false,
  double textScale = 1,
}) => MaterialApp(
  theme: theme,
  home: Scaffold(
    body: Directionality(
      textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
      child: MediaQuery(
        data: MediaQueryData(textScaler: TextScaler.linear(textScale)),
        child: SizedBox(
          width: 220,
          child: SchemaBrowser(
            catalog: catalog ?? SchemaCatalog(fixture()),
            selectedSchema: selectedSchema,
            selectedTable: selectedTable,
            enabled: enabled,
            onSelectSchema: selectSchema ?? (_) {},
            onSelectTable: selectTable ?? (_) {},
          ),
        ),
      ),
    ),
  ),
);

Finder row(String key) => find.byKey(ValueKey(key));
Future<void> search(WidgetTester tester, String value) async {
  await tester.enterText(find.byType(TextField), value);
  await tester.pump(const Duration(milliseconds: 150));
}

void main() {
  testWidgets('arrows only fold and preserve selected tables', (tester) async {
    final selections = <String?>[];
    await tester.pumpWidget(
      host(selectedTable: 'public.orders', selectSchema: selections.add),
    );
    await tester.tap(row('toggle-schema:public'));
    await tester.pump();
    expect(row('table:public.orders'), findsOneWidget);
    expect(
      tester.widget<SchemaTreeRow>(row('table:public.orders')).selected,
      isTrue,
    );
    await tester.tap(row('toggle-schema:public'));
    await tester.pump();
    expect(row('table:public.orders'), findsNothing);
    await tester.tap(row('toggle-schema:public'));
    await tester.pump();
    await tester.tap(row('toggle-all-schemas'));
    await tester.pump();
    expect(row('schema:public'), findsNothing);
    await tester.tap(row('toggle-all-schemas'));
    await tester.pump();
    expect(row('table:public.orders'), findsOneWidget);
    expect(
      tester.widget<SchemaTreeRow>(row('table:public.orders')).selected,
      isTrue,
    );
    expect(selections, isEmpty);
  });

  testWidgets('names choose scope or table with only one selected row', (
    tester,
  ) async {
    final schemas = <String?>[];
    final tables = <String>[];
    await tester.pumpWidget(
      host(selectSchema: schemas.add, selectTable: tables.add),
    );
    await tester.tap(row('schema:public'));
    await tester.pump();
    expect(schemas, ['public']);
    expect(row('table:public.orders'), findsOneWidget);
    await tester.tap(row('table:public.orders'));
    expect(tables, ['public.orders']);
    await tester.pumpWidget(host(selectedTable: 'public.orders'));
    final selected = tester
        .widgetList<SchemaTreeRow>(find.byType(SchemaTreeRow))
        .where((row) => row.selected);
    expect(selected.map((row) => row.label), ['orders']);
    expect(find.textContaining('columns'), findsNothing);
  });

  testWidgets(
    'search reveals matches and clearing restores expansion and scroll',
    (tester) async {
      final catalog = SchemaCatalog(fixture(neighbors: 60));
      await tester.pumpWidget(host(catalog: catalog));
      await tester.tap(row('toggle-schema:public'));
      await tester.pump();
      final scroll = tester
          .widget<CustomScrollView>(find.byType(CustomScrollView))
          .controller!;
      scroll.jumpTo(350);
      await tester.pump();
      await search(tester, 'orders');
      expect(row('table:public.orders'), findsOneWidget);
      expect(row('schema:audit'), findsNothing);
      await tester.tap(find.byTooltip('Clear search'));
      await tester.pump(const Duration(milliseconds: 150));
      await tester.pump();
      expect(scroll.offset, 350);
      scroll.jumpTo(0);
      await tester.pump();
      expect(
        tester.widget<SchemaTreeRow>(row('schema:public')).expanded,
        isTrue,
      );
      expect(
        tester.widget<SchemaTreeRow>(row('schema:audit')).expanded,
        isFalse,
      );
    },
  );

  testWidgets(
    'field search survives refresh and clearing restores folded root',
    (tester) async {
      final graph = fixture(neighbors: 0);
      await tester.pumpWidget(host(catalog: SchemaCatalog(graph)));
      await tester.tap(row('toggle-all-schemas'));
      await tester.pump();
      await search(tester, 'description');
      expect(row('table:public.orders'), findsOneWidget);
      await tester.pumpWidget(
        host(
          catalog: SchemaCatalog(
            graph.copyWith(tables: [...graph.tables, table('extra.new_table')]),
          ),
        ),
      );
      expect(
        tester.widget<TextField>(find.byType(TextField)).controller!.text,
        'description',
      );
      expect(row('table:extra.new_table'), findsOneWidget);
      await search(tester, '');
      expect(row('schema:public'), findsNothing);
      expect(
        tester.widget<SchemaTreeRow>(row('all-schemas')).expanded,
        isFalse,
      );
    },
  );

  testWidgets('disabled navigation still permits expansion', (tester) async {
    final calls = <String?>[];
    await tester.pumpWidget(host(enabled: false, selectSchema: calls.add));
    await tester.tap(row('schema:public'));
    await tester.pump();
    expect(calls, isEmpty);
    expect(row('table:public.orders'), findsNothing);
    await tester.tap(row('toggle-schema:public'));
    await tester.pump();
    expect(row('table:public.orders'), findsOneWidget);
  });

  for (final dark in [false, true]) {
    testWidgets(
      'one hover surface covers arrow and label in ${dark ? 'dark' : 'light'}',
      (tester) async {
        await tester.pumpWidget(
          host(theme: dark ? ThemeData.dark() : ThemeData.light()),
        );
        final schema = row('schema:public');
        final surface = find.descendant(
          of: schema,
          matching: find.byType(Material),
        );
        final mouse = await tester.createGesture(kind: PointerDeviceKind.mouse);
        await mouse.addPointer(location: Offset.zero);
        addTearDown(mouse.removePointer);
        await mouse.moveTo(tester.getCenter(row('toggle-schema:public')));
        await tester.pump();
        final color = tester.widget<Material>(surface).color;
        expect(color, isNot(Colors.transparent));
        final text = find.descendant(of: schema, matching: find.text('public'));
        await mouse.moveTo(tester.getCenter(text));
        await tester.pump();
        expect(tester.widget<Material>(surface).color, color);
        expect(surface, findsOneWidget);
        expect(
          find.descendant(of: schema, matching: find.byType(IconButton)),
          findsNothing,
        );
      },
    );
  }

  testWidgets('long names fit narrow RTL with large text and tooltips', (
    tester,
  ) async {
    const name = 'public.a_very_long_table_name_for_the_navigation_tree';
    final graph = fixture(neighbors: 0);
    await tester.pumpWidget(
      host(
        catalog: SchemaCatalog(graph.copyWith(tables: [table(name)])),
        rtl: true,
        textScale: 1.8,
        theme: ThemeData.dark(),
      ),
    );
    await tester.tap(row('toggle-schema:public'));
    await tester.pump();
    expect(find.byTooltip(name), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('keyboard activates chevron and semantics expose expansion', (
    tester,
  ) async {
    final semantics = tester.ensureSemantics();
    final selections = <String?>[];
    await tester.pumpWidget(host(selectSchema: selections.add));
    final icon = find.descendant(
      of: row('toggle-schema:public'),
      matching: find.byType(Icon),
    );
    Focus.of(tester.element(icon)).requestFocus();
    await tester.pump();
    expect(find.bySemanticsLabel('Expand public'), findsOneWidget);
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    expect(row('table:public.orders'), findsOneWidget);
    expect(find.bySemanticsLabel('Collapse public'), findsOneWidget);
    expect(selections, isEmpty);
    semantics.dispose();
  });
}
