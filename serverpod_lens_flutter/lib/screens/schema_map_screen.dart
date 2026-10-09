import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:file_selector/file_selector.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

/// Standalone demo: source loading belongs here; rendering belongs to the package.
class SchemaMapScreen extends StatefulWidget {
  const SchemaMapScreen({super.key, this.asset = 'assets/schema_graph.json'});
  final String asset;
  @override
  State<SchemaMapScreen> createState() => _SchemaMapScreenState();
}

class _SchemaMapScreenState extends State<SchemaMapScreen> {
  SchemaGraph? _graph;
  String? _error;
  bool _importing = false;
  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load() async {
    try {
      final graph = SchemaDiagram.graphFromJson(
        await rootBundle.loadString(widget.asset),
      );
      if (mounted) setState(() => _graph = graph);
    } catch (error) {
      if (mounted) setState(() => _error = '$error');
    }
  }

  Future<void> _accept(SchemaGraph graph, List<String> warnings) async {
    if (!mounted) return;
    if (warnings.isNotEmpty) {
      final render = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Import notes'),
          content: SizedBox(
            width: 600,
            child: SingleChildScrollView(
              child: SelectableText(warnings.join('\n\n')),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Render supported schema'),
            ),
          ],
        ),
      );
      if (render != true || !mounted) return;
    }
    setState(() => _graph = graph);
  }

  void _message(Object error) {
    if (mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('$error')));
    }
  }

  Future<void> _importFile() async {
    if (_importing) return;
    setState(() => _importing = true);
    try {
      final file = await openFile(
        acceptedTypeGroups: [
          const XTypeGroup(
            label: 'Schema sources',
            extensions: ['zip', 'json', 'yaml', 'yml', if (kIsWeb) 'sql'],
          ),
        ],
      );
      if (file == null || !mounted) return;
      final name = file.name;
      final extensionName = name.toLowerCase();
      if (extensionName.endsWith('.sql')) {
        final result = await PostgresSchemaImporter.fromSql(
          await file.readAsString(),
          source: name,
        );
        if (result.graph.tables.isEmpty) {
          throw const FormatException(
            'No CREATE TABLE declarations were found.',
          );
        }
        await _accept(result.graph, result.warnings);
      } else if (extensionName.endsWith('.json')) {
        final graph = SchemaExtractor.fromDefinitionJson(
          await file.readAsString(),
          source: name,
        );
        await _accept(
          graph,
          name == 'definition_project.json'
              ? [
                  'Project-only definition: installed module tables may be absent.',
                ]
              : const [],
        );
      } else {
        final analysis = extensionName.endsWith('.zip')
            ? ProjectAnalyzer.analyzeZip(await file.readAsBytes(), name: name)
            : ProjectAnalyzer.analyzeYamlFiles({
                name: await file.readAsString(),
              }, name: name);
        if (!analysis.isValid) {
          throw FormatException(analysis.warnings.join('\n'));
        }
        await _accept(analysis.graph, analysis.warnings);
      }
    } catch (error) {
      _message('Could not import schema: $error');
    } finally {
      if (mounted) setState(() => _importing = false);
    }
  }

  Future<void> _pasteSql() async {
    final sql = await showDialog<String>(
      context: context,
      builder: (_) => const _SqlDialog(),
    );
    if (sql == null || !mounted) return;
    setState(() => _importing = true);
    try {
      final result = await PostgresSchemaImporter.fromSql(sql);
      if (result.graph.tables.isEmpty) {
        throw const FormatException('No CREATE TABLE declarations were found.');
      }
      await _accept(result.graph, result.warnings);
    } catch (error) {
      _message('Could not import SQL: $error');
    } finally {
      if (mounted) setState(() => _importing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_graph == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Serverpod Lens')),
        body: Center(
          child: _error == null
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(_error!),
                    TextButton(onPressed: _load, child: const Text('Retry')),
                  ],
                ),
        ),
      );
    }
    return Stack(
      children: [
        SchemaViewer(
          graph: _graph!,
          onImport: _importing ? null : _importFile,
          importActions: [
            if (kIsWeb)
              IconButton(
                tooltip: 'Paste SQL',
                onPressed: _importing ? null : _pasteSql,
                icon: const Icon(Icons.code),
              ),
          ],
        ),
        if (_importing)
          const Positioned(
            top: 56,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(),
          ),
      ],
    );
  }
}

class _SqlDialog extends StatefulWidget {
  const _SqlDialog();
  @override
  State<_SqlDialog> createState() => _SqlDialogState();
}

class _SqlDialogState extends State<_SqlDialog> {
  final _text = TextEditingController();
  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('Import PostgreSQL'),
    content: SizedBox(
      width: 700,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Paste CREATE TABLE statements and related DDL. Parsing happens locally; SQL is never executed.',
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _text,
              autofocus: true,
              minLines: 6,
              maxLines: 12,
              decoration: const InputDecoration(
                labelText: 'SQL',
                hintText: 'CREATE TABLE public.users (id bigint PRIMARY KEY);',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Cancel'),
      ),
      FilledButton(
        onPressed: () => Navigator.pop(context, _text.text),
        child: const Text('Import'),
      ),
    ],
  );
}
