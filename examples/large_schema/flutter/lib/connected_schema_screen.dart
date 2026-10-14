import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

import 'connected_schema_controller.dart';

class ConnectedSchemaScreen extends StatefulWidget {
  const ConnectedSchemaScreen({
    super.key,
    required this.client,
    required this.accountId,
    this.projectId = 'serverpod_lens',
  });
  final api.Client client;
  final String accountId;
  final String projectId;

  @override
  State<ConnectedSchemaScreen> createState() => _ConnectedSchemaScreenState();
}

class _ConnectedSchemaScreenState extends State<ConnectedSchemaScreen> {
  late final ConnectedSchemaController _connection;

  @override
  void initState() {
    super.initState();
    _connection = ConnectedSchemaController(
      (revision) => widget.client.schema.snapshot(
        projectId: widget.projectId,
        knownRevision: revision,
      ),
      projectId: widget.projectId,
    );
    unawaited(_connection.refresh());
  }

  @override
  void dispose() {
    _connection.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ConnectedSchemaView(
    connection: _connection,
    accountId: widget.accountId,
    projectId: widget.projectId,
    onSignOut: () async {
      final success = await widget.client.auth.signOutDevice();
      if (!success && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Could not sign out. Please try again.'),
          ),
        );
      }
    },
  );
}

class ConnectedSchemaView extends StatelessWidget {
  const ConnectedSchemaView({
    super.key,
    required this.connection,
    required this.accountId,
    this.projectId = 'serverpod_lens',
    required this.onSignOut,
  });

  final ConnectedSchemaController connection;
  final String accountId;
  final String projectId;
  final VoidCallback onSignOut;

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: connection,
    builder: (context, _) {
      final graph = connection.graph;
      final actions = [
        IconButton(
          tooltip: 'Refresh host schema',
          onPressed: connection.loading ? null : connection.refresh,
          icon: const Icon(Icons.refresh),
        ),
        IconButton(
          tooltip: 'Sign out',
          onPressed: onSignOut,
          icon: const Icon(Icons.logout),
        ),
      ];
      if (graph == null) {
        return Scaffold(
          appBar: AppBar(title: const Text('Serverpod Lens'), actions: actions),
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (connection.loading) ...[
                      const LinearProgressIndicator(
                        semanticsLabel: 'Loading host schema',
                      ),
                      const SizedBox(height: 24),
                    ],
                    Text(
                      connection.accessDenied
                          ? 'Access not enabled'
                          : 'Connect to your host',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      connection.error ??
                          'Loading the current target schema from Serverpod…',
                    ),
                    if (connection.accessDenied) ...[
                      const SizedBox(height: 24),
                      const Text('Account ID to share with your project owner'),
                      const SizedBox(height: 8),
                      SelectableText(accountId),
                    ],
                    const SizedBox(height: 24),
                    FilledButton.icon(
                      onPressed: connection.loading ? null : connection.refresh,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Try again'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
      return Column(
        children: [
          if (connection.loading)
            const LinearProgressIndicator(
              semanticsLabel: 'Checking for schema updates',
            ),
          if (connection.error != null)
            Material(
              color: Theme.of(context).colorScheme.errorContainer,
              child: Semantics(
                liveRegion: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      connection.error!,
                      style: connection.error == null
                          ? null
                          : TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onErrorContainer,
                            ),
                    ),
                  ),
                ),
              ),
            ),
          Expanded(
            child: SchemaViewer(
              graph: graph,
              importActions: actions,
              storageKey: '$projectId/$accountId',
              sourcePaths: connection.sourcePaths,
              modelSources: connection.modelSources,
              onOpenModel: (path) async {
                final parts = path.split('/');
                if (!isSafeModelPath(path)) return;
                const base = String.fromEnvironment(
                  'LENS_SOURCE_BASE_URL',
                  defaultValue: 'https://github.com/vyuh-tech/serverpod_lens/blob/main/examples/large_schema/server/',
                );
                final baseUri = Uri.parse(base);
                if (baseUri.scheme != 'https' ||
                    !baseUri.hasAuthority ||
                    baseUri.userInfo.isNotEmpty) {
                  throw const FormatException(
                    'Model source base must be an HTTPS URL.',
                  );
                }
                final uri = baseUri.resolve(
                  parts.map(Uri.encodeComponent).join('/'),
                );
                if (!await launchUrl(uri) && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Could not open the model source.'),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      );
    },
  );
}
