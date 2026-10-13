import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

import 'connected_schema_screen.dart';
import 'demo_sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HostApp());
}

Future<api.Client> initializeClient() async {
  final client = api.Client(await getServerUrl())
    ..connectivityMonitor = FlutterConnectivityMonitor()
    ..authSessionManager = FlutterAuthSessionManager();
  await client.auth.initialize();
  return client;
}

class HostApp extends StatefulWidget {
  const HostApp({super.key});

  @override
  State<HostApp> createState() => _HostAppState();
}

class _HostAppState extends State<HostApp> {
  late Future<api.Client> _client = initializeClient();

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Serverpod Lens',
    debugShowCheckedModeBanner: false,
    localizationsDelegates: GlobalMaterialLocalizations.delegates,
    theme: _theme(Brightness.light),
    darkTheme: _theme(Brightness.dark),
    home: FutureBuilder<api.Client>(
      future: _client,
      builder: (context, snapshot) {
        final client = snapshot.data;
        if (client == null) {
          return Scaffold(
            appBar: AppBar(title: const Text('Serverpod Lens')),
            body: Center(
              child: snapshot.hasError
                  ? FilledButton(
                      onPressed: () =>
                          setState(() => _client = initializeClient()),
                      child: const Text('Retry connection'),
                    )
                  : const CircularProgressIndicator(
                      semanticsLabel: 'Restoring session',
                    ),
            ),
          );
        }
        return ValueListenableBuilder(
          valueListenable: client.auth.authInfoListenable,
          builder: (context, auth, _) => auth == null
              ? _SignInScreen(client: client)
              : ConnectedSchemaScreen(
                  key: ValueKey(auth.authUserId.toString()),
                  client: client,
                  accountId: auth.authUserId.toString(),
                ),
        );
      },
    ),
  );
}

class _SignInScreen extends StatelessWidget {
  const _SignInScreen({required this.client});
  final api.Client client;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Serverpod Lens')),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 440),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Explore your Serverpod schema',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              const Text(
                'Sign in to open the host’s current schema, follow relationships, and check for updates. Your project owner controls access.',
              ),
              const SizedBox(height: 32),
              DemoSignIn(client: client),
            ],
          ),
        ),
      ),
    ),
  );
}

ThemeData _theme(Brightness brightness) {
  final dark = brightness == Brightness.dark;
  final scheme =
      ColorScheme.fromSeed(
        seedColor: const Color(0xff737373),
        brightness: brightness,
      ).copyWith(
        primary: dark ? const Color(0xffeeeeee) : const Color(0xff242424),
        onPrimary: dark ? const Color(0xff151515) : Colors.white,
        surface: dark ? const Color(0xff151515) : const Color(0xfffafafa),
        surfaceTint: Colors.transparent,
      );
  return ThemeData(
    colorScheme: scheme,
    scaffoldBackgroundColor: scheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: scheme.surface,
      surfaceTintColor: Colors.transparent,
    ),
    inputDecorationTheme: const InputDecorationTheme(isDense: true),
  );
}
