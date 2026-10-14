import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final definition = await rootBundle.loadString('schema/definition.json');
  final graph = SchemaExtractor.fromDefinitionJson(
    definition,
    source: 'Shop example',
  );
  final sources = <String, String>{};
  final paths = <String, String>{};
  for (final (file, table) in [
    ('customer', 'shop_customers'),
    ('product', 'shop_products'),
    ('order', 'shop_orders'),
    ('order_item', 'shop_order_items'),
  ]) {
    final path = 'lib/src/models/$file.spy.yaml';
    paths['public.$table'] = path;
    sources['public.$table'] = await rootBundle.loadString(path);
  }
  runApp(
    MaterialApp(
      title: 'Lens Shop Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: SchemaViewer(
        graph: graph,
        sourcePaths: paths,
        modelSources: sources,
        storageKey: 'shop-example',
      ),
    ),
  );
}
