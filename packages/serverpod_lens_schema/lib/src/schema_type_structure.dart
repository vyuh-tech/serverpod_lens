import 'schema_model_catalog.dart' show splitDeclaration;

/// A display tree of a native Dart type, not a Serverpod type validator.
/// Unknown or excessively deep types retain their complete original text.
final class SchemaTypeStructure {
  const SchemaTypeStructure._(this.source, this.name, this.children);
  final String source;
  final String name;
  final List<({String label, SchemaTypeStructure type})> children;

  static SchemaTypeStructure parse(String source, {int depth = 0}) {
    var type = source.trim();
    final nullable = type.endsWith('?');
    if (nullable) type = type.substring(0, type.length - 1).trim();
    final suffix = nullable ? '?' : '';
    SchemaTypeStructure leaf() =>
        SchemaTypeStructure._(source, source, const []);
    if (depth >= 24 || type.isEmpty) return leaf();
    if (type.startsWith('(') && type.endsWith(')')) {
      final fields = <({String label, SchemaTypeStructure type})>[];
      for (final part in splitDeclaration(type.substring(1, type.length - 1))) {
        if (part.isEmpty) continue;
        if (part.startsWith('{') && part.endsWith('}')) {
          for (final field in splitDeclaration(
            part.substring(1, part.length - 1),
          )) {
            final match = RegExp(r'^(.*\S)\s+([A-Za-z_]\w*)$')
                .firstMatch(field);
            if (match == null) return leaf();
            fields.add((
              label: match[2]!,
              type: parse(match[1]!, depth: depth + 1),
            ));
          }
        } else {
          fields.add((
            label: '\$${fields.length + 1}',
            type: parse(part, depth: depth + 1),
          ));
        }
      }
      return SchemaTypeStructure._(
        source,
        'Record$suffix',
        List.unmodifiable(fields),
      );
    }
    final opening = type.indexOf('<');
    if (opening > 0 && type.endsWith('>')) {
      final name = type.substring(0, opening);
      final arguments = splitDeclaration(
        type.substring(opening + 1, type.length - 1),
      );
      return SchemaTypeStructure._(source, '$name$suffix', [
        for (var i = 0; i < arguments.length; i++)
          (
            label: name == 'Map'
                ? (i == 0 ? 'Key' : 'Value')
                : arguments.length == 1
                ? 'Element'
                : 'Type ${i + 1}',
            type: parse(arguments[i], depth: depth + 1),
          ),
      ]);
    }
    return leaf();
  }
}
