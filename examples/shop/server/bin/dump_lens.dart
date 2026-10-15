import 'dart:convert';

import 'package:shop_server/src/generated/protocol.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:serverpod_lens_schema/io.dart';

/// Shows how any Serverpod host supplies its native target to the shared adapter.
void main() {
  final models = ModelSourceIndex().readBundle();
  final snapshot = LensSchemaSource(projectId: 'shop').read(
    Protocol()
        .getTargetTableDefinitions()
        .map((table) => table.toJson())
        .toList(),
    sourcePaths: models.paths,
    modelSources: models.sources,
    modelCatalog: models.catalog,
  );
  print(jsonEncode(snapshot.toJson()));
}
