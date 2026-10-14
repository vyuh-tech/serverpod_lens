import 'schema_graph.dart';
import 'schema_definition_reader.dart';

/// Converts a complete resolved Serverpod definition into the viewer contract.
abstract final class SchemaExtractor {
  static SchemaGraph fromDefinitionJson(
    String definition, {
    required String source,
    bool projectOnly = false,
  }) {
    if (definition.length > 8 * 1024 * 1024) {
      throw const FormatException('Schema JSON exceeds the 8 MiB text limit.');
    }
    return SchemaGraph.fromJson(
      SchemaDefinitionReader.read(
        definition,
        source: source,
        projectOnly: projectOnly,
      ),
    );
  }
}
