import 'dart:convert';

import 'package:shop_server/src/generated/protocol.dart';
import 'package:serverpod_lens_backend/serverpod_lens_backend.dart';

/// Shows how any Serverpod host supplies its native target to the shared adapter.
void main() {
  final models = ModelSourceIndex().read();
  final snapshot = LensSchemaSource(projectId: 'shop').read(
    Protocol().getTargetTableDefinitions(),
    sourcePaths: models.paths,
    modelSources: models.sources,
  );
  print(jsonEncode(snapshot.toJson()));
}
