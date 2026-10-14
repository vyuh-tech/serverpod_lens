import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:crypto/crypto.dart';

Future<void> main() async {
  const rebuild =
      'Run dart run tool/build_cloud_release.dart from the repository root, then deploy from its prepared server directory.';
  final metadata = File('assets/lens-release.json');
  if (!metadata.existsSync()) throw StateError(rebuild);
  final release = jsonDecode(metadata.readAsStringSync()) as Map;
  final schema = Directory('../schema');
  final library = await Isolate.resolvePackageUri(
    Uri.parse('package:serverpod_lens_schema/serverpod_lens_schema.dart'),
  );
  if (!schema.existsSync() ||
      library == null ||
      File.fromUri(library).resolveSymbolicLinksSync() !=
          File(
            '../schema/lib/serverpod_lens_schema.dart',
          ).resolveSymbolicLinksSync()) {
    throw StateError(
      'Cloud must compile the bundled registry schema. $rebuild',
    );
  }
  final files = release['schemaFiles'] as Map;
  final actualFiles = schema
      .listSync(recursive: true, followLinks: false)
      .whereType<File>()
      .map((file) => file.path.substring(schema.path.length + 1))
      .toSet();
  if (actualFiles.length != files.length ||
      !actualFiles.containsAll(files.keys.cast<String>())) {
    throw StateError('Bundled schema files changed. $rebuild');
  }
  for (final entry in files.entries) {
    final path = entry.key as String;
    if (path.startsWith('/') || path.split('/').contains('..')) {
      throw StateError('Invalid schema file path.');
    }
    final file = File('${schema.path}/$path');
    if (!file.existsSync() ||
        sha256.convert(file.readAsBytesSync()).toString() != entry.value) {
      throw StateError('Published schema file changed: $path. $rebuild');
    }
  }
  final script = File('web/app/main.dart.js');
  if (files.isEmpty || !script.existsSync()) {
    throw StateError('Incomplete release build. $rebuild');
  }
  if (sha256.convert(script.readAsBytesSync()).toString() !=
      release['webBuildSha256']) {
    throw StateError('Flutter build changed. $rebuild');
  }
  stdout.writeln('Verified bundled registry schema and Flutter build.');
}
