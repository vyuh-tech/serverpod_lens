# Run Serverpod Lens locally

This sample backend exposes its own generated database schema through built-in
Serverpod authentication and a project read scope. Its recreated models are
fixtures; a real integration supplies the host project's own schema.

## Setup

Requires Flutter 3.47+, Dart 3.13+, the Serverpod CLI and publisher-issued access
to Vyuh's commercial extensions. Configure your registry token and install
workspace dependencies from the repository root:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd examples/large_schema/server
serverpod start
```

Serverpod manages the development database, generation and connected Flutter app.
Open **http://localhost:8092**. Generation and migrations are managed by Serverpod;
do not edit generated server/client code.

## Sign in and grant access

Create an account using built-in email authentication. Development verification
codes appear in server logs. New accounts require the operator to grant project
read access. From this server directory:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

Sign out and back in to receive the project scope. Public demo credentials are
provided in the hackathon submission; creating an account does not grant access.

## Embed in another project

The shared reader converts a resolved Serverpod migration definition to a plain
Dart graph. The Flutter viewer accepts that graph independently of its transport:

```dart
import 'package:serverpod_lens/serverpod_lens.dart';

final graph = SchemaExtractor.fromDefinitionJson(
  resolvedDefinitionJson,
  source: 'My Serverpod project',
);

SchemaViewer(graph: graph)
```

For a connected integration, add a protected schema endpoint to the project's
Serverpod backend and pass its graph to the widget. The sample endpoint exposes
only this host's target; importing a ZIP opens an offline snapshot.

The connected app loads once after sign-in and refreshes manually. Valid search,
selection and positions survive updates; access denial clears protected content.
See the [architecture](../../../docs/PLAN.md) for responsibilities and native Vyuh reuse.

## Offline demo and verification

For the independent demo, run `flutter run -d chrome` in `serverpod_lens_flutter`.
It accepts project ZIPs, migration definitions, YAML and PostgreSQL SQL. Resolved
Serverpod definitions are authoritative; YAML-only inference is partial.

From the repository root:

```sh
tool/verify.sh
```

Set `FLUTTER_BIN` and `DART_BIN` if the SDK is outside PATH. Tests use managed
embedded PostgreSQL and need no Docker. [Verification](../../../docs/VERIFICATION.md).

The packages are not yet published on pub.dev. Vyuh extensions require their own
license/entitlement. PostgreSQL parser notices ship in `packages/serverpod_lens/assets/sql/`.
Lens code is licensed under MIT. Third-party dependencies retain their licenses.
[Workspace overview](../../../README.md).
