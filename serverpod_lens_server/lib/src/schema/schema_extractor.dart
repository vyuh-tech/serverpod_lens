import 'package:serverpod_lens_server/src/generated/protocol.dart'
    show SchemaGraph;
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart'
    show SchemaDefinitionReader;

/// Bridges the shared definition reader to this package's generated protocol.
abstract final class SchemaExtractor {
  static SchemaGraph fromDefinitionJson(
    String definition, {
    required String source,
    bool projectOnly = false,
  }) => SchemaGraph.fromJson(
    SchemaDefinitionReader.read(
      definition,
      source: source,
      projectOnly: projectOnly,
    ),
  );
}
