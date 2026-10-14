import 'dart:io';

import 'package:serverpod_lens_server/src/schema/model_source_index.dart';
import 'package:test/test.dart';

void main() {
  late Directory project;
  setUp(
    () => project = Directory.systemTemp.createTempSync('lens-host-models-'),
  );
  tearDown(() => project.deleteSync(recursive: true));

  void writeModel(String location, String name) {
    final file = File(
      '${project.path}/$location/lib/src/models/order.spy.yaml',
    );
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(
      'class: $name\ntable: orders\nfields:\n  name: String\n',
    );
  }

  test('reads authored models during development', () {
    writeModel('.', 'Order');
    final models = readHostModelSources(projectDirectory: project.path);
    expect(models.paths, {'public.orders': 'lib/src/models/order.spy.yaml'});
    expect(models.sources['public.orders'], contains('class: Order'));
  });

  test('reads sources from the compiled Cloud runtime assets', () {
    writeModel('assets/lens-models', 'Order');
    final models = readHostModelSources(projectDirectory: project.path);
    expect(models.paths, {'public.orders': 'lib/src/models/order.spy.yaml'});
    expect(models.sources['public.orders'], contains('class: Order'));
  });

  test('prefers current authored models over a previous deployment bundle', () {
    writeModel('assets/lens-models', 'OldOrder');
    writeModel('.', 'CurrentOrder');
    final models = readHostModelSources(projectDirectory: project.path);
    expect(models.sources['public.orders'], contains('class: CurrentOrder'));
  });

  test('returns empty maps for hosts without authored models', () {
    final models = readHostModelSources(projectDirectory: project.path);
    expect(models.paths, isEmpty);
    expect(models.sources, isEmpty);
  });
}
