import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

typedef SnapshotReader = Future<LensSchemaSnapshot> Function({
  String? knownRevision,
});

/// Loopback-only developer viewer. Serves a fixed build and a fixed project's
/// snapshot; no request can select a filesystem path or project.
final class LensLocalServer {
  LensLocalServer({
    required this.webDirectory,
    required this.readSnapshot,
    this.reportFailure = _reportFailure,
  });
  final Directory webDirectory;
  final SnapshotReader readSnapshot;
  final void Function(Object) reportFailure;
  HttpServer? _server;
  Future<void>? _refresh;
  LensSchemaSnapshot? _snapshot;

  Uri get url => Uri.parse('http://127.0.0.1:${_server!.port}/');

  Future<void> start({int port = 0}) async {
    if (_server != null) throw StateError('Lens is already running');
    if (!File(path.join(webDirectory.path, 'index.html')).existsSync()) {
      throw const FormatException('The Lens web build is missing index.html.');
    }
    _snapshot = await readSnapshot();
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);
    _server!.listen(_handle);
  }

  Future<void> close() async {
    final server = _server;
    _server = null;
    await server?.close(force: true);
  }

  Future<void> _handle(HttpRequest request) async {
    try {
      final origin = request.headers.value('origin');
      final host = request.headers.value(HttpHeaders.hostHeader);
      final allowedHost = host == url.authority;
      if (!allowedHost || (origin != null && origin != url.origin)) {
        request.response.statusCode = HttpStatus.forbidden;
        await request.response.close();
        return;
      }
      request.response.headers.set('X-Content-Type-Options', 'nosniff');
      request.response.headers.set('Referrer-Policy', 'no-referrer');
      if (request.method != 'GET' && request.method != 'HEAD') {
        request.response.statusCode = HttpStatus.methodNotAllowed;
        request.response.headers.set('Allow', 'GET, HEAD');
      } else if (request.uri.path == '/lens/schema') {
        // Manual requests share an in-flight read, rather than spawning N Dart processes.
        if (request.uri.queryParameters.containsKey('knownRevision')) {
          _refresh ??= readSnapshot()
              .then((snapshot) => _snapshot = snapshot)
              .then((_) {})
              .whenComplete(() => _refresh = null);
          await _refresh;
        }
        final snapshot = _snapshot!;
        final body = snapshot.toJson();
        if (request.uri.queryParameters['knownRevision'] == snapshot.revision) {
          body.remove('graph');
          body.remove('sourcePaths');
          body.remove('modelSources');
        }
        request.response.headers.contentType = ContentType.json;
        request.response.headers.set('Cache-Control', 'no-store');
        if (request.method == 'GET') request.response.write(jsonEncode(body));
      } else {
        final segments = request.uri.pathSegments;
        if (segments.any(
          (segment) =>
              segment == '..' ||
              segment == '.' ||
              segment.contains('\\') ||
              segment.contains('\u0000'),
        )) {
          request.response.statusCode = HttpStatus.notFound;
        } else {
          final relative = segments.isEmpty || request.uri.path == '/'
              ? 'index.html'
              : path.joinAll(segments);
          final file = File(path.join(webDirectory.path, relative));
          final root = webDirectory.resolveSymbolicLinksSync();
          if (!file.existsSync() ||
              !path.isWithin(root, file.resolveSymbolicLinksSync())) {
            request.response.statusCode = HttpStatus.notFound;
          } else {
            request.response.headers.contentType = switch (path.extension(
              file.path,
            )) {
              '.html' => ContentType.html,
              '.js' => ContentType('text', 'javascript'),
              '.json' => ContentType.json,
              '.wasm' => ContentType('application', 'wasm'),
              '.png' => ContentType('image', 'png'),
              '.svg' => ContentType('image', 'svg+xml'),
              '.ttf' => ContentType('font', 'ttf'),
              _ => ContentType.binary,
            };
            request.response.headers.set('Cache-Control', 'no-store');
            if (request.method == 'GET') {
              await request.response.addStream(file.openRead());
            }
          }
        }
      }
      await request.response.close();
    } catch (error) {
      reportFailure(error);
      request.response.statusCode = HttpStatus.internalServerError;
      request.response.headers.contentType = ContentType.json;
      request.response.write(
        jsonEncode({
          'error': 'Could not refresh the generated schema. Check the local CLI output and project generation.',
        }),
      );
      await request.response.close();
    }
  }
}

void _reportFailure(Object error) {
  // Controlled FormatException messages describe project/generation failures.
  // Other errors expose only their type; do not print model bodies or credentials.
  stderr.writeln(
    'Lens request failed: ${error is FormatException ? error.message : error.runtimeType}.',
  );
}
