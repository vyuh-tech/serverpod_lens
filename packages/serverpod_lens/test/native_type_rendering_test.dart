import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_database/serverpod_database.dart' as native;
import 'package:serverpod_lens/diagram.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:vyuh_diagram_extension_table/extension_api.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

void main() {
  test('every installed native Serverpod storage type renders a complete field row', () async {
    final target = native.TableDefinition(
      name: 'native_types',
      schema: 'public',
      columns: [
        for (final type in native.ColumnType.values)
          native.ColumnDefinition(
            name: 'field_${type.name}',
            columnType: type,
            dartType: 'Native${type.name}',
            isNullable: type.index.isEven,
            vectorDimension:
                {
                  native.ColumnType.vector,
                  native.ColumnType.halfvec,
                  native.ColumnType.sparsevec,
                  native.ColumnType.bit,
                }.contains(type)
                ? 8
                : null,
          ),
      ],
      foreignKeys: [],
      indexes: [],
    );
    final graph = LensSchemaSource(projectId: 'native_contract')
        .read([target.toJson()])
        .graph!;
    expect(
      graph.tables.single.columns,
      hasLength(native.ColumnType.values.length),
    );
    final controller = await SchemaDiagram.build(graph);
    addTearDown(controller.dispose);
    final shape = controller.document.elements.whereType<ShapeElement>().single;
    final rows = shape.textStory!.contents.whereType<TextTable>().single.rows;
    expect(rows, hasLength(native.ColumnType.values.length));
    for (var i = 0; i < native.ColumnType.values.length; i++) {
      final type = native.ColumnType.values[i];
      final field = graph.tables.single.columns[i];
      expect(rows[i].cells[1].blocks.single.plainText, 'field_${type.name}');
      expect(field.dartType, 'Native${type.name}');
      expect(field.isNullable, i.isEven);
      expect(
        rows[i].cells[2].blocks.single.plainText,
        '${field.dbType}${i.isEven ? '?' : ''}',
      );
      if (type != native.ColumnType.unknown) {
        expect(field.dbType, isNot('unknown'), reason: type.name);
      }
    }
  });
}
