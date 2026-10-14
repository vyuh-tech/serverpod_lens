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
  test('explicit reads recheck the native target and source changes', () async {
    var runs = 0;
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
        runs++;
        return ProcessResult(
          0,
          0,
          'LENS_TARGET_JSON=${jsonEncode({
            'tables': [table],
          })}',
          '',
        );
      },
    );
    final first = await loader.read();
    final second = await loader.read(knownRevision: first.revision);
    expect(second.graph, isNull);
    expect(runs, 2);
    File('${project.path}/lib/src/models/customer.spy.yaml').writeAsStringSync(
      'class: Customer\ntable: customers\nfields:\n  name: String\n  email: String\n',
    );
    final changed = await loader.read(knownRevision: first.revision);
    expect(changed.graph, isNotNull);
    expect(changed.revision, isNot(first.revision));
    expect(runs, 3);
    File('${project.path}/lib/src/generated/protocol.dart')
        .writeAsStringSync('// changed generated target');
    await loader.read();
    expect(runs, 4);
  });
  test('manual refresh sees dependency changes without a protocol timestamp change', () async {
    var name = 'customers';
    final loader = ProjectSnapshotLoader(
      project,
      runner: (_, _, {workingDirectory}) async => ProcessResult(
        0,
        0,
        'LENS_TARGET_JSON=${jsonEncode({
          'tables': [TableDefinition(name: name, schema: 'public', module: 'shop', columns: [], foreignKeys: [], indexes: [])],
        })}',
        '',
      ),
    );
    final first = await loader.read();
    File('${project.path}/pubspec.lock')
        .writeAsStringSync('dependency changed');
    name = 'orders';
    final refreshed = await loader.read(knownRevision: first.revision);
    expect(refreshed.graph!.tables.single.name, 'public.orders');
    expect(refreshed.revision, isNot(first.revision));
  });
  test('manual refresh sees same-size protocol edits with preserved timestamps', () async {
    var name = 'customers';
    final loader = ProjectSnapshotLoader(
      project,
      runner: (_, _, {workingDirectory}) async => ProcessResult(
        0,
        0,
        'LENS_TARGET_JSON=${jsonEncode({
          'tables': [TableDefinition(name: name, schema: 'public', module: 'shop', columns: [], foreignKeys: [], indexes: [])],
        })}',
        '',
      ),
    );
    final first = await loader.read();
    final protocol = File('${project.path}/lib/src/generated/protocol.dart');
    final stamp = protocol.lastModifiedSync();
    protocol.writeAsStringSync('// changed');
    protocol.setLastModifiedSync(stamp);
    name = 'orders';
    final refreshed = await loader.read(knownRevision: first.revision);
    expect(refreshed.graph!.tables.single.name, 'public.orders');
  });
  test(
    'actual Shop generated protocol is loaded by the native subprocess',
    () async {
      final sample = Directory('../../examples/shop/server').absolute;
      final snapshot = await ProjectSnapshotLoader(sample).read();
      final shop = snapshot.graph!.tables
          .where((table) => table.name.startsWith('public.shop_'))
          .toList();
      expect(shop, hasLength(4));
      expect(shop.expand((table) => table.foreignKeys), hasLength(3));
      expect(snapshot.modelSources, hasLength(4));
    },
  );
}
