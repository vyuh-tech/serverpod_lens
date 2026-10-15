import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:test/test.dart';

void main() {
  test('nested native containers and named records retain every component', () {
    final type = SchemaTypeStructure.parse(
      'Map<String, List<({int code, protocol:Payload? data})>>?',
    );
    expect(type.name, 'Map?');
    expect(type.children.map((part) => part.type.name), ['String', 'List']);
    final record = type.children.last.type.children.single.type;
    expect(record.name, 'Record');
    expect(record.children.map((part) => part.label), ['code', 'data']);
    expect(record.children.map((part) => part.type.name), [
      'int',
      'protocol:Payload?',
    ]);
  });
  test('unknown and deeply nested type syntax remains bounded and readable', () {
    final deep =
        '${List.filled(50, 'List<').join()}External:Value?${List.filled(50, '>').join()}';
    var type = SchemaTypeStructure.parse(deep);
    var depth = 0;
    while (type.children.isNotEmpty) {
      depth++;
      type = type.children.single.type;
    }
    expect(depth, 24);
    expect(type.source, contains('External:Value?'));
    expect(
      SchemaTypeStructure.parse('FutureType(999)?').source,
      'FutureType(999)?',
    );
    expect(
      SchemaTypeStructure.parse('(int, String?,)').children
          .map((part) => part.label),
      ['\$1', '\$2'],
    );
  });
}
