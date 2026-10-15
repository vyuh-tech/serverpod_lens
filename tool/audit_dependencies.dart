// Query OSV for locked public Pub/npm dependencies. SDK and private packages
// have no public advisory lookup and are excluded.
import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

Future<void> main() async {
  final lock = loadYaml(File('pubspec.lock').readAsStringSync()) as YamlMap;
  final packages = lock['packages'] as YamlMap;
  final queries = <Map<String, Object>>[];
  for (final entry in packages.entries) {
    final package = entry.value as YamlMap;
    final description = package['description'];
    if (package['source'] == 'hosted' &&
        description is YamlMap &&
        Uri.tryParse('${description['url']}')?.host == 'pub.dev') {
      queries.add({
        'package': {'name': entry.key, 'ecosystem': 'Pub'},
        'version': package['version'] as String,
      });
    }
  }
  final npm = jsonDecode(
    File('tool/lens/imports/tool/package-lock.json').readAsStringSync(),
  ) as Map<String, dynamic>;
  final npmPackages = npm['packages'] as Map<String, dynamic>;
  for (final entry in npmPackages.entries) {
    final package = entry.value as Map<String, dynamic>;
    if (entry.key.startsWith('node_modules/') && package['version'] != null) {
      queries.add({
        'package': {
          'name': entry.key.split('node_modules/').last,
          'ecosystem': 'npm',
        },
        'version': package['version'] as String,
      });
    }
  }

  final client = HttpClient()..connectionTimeout = const Duration(seconds: 30);
  try {
    final request = await client.postUrl(
      Uri.https('api.osv.dev', '/v1/querybatch'),
    );
    request.headers.contentType = ContentType.json;
    request.write(jsonEncode({'queries': queries}));
    final response = await request.close().timeout(const Duration(seconds: 60));
    if (response.statusCode != HttpStatus.ok) {
      throw HttpException('OSV returned HTTP ${response.statusCode}.');
    }
    final body = await utf8.decoder
        .bind(response)
        .join()
        .timeout(const Duration(seconds: 60));
    final payload = jsonDecode(body) as Map<String, dynamic>;
    final results = payload['results'] as List<dynamic>;
    if (results.length != queries.length) {
      throw const FormatException('OSV returned an incomplete scan.');
    }
    final findings = <Map<String, Object?>>[];
    for (var i = 0; i < results.length; i++) {
      final result = results[i] as Map<String, dynamic>;
      if (result['next_page_token'] != null) {
        throw const FormatException('OSV returned paginated findings.');
      }
      if ((result['vulns'] as List<dynamic>?)?.isNotEmpty ?? false) {
        findings.add({...queries[i], ...result});
      }
    }
    stdout.writeln('Scanned locked packages: ${queries.length}');
    stdout.writeln(const JsonEncoder.withIndent('  ').convert(findings));
    if (findings.isNotEmpty) exitCode = 1;
  } finally {
    client.close(force: true);
  }
}
