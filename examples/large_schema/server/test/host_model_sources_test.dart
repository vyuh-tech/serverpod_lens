import 'dart:io';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

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

  test('compiled assets retain referenced enums and inherited field aliases', () {
    final files = {
      'order':
          'class: Order\nextends: Base\ntable: orders\nfields:\n  state: State\n',
      'base':
          'class: Base\nfields:\n  displayName: String, column=display_name\n',
      'state': 'enum: State\nvalues: [draft, active]\n',
    };
    for (final entry in files.entries) {
      final file = File(
        '${project.path}/assets/lens-models/lib/src/models/${entry.key}.spy.yaml',
      );
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(entry.value);
    }
    final bundle = readHostModelSources(projectDirectory: project.path);
    final snapshot = LensSchemaSource(projectId: 'app').read(
      [
        {
          'name': 'orders',
          'dartName': 'Order',
          'columns': [
            {
              'name': 'display_name',
              'columnType': 'text',
              'dartType': 'String',
            },
            {
              'name': 'state',
              'columnType': 'text',
              'dartType': 'protocol:State',
            },
          ],
        },
      ],
      sourcePaths: bundle.paths,
      modelSources: bundle.sources,
      modelCatalog: bundle.catalog,
    );
    expect(
      snapshot.graph!.tables.single.columns.first.fieldName,
      'displayName',
    );
    expect(snapshot.graph!.enums.single.values, ['draft', 'active']);
    expect(snapshot.sourcePaths, hasLength(1));
    expect(bundle.files, hasLength(3));
  });

  test('returns empty maps for hosts without authored models', () {
    final models = readHostModelSources(projectDirectory: project.path);
    expect(models.paths, isEmpty);
    expect(models.sources, isEmpty);
  });
}
