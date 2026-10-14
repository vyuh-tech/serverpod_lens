import 'package:shop_server/src/generated/protocol.dart';
import 'package:serverpod_lens_backend/serverpod_lens_backend.dart';
import 'package:test/test.dart';

void main() {
  test(
    'shop native target and authored sources reach the reusable Lens adapter',
    () {
      final models = ModelSourceIndex().read();
      final source = LensSchemaSource(projectId: 'shop');
      final snapshot = source.read(
        Protocol().getTargetTableDefinitions(),
        sourcePaths: models.paths,
        modelSources: models.sources,
      );
      final tables = snapshot.graph!.tables
          .where((table) => table.name.startsWith('public.shop_'))
          .toList();
      expect(tables.length, 4);
      expect(tables.expand((table) => table.foreignKeys).length, 3);
      expect(tables.expand((table) => table.indexes).length, 4);
      expect(snapshot.sourcePaths!.length, 4);
      expect(
        snapshot.modelSources!['public.shop_orders'],
        contains('class: Order'),
      );
      final unchanged = source.read(
        Protocol().getTargetTableDefinitions(),
        knownRevision: snapshot.revision,
        sourcePaths: models.paths,
        modelSources: models.sources,
      );
      expect(unchanged.graph, isNull);
      expect(unchanged.revision, snapshot.revision);
    },
  );
}
