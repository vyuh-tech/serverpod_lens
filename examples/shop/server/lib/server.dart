import 'src/generated/serverpod.dart';

/// A normal Serverpod application. Lens does not need this server to be running.
Future<void> run(List<String> args) async {
  final pod = Serverpod(args);
  await pod.start();
}
