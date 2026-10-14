import 'dart:convert';
import 'dart:io';

import 'publication_policy.dart';

Future<void> main(List<String> args) async {
  try {
    if (args.any((arg) => arg != '--verify-registry') || args.length > 1) {
      throw const FormatException(
        'Usage: dart run tool/check_publication.dart [--verify-registry]',
      );
    }
    final root = Directory.current;
    final releases = releasePackages(root);
    if (args.contains('--verify-registry')) {
      await _verify(releases);
    } else {
      await _validate(root, releases);
    }
  } catch (error) {
    // Only controlled publication errors are emitted; never dump HTTP bodies or tokens.
    stderr.writeln(
      error is FormatException
          ? error.message
          : error is StateError
          ? error.message
          : 'Publication check failed (${error.runtimeType}).',
    );
    exitCode = 1;
  }
}

Future<void> _validate(Directory root, List<PackageRelease> releases) async {
  final stage = Directory.systemTemp.createTempSync('lens-publication-');
  stdout.writeln(
    'Validating ${releases.length} internal packages. Logs: ${stage.path}',
  );
  for (final release in releases) {
    _copy(
      Directory('${root.path}/${release.path}'),
      Directory('${stage.path}/${release.path}'),
    );
  }
  File('${stage.path}/pubspec.yaml')
      .writeAsStringSync('''name: lens_publication_check
publish_to: none
environment:
  sdk: ^3.13.0
workspace:
${releases.map((release) => '  - ${release.path}').join('\n')}
''');
  final dart = Platform.resolvedExecutable.endsWith('dartvm')
      ? '${File(Platform.resolvedExecutable).parent.path}/dart'
      : Platform.resolvedExecutable;
  final resolution = await Process.run(dart, [
    'pub',
    'get',
  ], workingDirectory: stage.path);
  _log(stage, 'resolve', resolution);
  if (resolution.exitCode != 0)
    throw StateError(
      'Clean publication workspace could not resolve; see resolve.log.',
    );
  for (final release in releases) {
    final result = await Process.run(dart, [
      'pub',
      'publish',
      '--dry-run',
    ], workingDirectory: '${stage.path}/${release.path}');
    final output = _log(stage, release.name, result);
    if (!publicationValidationPassed(result.exitCode, output)) {
      stderr.writeln(output);
      throw StateError('${release.name} failed publication validation.');
    }
    stdout.writeln(
      'PASS ${release.name} ${release.version}${result.exitCode == 65 ? ' (registry tier warning only)' : ''}',
    );
  }
}

String _log(Directory stage, String name, ProcessResult result) {
  final text = '${result.stdout}\n${result.stderr}';
  File('${stage.path}/$name.log').writeAsStringSync(text);
  return text;
}

const _excluded = {
  '.git',
  '.dart_tool',
  'build',
  'coverage',
  '.idea',
  'pubspec_overrides.yaml',
  'pubspec.lock',
  '.flutter-plugins-dependencies',
  '.packages',
};
void _copy(Directory from, Directory to) {
  to.createSync(recursive: true);
  for (final entry in from.listSync(followLinks: false)) {
    final name = entry.uri.pathSegments
        .where((segment) => segment.isNotEmpty)
        .last;
    if (_excluded.contains(name)) continue;
    if (entry is Directory) {
      _copy(entry, Directory('${to.path}/$name'));
    } else if (entry is File) {
      entry.copySync('${to.path}/$name');
    } else {
      throw StateError(
        'Publication source contains an unsupported link entry.',
      );
    }
  }
}

Future<void> _verify(List<PackageRelease> releases) async {
  final token = Platform.environment['PUB_VYUH_TOKEN'];
  if (token == null || token.isEmpty)
    throw StateError('PUB_VYUH_TOKEN is required for registry verification.');
  final client = HttpClient();
  try {
    for (final release in releases) {
      Map<String, dynamic>? metadata;
      for (var attempt = 0; attempt < 3; attempt++) {
        try {
          final request = await client
              .getUrl(
                Uri.parse('$publicationRegistry/api/packages/${release.name}'),
              )
              .timeout(const Duration(seconds: 15));
          request.followRedirects = false;
          request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $token');
          final response = await request.close().timeout(
            const Duration(seconds: 15),
          );
          if (response.statusCode == 200) {
            final body = await utf8.decoder
                .bind(response)
                .join()
                .timeout(const Duration(seconds: 15));
            metadata = Map<String, dynamic>.from(jsonDecode(body) as Map);
            break;
          }
          await response.drain<void>();
          if (response.statusCode < 500 &&
              ![408, 429].contains(response.statusCode)) {
            throw StateError(
              '${release.name}: registry returned HTTP ${response.statusCode}.',
            );
          }
        } on StateError {
          rethrow;
        } catch (_) {
          // Bounded retry; credentials and remote response bodies stay private.
        }
        if (attempt < 2)
          await Future<void>.delayed(Duration(seconds: attempt + 1));
      }
      if (metadata == null ||
          !registryContainsInternalRelease(metadata, release)) {
        throw StateError(
          '${release.name} ${release.version} is missing or does not record the internal tier.',
        );
      }
      stdout.writeln(
        'VERIFIED ${release.name} ${release.version} ($publicationTier)',
      );
    }
  } finally {
    client.close(force: true);
  }
}
