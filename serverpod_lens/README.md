# Serverpod Lens package

An embeddable read-only schema viewer for Serverpod development tools.
Import `package:serverpod_lens/serverpod_lens.dart` and pass a `SchemaGraph` to
`SchemaViewer`. The host owns schema delivery, authentication and refresh;
the package owns interpretation and visualization.

```dart
final graph = SchemaExtractor.fromDefinitionJson(
  resolvedDefinitionJson,
  source: 'My Serverpod project',
);
SchemaViewer(graph: graph)
```

Supply a new graph to refresh the view. Optional `onImport` and `importActions`
let a host add source controls. No asset or generated client is required.
`ProjectAnalyzer` imports Serverpod ZIPs and partial YAML; `PostgresSchemaImporter`
imports SQL on web or PostgreSQL 17 ASTs on any platform. Import results retain
warnings so the host can disclose partial results before rendering them.

The sibling `serverpod_lens_flutter` app demonstrates file picking and pasted
SQL. See the [workspace README](../README.md) for installation, supported inputs,
view settings, limits and checks. This private workspace package is not yet
published or integrated upstream into Serverpod tooling.
