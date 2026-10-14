# Lens Serverpod adapter

A transport-neutral adapter for a Serverpod project's current generated target.
Shared by both example projects and the local CLI.

```dart
final sources = ModelSourceIndex().read();
final snapshot = LensSchemaSource(projectId: 'shop').read(
  Protocol().getTargetTableDefinitions(),
  sourcePaths: sources.paths,
  modelSources: sources.sources,
  knownRevision: previousRevision,
);
```

Import `serverpod_lens_backend.dart` and your project's generated `Protocol`.
`LensSchemaSnapshot.graph` is the shared plain Dart graph. `toJson()` can bridge to
host-owned generated DTOs or JSON delivery. Unchanged revisions omit heavy bodies.

Extraction deduplicates repeated module targets, preserves database schema identity,
filters source paths to known tables, and rejects conflicting definitions. Source
indexing never accepts a remote file path and skips symlinks and oversized files.
Use `ModelSourceIndex(projectDirectory: serverFolder)` for explicit absolute roots.

A shared hosted endpoint must enforce Serverpod login and its project read scope.
The adapter does not grant access or expose an endpoint itself. Local developer
usage through the loopback CLI does not need authentication.

MIT licensed. Repository package; not yet published. Tested with Serverpod 4.0.4.
