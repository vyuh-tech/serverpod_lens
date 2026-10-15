import 'dart:io';

import 'package:serverpod_lens_schema/io.dart';

/// Packages bounded, authored table models for Cloud's compiled runtime.
void main() {
  final models = ModelSourceIndex().readBundle();
  final output = Directory('assets/lens-models');
  if (output.existsSync()) output.deleteSync(recursive: true);
  for (final entry in models.files.entries) {
    final relative = entry.key;
    if (!relative.startsWith('lib/') ||
        relative.split('/').any((part) => part == '..')) {
      throw StateError(
        'Model path must stay under this project lib directory.',
      );
    }
    final destination = File('${output.path}/$relative');
    destination.parent.createSync(recursive: true);
    destination.writeAsStringSync(entry.value);
  }
  stdout.writeln('Packaged ${models.files.length} authored model sources.');
}
