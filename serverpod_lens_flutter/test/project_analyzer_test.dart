import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens_flutter/schema/project_analyzer.dart';

void main() {
  test('analyzes an uploaded Serverpod project zip', () {
    // Reuse this repo's own server migration as a realistic fixture.
    final migrations = Directory('../serverpod_lens_server/migrations');
    final versionDirs = migrations
        .listSync()
        .whereType<Directory>()
        .where((d) => File('${d.path}/definition_project.json').existsSync())
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));
    expect(versionDirs, isNotEmpty, reason: 'run create-migration first');

    final definition = File('${versionDirs.last.path}/definition_project.json')
        .readAsStringSync();

    final content = utf8.encode(definition);
    final archive = Archive()
      ..addFile(ArchiveFile(
        'project/serverpod_lens_server/migrations/20260101000000000/definition_project.json',
        content.length,
        content,
      ));
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
