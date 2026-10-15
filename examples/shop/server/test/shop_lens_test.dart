import 'package:shop_server/src/generated/protocol.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:serverpod_lens_schema/io.dart';
import 'package:test/test.dart';

void main() {
  test(
    'shop native target and authored sources reach the reusable Lens adapter',
    () {
      final models = ModelSourceIndex().read();
      final source = LensSchemaSource(projectId: 'shop');
      final snapshot = source.read(
        Protocol()
            .getTargetTableDefinitions()
            .map((table) => table.toJson())
            .toList(),
        sourcePaths: models.paths,
        modelSources: models.sources,
      );
      final tables = snapshot.graph!.tables
          .where(
            (table) => const {
              'public.shop_customers',
              'public.shop_products',
              'public.shop_orders',
              'public.shop_order_items',
            }.contains(table.name),
          )
          .toList();
      expect(tables.length, 4);
      expect(tables.expand((table) => table.foreignKeys).length, 3);
      expect(tables.expand((table) => table.indexes).length, 4);
      expect(snapshot.sourcePaths!.length, 14);
      expect(
        snapshot.modelSources!['public.shop_orders'],
        contains('class: Order'),
      );
      final unchanged = source.read(
        Protocol()
            .getTargetTableDefinitions()
            .map((table) => table.toJson())
            .toList(),
        knownRevision: snapshot.revision,
        sourcePaths: models.paths,
        modelSources: models.sources,
      );
      expect(unchanged.graph, isNull);
      expect(unchanged.revision, snapshot.revision);
    },
  );
}
