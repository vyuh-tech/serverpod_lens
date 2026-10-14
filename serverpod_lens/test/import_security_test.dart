import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

Uint8List zip(String name, List<int> content) => Uint8List.fromList(
  ZipEncoder().encode(
    Archive()..addFile(ArchiveFile(name, content.length, content)),
  ),
);
void main() {
  test('oversized compressed input is rejected before decoding', () {
    expect(
      ProjectAnalyzer.analyzeZip(
        Uint8List(20 * 1024 * 1024 + 1),
        name: 'huge.zip',
      ).isValid,
      isFalse,
    );
  });
  test('oversized expanded ZIP entry is rejected', () {
    final input = zip(
      'lib/src/large.spy.yaml',
      List.filled(9 * 1024 * 1024, 65),
    );
    expect(
      ProjectAnalyzer.analyzeZip(input, name: 'bomb.zip').isValid,
      isFalse,
    );
  });
  test('ZIP traversal paths cannot supply models', () {
    final input = zip(
      '../lib/src/model.spy.yaml',
      'class: Evil\ntable: evil\nfields:\n  name: String\n'.codeUnits,
    );
    expect(
      ProjectAnalyzer.analyzeZip(input, name: 'escape.zip').isValid,
      isFalse,
    );
  });
  test('lying ZIP expansion headers cannot bypass bounded decompression', () {
    final input = zip(
      'lib/src/large.spy.yaml',
      List.filled(9 * 1024 * 1024, 65),
    );
    final data = ByteData.sublistView(input);
    for (var i = 0; i < input.length - 46; i++) {
      final signature = data.getUint32(i, Endian.little);
      if (signature == 0x02014b50) data.setUint32(i + 24, 64, Endian.little);
      if (signature == 0x04034b50) data.setUint32(i + 22, 64, Endian.little);
    }
    expect(
      ProjectAnalyzer.analyzeZip(input, name: 'lying.zip').isValid,
      isFalse,
    );
  });
}
