import 'dart:convert';
import 'dart:io';

import 'package:serverpod/protocol.dart';
import 'package:serverpod_lens_cli/serverpod_lens_cli.dart';
import 'package:test/test.dart';

void main() {
  late Directory project;
  setUp(() {
    project = Directory.systemTemp.createTempSync('lens-project-');
    File('${project.path}/pubspec.yaml')
        .writeAsStringSync('name: shop_server\n');
    File('${project.path}/lib/src/generated/protocol.dart')
      ..parent.createSync(recursive: true)
      ..writeAsStringSync('// fixture');
    File('${project.path}/lib/src/models/customer.spy.yaml')
      ..parent.createSync(recursive: true)
      ..writeAsStringSync(
        'class: Customer\ntable: customers\nfields:\n  name: String\n',
      );
  });
  tearDown(() => project.deleteSync(recursive: true));
  test('reads native target and maps relative authored source without starting a server', () async {
    final table = TableDefinition(
      name: 'customers',
      schema: 'public',
      module: 'shop',
      columns: [],
      foreignKeys: [],
      indexes: [],
    );
    final loader = ProjectSnapshotLoader(
      project,
      runner: (executable, arguments, {workingDirectory}) async {
        expect(workingDirectory, project.path);
        expect(arguments.first, 'run');
        final utility = File(arguments.last).readAsStringSync();
        expect(utility, contains('getTargetTableDefinitions'));
        expect(utility, isNot(contains('pod.start')));
        return ProcessResult(
          0,
          0,
          'LENS_TARGET_JSON=${jsonEncode({
            'tables': [table],
          })}\n',
          '',
        );
      },
    );
    final snapshot = await loader.read();
    expect(snapshot.graph!.tables.single.name, 'public.customers');
    expect(
      snapshot.sourcePaths!['public.customers'],
      'lib/src/models/customer.spy.yaml',
    );
    expect(
      snapshot.modelSources!['public.customers'],
      contains('class: Customer'),
    );
  });
  test(
    'missing generation and invalid project identity fail with instructions',
    () async {
      File('${project.path}/lib/src/generated/protocol.dart').deleteSync();
      await expectLater(
        ProjectSnapshotLoader(project).read(),
        throwsFormatException,
      );
      File('${project.path}/pubspec.yaml')
          .writeAsStringSync('name: "../secret"');
      expect(
        () => ProjectSnapshotLoader(project).packageName,
        throwsFormatException,
      );
    },
  );
}
