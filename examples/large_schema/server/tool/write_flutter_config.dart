import 'dart:convert';
import 'dart:io';

/// Writes the host address expected by Serverpod Flutter's getServerUrl().
void main(List<String> args) {
  final uri = args.length == 1 ? Uri.tryParse(args.single) : null;
  if (uri == null ||
      !{'http', 'https'}.contains(uri.scheme) ||
      uri.host.isEmpty ||
      uri.userInfo.isNotEmpty) {
    stderr.writeln('Usage: dart tool/write_flutter_config.dart <api-url>');
    exitCode = 64;
    return;
  }
  if (!File('web/app/index.html').existsSync()) {
    stderr.writeln('Build the connected Flutter app into web/app first.');
    exitCode = 66;
    return;
  }
  final file = File('web/app/assets/assets/config.json');
  file.parent.createSync(recursive: true);
  file.writeAsStringSync(jsonEncode({'apiUrl': uri.toString()}));
  stdout.writeln('Wrote Flutter host API configuration.');
}
