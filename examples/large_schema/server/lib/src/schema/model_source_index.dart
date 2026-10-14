import 'package:serverpod_lens_schema/io.dart';

export 'package:serverpod_lens_schema/io.dart' show ModelSourceIndex;

/// Source lookup owned by this example host, independent of schema extraction.
({Map<String, String> paths, Map<String, String> sources})
readHostModelSources({
  String projectDirectory = '.',
}) {
  final authored = ModelSourceIndex(projectDirectory: projectDirectory).read();
  if (authored.paths.isNotEmpty) return authored;

  // Cloud's compiled runtime retains assets, not the original lib directory.
  // Index the same model files there while preserving their repository paths.
  return ModelSourceIndex(
    projectDirectory: '$projectDirectory/assets/lens-models',
  ).read();
}
