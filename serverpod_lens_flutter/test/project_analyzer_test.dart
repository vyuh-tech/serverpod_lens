import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/project_analyzer.dart';

void main() {
  test('rejects ambiguous archives containing multiple server packages', () {
    final archive = Archive();
    for (final server in ['first', 'second']) {
      final bytes = utf8.encode('{"tables":[]}');
      archive.addFile(
        ArchiveFile(
          '$server/migrations/20260101/definition.json',
          bytes.length,
          bytes,
        ),
      );
    }
    final analysis = ProjectAnalyzer.analyzeZip(
      Uint8List.fromList(ZipEncoder().encode(archive)),
      name: 'multiple.zip',
    );
    expect(analysis.graph.tables, isEmpty);
    expect(
      analysis.warnings.single,
      contains('Multiple Serverpod server packages'),
    );
  });

  test(
    'rejects a malformed latest snapshot instead of displaying stale tables',
    () {
      final archive = Archive();
      for (final entry in {
        'server/migrations/20250101/definition.json':
            '{"tables":[{"name":"dropped"}]}',
        'server/migrations/20260101/definition.json': '{broken',
      }.entries) {
        final bytes = utf8.encode(entry.value);
        archive.addFile(ArchiveFile(entry.key, bytes.length, bytes));
      }
      final analysis = ProjectAnalyzer.analyzeZip(
        Uint8List.fromList(ZipEncoder().encode(archive)),
        name: 'broken.zip',
      );
      expect(analysis.graph.tables, isEmpty);
      expect(
        analysis.warnings.single,
        contains('newest migration definition is invalid'),
      );
    },
  );

  test(
    'uses the latest complete snapshot and does not resurrect dropped tables',
    () {
      Uint8List zip(Map<String, List<Map<String, Object?>>> snapshots) {
        final archive = Archive();
        for (final entry in snapshots.entries) {
          final content = utf8.encode(jsonEncode({'tables': entry.value}));
          archive.addFile(ArchiveFile(entry.key, content.length, content));
        }
        return Uint8List.fromList(ZipEncoder().encode(archive));
      }

      final analysis = ProjectAnalyzer.analyzeZip(
        zip({
          'server/migrations/20250101/definition_project.json': [
            {'name': 'dropped'},
          ],
          'server/migrations/20260101/definition_project.json': [
            {'name': 'project'},
          ],
          'server/migrations/20260101/definition.json': [
            {'name': 'project'},
            {'name': 'auth', 'module': 'serverpod_auth_core'},
          ],
        }),
        name: 'fixture.zip',
      );
      expect(analysis.graph.tables.map((table) => table.name), [
        'public.project',
        'public.auth',
      ]);
      final empty = ProjectAnalyzer.analyzeZip(
        zip({
          'server/migrations/20250101/definition.json': [
            {'name': 'dropped'},
          ],
          'server/migrations/20260101/definition.json': [],
        }),
        name: 'empty.zip',
      );
      expect(empty.graph.tables, isEmpty);
    },
  );

  test('analyzes an uploaded Serverpod project zip', () {
    // Reuse this repo's own server migration as a realistic fixture.
    final migrations = Directory('../serverpod_lens_server/migrations');
    final versionDirs =
        migrations
            .listSync()
            .whereType<Directory>()
            .where(
              (d) => File('${d.path}/definition_project.json').existsSync(),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    expect(versionDirs, isNotEmpty, reason: 'run create-migration first');

    final definition = File(
      '${versionDirs.last.path}/definition_project.json',
    ).readAsStringSync();

    final content = utf8.encode(definition);
    final archive = Archive()
      ..addFile(
        ArchiveFile(
          'project/serverpod_lens_server/migrations/20260101000000000/definition_project.json',
          content.length,
          content,
        ),
      );
    final bytes = Uint8List.fromList(ZipEncoder().encode(archive));

    final analysis = ProjectAnalyzer.analyzeZip(
      bytes,
      name: 'project.zip',
    );

    expect(analysis.isEmpty, isFalse);
    expect(analysis.graph.tables.length, greaterThan(100));
    expect(
      analysis.graph.tables.fold<int>(0, (n, t) => n + t.foreignKeys.length),
      greaterThan(150),
    );
  });
}
