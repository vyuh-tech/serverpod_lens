import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'package:serverpod_lens_cli/serverpod_lens_cli.dart';

Future<void> main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'project',
      defaultsTo: '.',
      help: 'Serverpod server package folder.',
    )
    ..addOption(
      'port',
      defaultsTo: '0',
      help: 'Loopback port; 0 chooses a free port.',
    )
    ..addOption('web-dir', help: 'Use an existing Lens launcher web build.')
    ..addOption(
      'flutter-bin',
      defaultsTo: 'flutter',
      help: 'Flutter executable for the first web build.',
    )
    ..addFlag('rebuild', negatable: false, help: 'Rebuild the tooling viewer.')
    ..addFlag('help', abbr: 'h', negatable: false);
  try {
    final args = parser.parse(arguments);
    if (args['help'] as bool) {
      stdout.writeln('Serverpod Lens — local schema explorer\n${parser.usage}');
      return;
    }
    final port = int.tryParse(args['port'] as String);
    if (port == null || port < 0 || port > 65535) {
      throw const FormatException('Port must be between 0 and 65535.');
    }
    final project = Directory(path.absolute(args['project'] as String));
    final loader = ProjectSnapshotLoader(project);
    // Validate the project before any potentially expensive viewer build.
    loader.packageName;
    final packageLibrary = await Isolate.resolvePackageUri(
      Uri.parse('package:serverpod_lens_cli/serverpod_lens_cli.dart'),
    );
    if (packageLibrary == null) {
      throw const FormatException('Cannot locate the installed Lens package.');
    }
    final packageRoot = Directory.fromUri(packageLibrary.resolve('../'));
    final viewerRoot = Directory(path.join(packageRoot.path, 'viewer'));
    final web = args['web-dir'] == null
        ? Directory(path.join(viewerRoot.path, 'build/web'))
        : Directory(path.absolute(args['web-dir'] as String));
    final packageLibraries = await Future.wait([
      Isolate.resolvePackageUri(
        Uri.parse('package:serverpod_lens/serverpod_lens.dart'),
      ),
      Isolate.resolvePackageUri(
        Uri.parse('package:serverpod_lens_schema/serverpod_lens_schema.dart'),
      ),
    ]);
    final packageRoots = [
      for (final library in packageLibraries)
        if (library != null) Directory.fromUri(library.resolve('../')),
    ];
    final workspace = packageRoot.parent.parent;
    final cache = ViewerBuildCache(
      viewerDirectory: viewerRoot,
      sourceDirectories: [
        Directory(path.join(viewerRoot.path, 'lib')),
        Directory(path.join(viewerRoot.path, 'web')),
        for (final root in packageRoots) Directory(path.join(root.path, 'lib')),
      ],
      manifestFiles: [
        File(path.join(viewerRoot.path, 'pubspec.yaml')),
        File(path.join(workspace.path, 'pubspec.lock')),
        for (final root in packageRoots)
          File(path.join(root.path, 'pubspec.yaml')),
      ],
    );
    final fingerprint = cache.fingerprint();
    if (args['web-dir'] == null &&
        (args['rebuild'] as bool || !cache.isCurrent(fingerprint))) {
      stdout.writeln(
        'Building the shared Lens viewer. Flutter and Vyuh extension access are required.',
      );
      final process = await Process.start(
        args['flutter-bin'] as String,
        ['build', 'web', '--release', '--no-wasm-dry-run'],
        workingDirectory: viewerRoot.path,
        mode: ProcessStartMode.inheritStdio,
      );
      if (await process.exitCode != 0) {
        throw const FormatException(
          'Viewer build failed. Check Flutter and Vyuh registry access.',
        );
      }
      cache.markBuilt(fingerprint);
    }
    final server = LensLocalServer(
      webDirectory: web,
      readSnapshot: loader.read,
    );
    await server.start(port: port);
    stdout.writeln(
      'Serverpod Lens: ${server.url}\nProject: ${loader.packageName}\nLocal access only. Use Refresh after model generation. Ctrl+C to stop.',
    );
    final stopped = Completer<void>();
    final subscriptions = <StreamSubscription<ProcessSignal>>[];
    for (final signal in [
      ProcessSignal.sigint,
      if (!Platform.isWindows) ProcessSignal.sigterm,
    ]) {
      subscriptions.add(
        signal.watch().listen((_) {
          if (!stopped.isCompleted) stopped.complete();
        }),
      );
    }
    await stopped.future;
    for (final subscription in subscriptions) {
      await subscription.cancel();
    }
    await server.close();
  } on FormatException catch (error) {
    stderr.writeln('Lens: ${error.message}');
    exitCode = 64;
  } catch (_) {
    stderr.writeln(
      'Lens could not start. Check the project, generated protocol and Flutter build.',
    );
    exitCode = 1;
  }
}
