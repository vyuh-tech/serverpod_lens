import 'dart:convert';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

void main() {
  final definition = jsonEncode({
    'tables': [
      {
        'name': 'customers',
        'schema': 'public',
        'module': 'shop',
        'dartName': 'Customer',
        'columns': [
          {'name': 'id', 'columnType': 6, 'isNullable': false},
          {'name': 'name', 'columnType': 0, 'isNullable': false},
        ],
        'foreignKeys': [],
        'indexes': [],
      },
    ],
  });
  final graph = SchemaGraph.fromJson(
    SchemaDefinitionReader.read(definition, source: 'Shop'),
  );
  print(
    '${graph.tables.single.name}: ${graph.tables.single.columns.length} fields',
  );
}
