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
  SchemaGraph? _graph;
  String? _revision;
  String? _project;
  Map<String, String> _paths = {};
  Map<String, String> _sources = {};
  String? _error;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    unawaited(_appearance.restore());
    unawaited(_refresh());
  }

  Future<void> _refresh() async {
    if (_loading) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final endpoint = Uri.base
          .resolve('/lens/schema')
          .replace(
            queryParameters: {
              'knownRevision': ?_revision,
            },
          );
      final response = await _http
          .get(endpoint)
          .timeout(const Duration(seconds: 60));
      if (!mounted) return;
      if (response.statusCode != 200) {
        throw const FormatException('Schema refresh failed');
      }
      final snapshot = jsonDecode(response.body) as Map<String, dynamic>;
      final project = snapshot['projectId'];
      final revision = snapshot['revision'];
      if (project is! String ||
          revision is! String ||
          revision.isEmpty ||
          snapshot['sourceKind'] != 'currentTarget' ||
          (_project != null && project != _project)) {
        throw const FormatException('Invalid local snapshot');
      }
      if (snapshot['graph'] != null && revision != _revision) {
        _graph = SchemaGraph.fromJson(
          Map<String, dynamic>.from(snapshot['graph'] as Map),
        );
        _paths = Map<String, String>.from(
          snapshot['sourcePaths'] as Map? ?? {},
        );
        _sources = Map<String, String>.from(
          snapshot['modelSources'] as Map? ?? {},
        );
      } else if (_graph == null || revision != _revision) {
        throw const FormatException('Missing initial graph');
      }
      _project = project;
      _revision = revision;
    } catch (_) {
      if (!mounted) return;
      _error = _graph == null
          ? 'Could not load the local schema. Check the Lens command and retry.'
          : 'Could not refresh. Your last schema is still available.';
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _http.close();
    _appearance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LensThemeScope(
    controller: _appearance,
    child: ValueListenableBuilder<ThemeMode>(
      valueListenable: _appearance,
      builder: (_, mode, _) => MaterialApp(
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
  );
}
