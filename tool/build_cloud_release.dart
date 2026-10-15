import 'dart:io';

import 'package:crypto/crypto.dart';

import 'cloud_release.dart';

Future<void> run(String command, List<String> args, Directory directory) async {
  final process = await Process.start(
    command,
    args,
    workingDirectory: directory.path,
    mode: ProcessStartMode.inheritStdio,
  );
  final code = await process.exitCode;
  if (code != 0) throw ProcessException(command, args, 'Command failed.', code);
}

void copyTracked(Directory repo, String source, Directory target) {
  final files = Process.runSync('git', [
    'ls-files',
    '-z',
    '--',
    source,
  ], workingDirectory: repo.path);
  if (files.exitCode != 0) throw StateError('Cannot list tracked files.');
  for (final path
      in (files.stdout as String).split('\u0000').where((p) => p.isNotEmpty)) {
    final output = File('${target.path}/${path.substring(source.length + 1)}');
    output.parent.createSync(recursive: true);
    File('${repo.path}/$path').copySync(output.path);
  }
}

Future<void> main() async {
  final repo = Directory.fromUri(Platform.script.resolve('../'));
  requireCurrentReleasePins(repo);
  final stage = Directory.systemTemp.createTempSync('lens-cloud-release-');
  stdout.writeln('Preparing release in ${stage.path}');
  final frontend = Directory('${stage.path}/frontend')..createSync();
  final backend = Directory('${stage.path}/backend')..createSync();
  final server = Directory('${backend.path}/server');
  copyTracked(
    repo,
    'examples/large_schema/client',
    Directory('${frontend.path}/client'),
  );
  copyTracked(
    repo,
    'examples/large_schema/flutter',
    Directory('${frontend.path}/flutter'),
  );
  copyTracked(repo, 'examples/large_schema/server', server);
  for (final root in [frontend, backend]) {
    File('${repo.path}/pubspec.lock').copySync('${root.path}/pubspec.lock');
  }
  final flutterManifest = File('${frontend.path}/flutter/pubspec.yaml');
  final flutter = readManifest(flutterManifest);
  (flutter['dependencies'] as Map)['serverpod_lens'] = {
    'hosted': lensRegistry,
    'version': lensRelease,
  };
  writeManifest(flutterManifest, flutter);
  writeManifest(File('${frontend.path}/pubspec.yaml'), {
    'name': 'lens_release_frontend',
    'publish_to': 'none',
    'environment': {'sdk': '^3.13.0'},
    'workspace': ['client', 'flutter'],
    // base_menu 0.1.5 has an incomplete published archive.
    'dependency_overrides': {'base_menu': '0.2.0'},
  });
  await run('flutter', ['pub', 'get'], frontend);
  final published = publishedLensRoots(frontend, repo);
  final schema = Directory('${backend.path}/schema')..createSync();
  final schemaFiles = <String, String>{};
  for (final entity in published['serverpod_lens_schema']!.listSync(
    recursive: true,
    followLinks: false,
  )) {
    if (entity is! File) continue;
    final relative = entity.path.substring(
      published['serverpod_lens_schema']!.path.length + 1,
    );
    final output = File('${schema.path}/$relative');
    output.parent.createSync(recursive: true);
    entity.copySync(output.path);
    schemaFiles[relative] = sha256.convert(output.readAsBytesSync()).toString();
  }
  final serverManifest = File('${server.path}/pubspec.yaml');
  final host = readManifest(serverManifest);
  (host['dependencies'] as Map)['serverpod_lens_schema'] = {
    'hosted': lensRegistry,
    'version': lensRelease,
  };
  (host['dev_dependencies'] as Map).remove('serverpod_lens_cli');
  host.remove('serverpod');
  writeManifest(serverManifest, host);
  writeManifest(File('${backend.path}/pubspec.yaml'), {
    'name': 'lens_release_backend',
    'publish_to': 'none',
    'environment': {'sdk': '^3.13.0'},
    'workspace': ['server', 'schema'],
  });
  File('${repo.path}/.scloudignore').copySync('${backend.path}/.scloudignore');
  final commit = Process.runSync('git', [
    'rev-parse',
    'HEAD',
  ], workingDirectory: repo.path);
  if (commit.exitCode != 0) throw StateError('Cannot identify source commit.');
  final status = Process.runSync('git', [
    'status',
    '--porcelain',
  ], workingDirectory: repo.path);
  if (status.exitCode != 0) throw StateError('Cannot inspect source changes.');
  final provenance = {
    'sourceCommit': (commit.stdout as String).trim(),
    'sourceDirty': (status.stdout as String).isNotEmpty,
    'registry': lensRegistry,
    'packages': {
      for (final entry in lensArchives.entries)
        entry.key: {'version': lensRelease, 'archiveSha256': entry.value},
    },
    'schemaFiles': schemaFiles,
  };
  await run('dart', ['pub', 'get'], backend);
  await run('flutter', [
    'build',
    'web',
    '--no-wasm-dry-run',
    '--base-href',
    '/',
    '--output',
    '${server.path}/web/app',
  ], Directory('${frontend.path}/flutter'));
  provenance['webBuildSha256'] = sha256
      .convert(File('${server.path}/web/app/main.dart.js').readAsBytesSync())
      .toString();
  writeManifest(File('${server.path}/assets/lens-release.json'), provenance);
  writeManifest(File('${server.path}/web/app/lens-build.json'), {
    for (final entry in provenance.entries)
      if (entry.key != 'schemaFiles') entry.key: entry.value,
  });
  await run('dart', ['run', 'tool/package_model_sources.dart'], server);
  await run('dart', [
    'tool/write_flutter_config.dart',
    'https://serverpod-lens.api.serverpod.space/',
  ], server);
  await run('dart', ['run', 'tool/check_release_build.dart'], server);
  stdout.writeln(
    '\nRelease prepared. Deploy from:\n${server.path}\n\nserverpod cloud deploy',
  );
}
