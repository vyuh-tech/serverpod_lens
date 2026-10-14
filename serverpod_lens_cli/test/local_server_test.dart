import 'dart:convert';
import 'dart:io';

import 'package:serverpod_lens_backend/serverpod_lens_backend.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';
import 'package:serverpod_lens_cli/serverpod_lens_cli.dart';
import 'package:test/test.dart';

void main() {
  late Directory web;
  late LensLocalServer server;
  late HttpClient client;
  var reads = 0;
  setUp(() async {
    reads = 0;
    web = Directory.systemTemp.createTempSync('lens-web-');
    File('${web.path}/index.html').writeAsStringSync('<title>Lens</title>');
    server = LensLocalServer(
      webDirectory: web,
      readSnapshot: ({knownRevision}) async {
        reads++;
        return LensSchemaSnapshot(
          projectId: 'shop',
          sourceKind: 'currentTarget',
          revision: 'abc',
          checkedAt: DateTime.utc(2026),
          graph: SchemaGraph(
            source: 'Shop',
            generatedAt: DateTime.utc(2026),
            modules: [],
            tables: [],
            enums: [],
          ),
        );
      },
    );
    await server.start();
    client = HttpClient();
  });
  tearDown(() async {
    client.close(force: true);
    await server.close();
    web.deleteSync(recursive: true);
  });

  test(
    'serves loopback URL and initial snapshot without rereading the target',
    () async {
      expect(server.url.host, '127.0.0.1');
      final response = await (await client.getUrl(
        server.url.resolve('lens/schema'),
      )).close();
      final snapshot =
          jsonDecode(await utf8.decoder.bind(response).join()) as Map;
      expect(response.statusCode, 200);
      expect(snapshot['projectId'], 'shop');
      expect(snapshot['graph'], isNotNull);
      expect(reads, 1);
    },
  );
  test(
    'manual refresh checks the target and omits unchanged payload',
    () async {
      final response = await (await client.getUrl(
        server.url.resolve('lens/schema?knownRevision=abc'),
      )).close();
      final snapshot =
          jsonDecode(await utf8.decoder.bind(response).join()) as Map;
      expect(snapshot.containsKey('graph'), isFalse);
      expect(reads, 2);
    },
  );
  test('rejects cross-origin access and DNS rebinding host headers', () async {
    final request = await client.getUrl(server.url.resolve('lens/schema'));
    request.headers.set('Origin', 'https://attacker.invalid');
    expect((await request.close()).statusCode, 403);
    final rebound = await client.getUrl(server.url.resolve('lens/schema'));
    rebound.headers.set('Host', 'attacker.invalid');
    expect((await rebound.close()).statusCode, 403);
  });
  test('rejects writes and links outside the fixed web root', () async {
    final post = await client.postUrl(server.url.resolve('lens/schema'));
    expect((await post.close()).statusCode, 405);
    final outside = File(
      '${web.parent.path}/${web.uri.pathSegments.where((s) => s.isNotEmpty).last}-private.txt',
    )..writeAsStringSync('secret');
    addTearDown(() => outside.deleteSync());
    Link('${web.path}/private.txt').createSync(outside.path);
    final response = await (await client.getUrl(
      server.url.resolve('private.txt'),
    )).close();
    expect(response.statusCode, 404);
    expect(await utf8.decoder.bind(response).join(), isNot(contains('secret')));
  });
}
