import 'dart:io';
import 'package:serverpod_lens_server/src/schema/model_source_index.dart';
import 'package:test/test.dart';

void main() {
  late Directory root;
  setUp(() => root = Directory.systemTemp.createTempSync('lens-models-'));
  tearDown(() => root.deleteSync(recursive: true));
  test('indexes authored models, updates contents and drops removed files', () {
    final file = File('${root.path}/order.spy.yaml')
      ..writeAsStringSync('class: Order\ntable: orders\nfields:\n  id: int\n');
    final index = ModelSourceIndex(root: root.path);
    expect(index.read().sources['public.orders'], contains('class: Order'));
    file.writeAsStringSync(
      'class: UpdatedOrder\ntable: orders\nfields:\n  id: int\n  name: String\n',
    );
    expect(index.read().sources['public.orders'], contains('UpdatedOrder'));
    file.deleteSync();
    expect(index.read().sources, isEmpty);
  });
  test('ignores malformed models and never follows symlinks', () {
    File('${root.path}/invalid.spy.yaml').writeAsStringSync('class: [broken');
    final outside = Directory.systemTemp.createTempSync('lens-outside-');
    addTearDown(() => outside.deleteSync(recursive: true));
    final secret = File('${outside.path}/secret.spy.yaml')
      ..writeAsStringSync('table: secret\nclass: Secret\n');
    Link('${root.path}/linked.spy.yaml').createSync(secret.path);
    expect(ModelSourceIndex(root: root.path).read().sources, isEmpty);
  });
  test(
    'non-table models are omitted and duplicate ownership fails clearly',
    () {
      File(
        '${root.path}/dto.spy.yaml',
      ).writeAsStringSync('class: Transport\nfields:\n  id: int\n');
      expect(ModelSourceIndex(root: root.path).read().sources, isEmpty);
      for (final name in ['first', 'second']) {
        File(
          '${root.path}/$name.spy.yaml',
        ).writeAsStringSync('class: $name\ntable: users\n');
      }
      expect(() => ModelSourceIndex(root: root.path).read(), throwsStateError);
    },
  );
  test('missing directories return an empty index', () {
    expect(
      ModelSourceIndex(root: '${root.path}/absent').read().sources,
      isEmpty,
    );
  });
}
