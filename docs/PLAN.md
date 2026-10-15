# Architecture

```text
Serverpod generated database definition
  → serverpod_lens_schema: SchemaGraph
  → serverpod_lens: SchemaViewer
  → native Vyuh Diagram tables and connections
```

## Schema package

`packages/serverpod_lens_schema/` contains the plain Dart graph, definition
reader, relationship queries, and snapshot policy. Its main library has no
Flutter, Serverpod runtime, or filesystem dependency. `io.dart` provides authored
model-source indexing.

The resolved database target defines tables and persisted fields. Non-table
models and source-only fields are outside that target. `SchemaModelCatalog`
provides optional authored inspection metadata: aliases, enum values/properties,
inherited declarations and nested types. `ModelSourceIndex.readBundle()` indexes
those files; `LensSchemaSource` includes only reachable declarations in the
namespaced `lensModel` section of the retained table definition. Native columns,
storage types, nullability and constraints remain authoritative. The existing
snapshot wire format carries this metadata without coupling reusable packages
to generated Serverpod transport models. YAML imports provide
partial inference through separate tooling.

`LensSchemaSource` accepts serialized native table definitions, deduplicates
qualified identities, and produces deterministic snapshots. Unchanged revisions
omit graph and source bodies. `LensSnapshotState` validates incoming snapshots.

## Viewer package

`packages/serverpod_lens/` accepts a `SchemaGraph`. It maps database semantics to
Vyuh's native table shapes, field ports, connectors, and layouts. Composite foreign keys use a native connector for each field pair. Shared
`SchemaRelationshipInfo` derives optional cardinality from native constraints.
Vyuh owns
rendering, camera movement, dragging, minimap, and transient effects.

Lens owns the schema browser, inspectors, source display, and view preferences.
`SchemaSnapshotController` shares refresh and request-lifetime handling across
hosts. Hosts own data loading, authentication, and model-opening callbacks.

The viewer blocks schema edits. Saved preferences contain view geometry rather
than credentials or model source. Large web scopes disable the native layered
layout at 100 tables; force layout uses a bounded iteration count.

## Local host

`tool/lens/` contains the launcher and browser host. `serverpod run lens` invokes
the configured script in an example project.

The launcher reads the project's current generated `Protocol` in a Dart
subprocess and serves the shared viewer on IPv4 loopback. It starts no
application server and makes no database connection. Each manual refresh
rereads the target and authored sources; overlapping refreshes share one read.

Viewer builds are cached by source, dependency, lockfile, and Dart SDK
fingerprints. `--rebuild` forces a fresh build. Optional ZIP, YAML, and SQL
adapters and their parser assets live under `tool/lens/imports/`.

## Examples and Cloud host

`examples/shop/` and `examples/large_schema/` are Serverpod projects with generated
servers and clients. Each uses the same extraction and viewer packages.

The large-schema example also hosts the connected demo. Serverpod authentication
and a project read scope protect schema and model-source delivery. Auth failures
clear protected viewer state; ordinary refresh failures retain the last valid
graph and report the error.

Cloud builds package authored table, parent, enum and embedded models under `assets/lens-models` for the compiled
runtime. `tool/build_cloud_release.dart` builds Flutter against the published Lens
releases and bundles the registry-downloaded schema for Cloud compilation. It
records package archive hashes and rejects workspace-source substitution.
Generated clients, authentication, scopes, and deployment configuration remain
in the example rather than the reusable packages.
