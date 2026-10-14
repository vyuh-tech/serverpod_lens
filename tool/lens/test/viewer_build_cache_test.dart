import 'dart:io';

import 'package:serverpod_lens_cli/serverpod_lens_cli.dart';
import 'package:test/test.dart';

void main() {
  test('cached viewer rebuilds for content and dependency changes, including preserved timestamps', () {
    final root = Directory.systemTemp.createTempSync('lens-build-');
    addTearDown(() => root.deleteSync(recursive: true));
    final lib = Directory('${root.path}/lib')..createSync();
    final source = File('${lib.path}/main.dart')
      ..writeAsStringSync('// before');
    final lock = File('${root.path}/pubspec.lock')..writeAsStringSync('before');
    final cache = ViewerBuildCache(
      viewerDirectory: root,
      sourceDirectories: [lib],
      manifestFiles: [lock],
    );
    var stamp = cache.fingerprint();
    expect(cache.isCurrent(stamp), isFalse);
    File('${root.path}/build/web/index.html')
      ..parent.createSync(recursive: true)
      ..writeAsStringSync('viewer');
    expect(cache.isCurrent(stamp), isFalse);
    cache.markBuilt(stamp);
    expect(cache.isCurrent(stamp), isTrue);
    final timestamp = source.lastModifiedSync();
    source.writeAsStringSync('// after!');
    source.setLastModifiedSync(timestamp);
    expect(cache.isCurrent(cache.fingerprint()), isFalse);
    stamp = cache.fingerprint();
    cache.markBuilt(stamp);
    lock.writeAsStringSync('after');
    expect(cache.isCurrent(cache.fingerprint()), isFalse);
    final stale = File('${root.path}/build/web/stale.wasm')
      ..writeAsStringSync('old asset');
    cache.clearOutput();
    expect(stale.existsSync(), isFalse);
    expect(source.existsSync(), isTrue);
    expect(cache.isCurrent(cache.fingerprint()), isFalse);
  });
}
