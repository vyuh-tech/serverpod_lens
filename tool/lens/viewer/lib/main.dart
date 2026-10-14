import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:serverpod_lens/serverpod_lens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LocalLensApp());
}

/// The CLI's shared viewer. It only reads the launching project's loopback URL.
class LocalLensApp extends StatefulWidget {
  const LocalLensApp({super.key});
  @override
  State<LocalLensApp> createState() => _LocalLensAppState();
}

class _LocalLensAppState extends State<LocalLensApp> {
  final _appearance = LensThemeController();
  final _http = http.Client();
  late final _connection = SchemaSnapshotController(load: _load);
  SchemaGraph? get _graph => _connection.graph;
  String? get _project => _connection.projectId;
  Map<String, String> get _paths => _connection.sourcePaths;
  Map<String, String> get _sources => _connection.modelSources;
  bool get _loading => _connection.loading;
  String? get _error => _connection.failure == null
      ? null
      : _graph == null
      ? 'Could not load the local schema. Check the Lens command and retry.'
      : 'Could not refresh. Your last schema is still available.';

  @override
  void initState() {
    super.initState();
    unawaited(_appearance.restore());
    unawaited(_refresh());
  }

  Future<void> _refresh() => _connection.refresh();
  Future<LensSchemaSnapshot> _load(String? revision) async {
    final endpoint = Uri.base
        .resolve('/lens/schema')
        .replace(queryParameters: {'knownRevision': ?revision});
    final response = await _http
        .get(endpoint)
        .timeout(const Duration(seconds: 60));
    if (response.statusCode != 200) {
      throw const FormatException('Schema refresh failed');
    }
    return LensSchemaSnapshot.fromJson(
      Map<String, dynamic>.from(jsonDecode(response.body) as Map),
    );
  }

  @override
  void dispose() {
    _connection.dispose();
    _http.close();
    _appearance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LensThemeScope(
    controller: _appearance,
    child: ValueListenableBuilder<ThemeMode>(
      valueListenable: _appearance,
      builder: (_, mode, _) => ListenableBuilder(
        listenable: _connection,
        builder: (_, _) => MaterialApp(
          title: 'Serverpod Lens',
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
          darkTheme: ThemeData(
            colorSchemeSeed: Colors.blue,
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          home: _graph == null
              ? Scaffold(
                  appBar: AppBar(title: const Text('Serverpod Lens')),
                  body: Center(
                    child: _loading
                        ? const CircularProgressIndicator()
                        : Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(_error ?? 'Schema unavailable'),
                              FilledButton(
                                onPressed: _refresh,
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                  ),
                )
              : SchemaViewer(
                  graph: _graph!,
                  sourcePaths: _paths,
                  modelSources: _sources,
                  storageKey: 'local:$_project',
                  importActions: [
                    if (_error != null)
                      IconButton(
                        tooltip: _error,
                        onPressed: _refresh,
                        icon: const Icon(Icons.error_outline),
                      ),
                    IconButton(
                      tooltip: 'Refresh schema',
                      onPressed: _loading ? null : _refresh,
                      icon: const Icon(Icons.refresh),
                    ),
                  ],
                ),
        ),
      ),
    ),
  );
}
