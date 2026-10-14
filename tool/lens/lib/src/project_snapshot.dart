import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:serverpod_lens_schema/io.dart';

typedef TargetRunner = Future<ProcessResult> Function(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
});

/// Reads the current generated target without starting Serverpod or touching its DB.
final class ProjectSnapshotLoader {
  ProjectSnapshotLoader(
    this.directory, {
    this.runner,
    this.extractionTimeout = const Duration(seconds: 45),
  }) {
    if (extractionTimeout <= Duration.zero) {
      throw ArgumentError.value(extractionTimeout, 'extractionTimeout');
    }
  }
  final Directory directory;
  final TargetRunner? runner;
  final Duration extractionTimeout;
  late final _models = ModelSourceIndex(projectDirectory: directory.path);

  Future<ProcessResult> _runTarget(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  }) async {
    final targetRunner = runner;
    if (targetRunner != null) {
      return targetRunner(
        executable,
        arguments,
        workingDirectory: workingDirectory,
      ).timeout(extractionTimeout);
    }
    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
    );
    await process.stdin.close();
    final output = utf8.decoder.bind(process.stdout).join();
    final errors = utf8.decoder.bind(process.stderr).join();
    final result = Future.wait<Object>([process.exitCode, output, errors]);
    try {
      final values = await result.timeout(extractionTimeout);
      return ProcessResult(process.pid, values[0] as int, values[1], values[2]);
    } on TimeoutException {
      // A Future timeout alone leaves the extractor alive and consuming CPU.
      process.kill(ProcessSignal.sigkill);
      await result;
      rethrow;
    }
  }

  String get packageName {
    final manifest = File(path.join(directory.path, 'pubspec.yaml'));
    if (!manifest.existsSync()) {
      throw const FormatException(
        'Choose a Serverpod server folder containing pubspec.yaml.',
      );
    }
    final yaml = loadYaml(manifest.readAsStringSync());
    final name = yaml is YamlMap ? yaml['name'] : null;
    if (name is! String || !RegExp(r'^[a-z][a-z0-9_]{0,63}$').hasMatch(name)) {
      throw const FormatException('Invalid Serverpod package name.');
    }
    return name;
  }

  Future<LensSchemaSnapshot> read({String? knownRevision}) async {
    final name = packageName;
    final protocol = File(
      path.join(directory.path, 'lib/src/generated/protocol.dart'),
    );
    if (!protocol.existsSync()) {
      throw const FormatException(
        'Generated Serverpod protocol is missing. Generate the project with Serverpod first, then run Lens.',
      );
    }
    // Every explicit refresh reads the current native target, including dependencies.
    late List<Map<String, dynamic>> tables;
    final utility = File(
      path.join(
        directory.path,
        '.dart_tool/serverpod_lens/extract_target.dart',
      ),
    );
    await utility.parent.create(recursive: true);
    await utility.writeAsString('''
import 'dart:convert';
import 'package:$name/src/generated/protocol.dart';
void main() => print('LENS_TARGET_JSON=' + jsonEncode({'tables': Protocol().getTargetTableDefinitions()}));
''');
    late ProcessResult result;
    try {
      result = await _runTarget(
        Platform.environment['DART_BIN'] ??
            (path.basename(Platform.resolvedExecutable).startsWith('dart')
                ? path.join(
                    path.dirname(Platform.resolvedExecutable),
                    Platform.isWindows ? 'dart.exe' : 'dart',
                  )
                : 'dart'),
        ['run', utility.path],
        workingDirectory: directory.path,
      );
    } on TimeoutException {
      throw const FormatException(
        'Schema extraction timed out. Check project generation and retry Refresh.',
      );
    }
    if (result.exitCode != 0) {
      throw const FormatException(
        'Could not read the generated target. Run flutter pub get in your workspace and check Serverpod generation.',
      );
    }
    final lines = const LineSplitter().convert(result.stdout.toString());
    final encoded = lines
        .where((line) => line.startsWith('LENS_TARGET_JSON='))
        .singleOrNull;
    if (encoded == null) {
      throw const FormatException('No target schema returned by the project.');
    }
    final json = jsonDecode(
      encoded.substring('LENS_TARGET_JSON='.length),
    ) as Map<String, dynamic>;
    tables = (json['tables'] as List)
        .map((raw) => Map<String, dynamic>.from(raw as Map))
        .toList();
    final models = _models.read();
    return LensSchemaSource(projectId: name).read(
      tables,
      knownRevision: knownRevision,
      sourcePaths: models.paths,
      modelSources: models.sources,
    );
  }
}
