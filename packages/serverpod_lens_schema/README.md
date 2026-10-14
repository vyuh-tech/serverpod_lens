# Serverpod Lens Schema

Plain Dart models and a reader for Serverpod resolved database definitions.
No Flutter, Serverpod runtime or generated client dependency is required.

```dart
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

final graph = SchemaGraph.fromJson(
  SchemaDefinitionReader.read(definitionJson, source: 'My project'),
);
```

Supply the resulting graph to the Flutter `serverpod_lens` viewer, or use the
models in another host. Tables retain fields, foreign keys, indexes and complete
resolved metadata. Database schemas and Serverpod modules remain distinct.

The input is Serverpod's resolved definition JSON, rather than authored YAML.
Compatibility is tested against Serverpod 4.0.4's database contract.

This package is available in the Git repository and has not been published.
For installation and publication status see the repository README.

License: MIT. Vyuh dependencies belong to the separate Flutter viewer package.

## Current-target snapshots

Convert a host's native definitions to plain maps, then share the same extractor:

```dart
final snapshot = LensSchemaSource(projectId: 'shop').read(
  Protocol().getTargetTableDefinitions().map((table) => table.toJson()).toList(),
  knownRevision: previousRevision,
);
```

`Protocol` belongs to the host's Serverpod project. This package itself has no
Serverpod SDK dependency. It deduplicates qualified tables, hashes deterministic
revisions and omits unchanged payloads. `LensSchemaSnapshot.fromJson` and
`LensSnapshotState` provide one validation/state policy for local and Cloud hosts.

Import `package:serverpod_lens_schema/io.dart` explicitly for `ModelSourceIndex`.
Filesystem code stays out of the primary web-compatible library. Login/access
scopes remain entirely with a hosted application.
