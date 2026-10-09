import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

/// Converts a complete resolved Serverpod definition into the viewer contract.
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
