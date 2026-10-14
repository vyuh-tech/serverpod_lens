import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;

/// Content stamp for the internal viewer; file timestamps never decide freshness.
final class ViewerBuildCache {
  ViewerBuildCache({
    required this.viewerDirectory,
    required this.sourceDirectories,
    this.manifestFiles = const [],
  });
  final Directory viewerDirectory;
  final List<Directory> sourceDirectories;
  final List<File> manifestFiles;
  File get _stamp =>
      File(path.join(viewerDirectory.path, 'build/lens-source.sha256'));

  String fingerprint() {
    final entries = <String, String>{'dart': Platform.version};
    for (var i = 0; i < sourceDirectories.length; i++) {
      final root = sourceDirectories[i];
      if (!root.existsSync()) continue;
      final files =
          root
              .listSync(recursive: true, followLinks: false)
              .whereType<File>()
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));
      for (final file in files) {
        entries['$i/${path.relative(file.path, from: root.path)}'] = sha256
            .convert(file.readAsBytesSync())
            .toString();
      }
    }
    for (var i = 0; i < manifestFiles.length; i++) {
      final file = manifestFiles[i];
      entries['manifest:$i'] = file.existsSync()
          ? sha256.convert(file.readAsBytesSync()).toString()
          : 'missing';
    }
    return sha256.convert(utf8.encode(jsonEncode(entries))).toString();
  }

  bool isCurrent(String fingerprint) =>
      File(path.join(viewerDirectory.path, 'build/web/index.html'))
          .existsSync() &&
      _stamp.existsSync() &&
      _stamp.readAsStringSync().trim() == fingerprint;
  void markBuilt(String fingerprint) {
    _stamp.parent.createSync(recursive: true);
    _stamp.writeAsStringSync(fingerprint);
  }
}
