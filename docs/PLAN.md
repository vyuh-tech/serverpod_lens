# Architecture

Lens is a local development tool built from reusable packages. Cloud is an
optional demonstration, not a requirement for using the viewer.

## Package interfaces

| Package | Small interface | Implementation |
| --- | --- | --- |
| `serverpod_lens_schema` | `SchemaDefinitionReader.read`, `SchemaGraph` | Resolved definition mapping; preserve fields, keys, indexes and complete metadata |
| `serverpod_lens_backend` | `LensSchemaSource.read`, `ModelSourceIndex.read` | Native target deduplication, safe source indexing, revision hashing and transport-neutral snapshots |
| `serverpod_lens` | `SchemaViewer(graph: graph)` | Schema/table browsing, native diagram mapping, inspector, saved geometry and themes |
| `serverpod_lens_cli` | Local command → browser URL | Read a fixed project's generated target; build/serve the tooling viewer on loopback |

Generated transport and application authentication stay in the examples. The
viewer has no dependency on either generated example client. It receives a plain
graph from its host. Both examples and the CLI use the shared backend adapter.

## Local workflow

1. The project already has Serverpod-generated models and `Protocol`.
2. `serverpod run lens` invokes the independent Lens executable through a supported
   named script. A literal `serverpod lens` command is not provided by Serverpod.
3. A local utility imports the project's generated `Protocol` and obtains its
   current target. It does not start Serverpod or connect to the database.
4. Lens indexes authored models anywhere under `lib`, pruning generated folders,
   and maps the target with the shared reader.
5. The CLI prints a loopback browser URL. The same reusable viewer presents the map.
6. Manual Refresh rechecks sources and generated-target metadata. Unchanged targets
   reuse the native read; unchanged snapshots omit heavy bodies and preserve the view.

The tooling viewer is part of the CLI implementation, not another standalone demo.
No login or Cloud account is needed for local use. An operator can stop Lens
without stopping the application server.

## Two complete Serverpod examples

- `examples/shop/server` and `client`: four authored commerce models, generated
  protocol/client and native initial migration. The CLI reads the actual target,
  including Serverpod framework tables; no hand-authored snapshot substitutes for it.
- `examples/large_schema/server`, `client` and `flutter`: retained 156-table target.
  Its optional connected demo uses built-in Serverpod email/JWT authentication and
  project read scopes. Existing generated code is relocated intact.

The old offline demo and its platform scaffolding are removed. Useful importer,
source mapping and read-only regressions now belong to the reusable viewer tests.

## Native Vyuh ownership

| Behavior | Native implementation | Lens responsibility |
| --- | --- | --- |
| Tables and field connections | Table shapes, row ports and connectors | Map Serverpod metadata |
| Selection, fading and marching dashes | Selection chrome and transient effects | Find immediate neighbors and orient outward flow |
| Layout and dragging | Grid, layered, tree, force and circular layouts; movement | Scope selection, work budgets and persisted positions |
| Camera and minimap | Native fit, zoom limits and minimap | Measure the viewport; keep native bounds from overview fit to 100% |
| Read-only connections | Native locks and connection admission | Preserve table inspection; deny creation/rebinding |
| Inspector and panels | Flutter Material widgets around the native canvas | Consistent tabs, constrained resizing and edge collapse controls |

All schemas shows the complete graph; selecting a schema shows all its tables.
Selecting a table emphasizes neighbors without narrowing scope, relayout or
changing canvas-click zoom. Cards show every column. Closing the inspector removes
its space; edge collapse preserves its selection/tab. The header sidebar icon,
Back/history, grouping, References/detail menus, Explore action and footer are removed.

System/Light/Dark is shared and persisted. Source provides authored code where
available and resolved metadata otherwise. Reduced motion retains static emphasis.
Snapping is off by default; generic connector hover chrome is still controlled by
Vyuh 3.5.1 and has no per-connector disable switch in that SDK.

## Performance and release limits

The web layered engine stalled on the measured 156-table connected fixture, so
layered options are disabled for web scopes of 100 or more tables. Native force
iterations are bounded by scope size. Large full maps still need realistic GPU
profiling; software-rendered headless measurements are diagnostics, not a
smooth-frame-rate claim. See verification for measured data.

Resolved targets are authoritative. YAML-only inference remains partial and does
not invent non-persisted database columns. Compatibility is checked against
Serverpod 4.0.4, not every future release. Runtime database introspection and
migration comparison are outside this release.

The CLI works from this checkout. Standalone installation, registry publication
and integration into upstream Serverpod tooling remain release work. No packages
are published and no Cloud deployment is authorized by this restructure.

Reusable code lives in `packages/`. Actual application servers and generated
clients live only in `examples/`; the backend adapter package is a library, not
a deployed service. The root pubspec manages both through one Dart workspace.

## Architecture audit — 2026-10-14

Audited source at `4970478`: workspace/package manifests, extraction, source
indexing, local launcher, both viewer hosts, native diagram mapping, examples,
IDE configuration and tracked repository contents. This is a source audit with
focused cache probes, not a new full-suite or production security sign-off.

### Assessment

The core design is sound: Serverpod resolves the database target; one plain graph
feeds one reusable Flutter viewer; Vyuh owns rendering and gestures. Authentication
and generated application transport stay in the optional hosted example. The local
launcher does not start a Serverpod application or query its database.

The product has been presented as too many packages. The backend library does real
shared work, but that does not require a separately published product. The command
and its browser app are necessary implementations of the local workflow; they can
be internal tooling. Moving folders alone does not reduce duplicated logic.

### Purpose and proposed ownership

| Current module | Purpose and actual callers | Recommendation |
| --- | --- | --- |
| `serverpod_lens_schema` | Plain graph and resolved-definition reader; used by viewer and extraction | Keep as a reusable package, independent of Flutter and Serverpod runtime |
| `serverpod_lens` | Shared viewer, inspector, native mapping and preferences; used by local and Cloud hosts | Keep as a reusable package; reduce its exported surface and separate optional import features |
| `serverpod_lens_backend` | Deduplication, source indexing, stable revisions and snapshot omission; used by CLI and example extraction | Preserve one implementation; relocate neutral snapshot work into schema after removing native SDK/auth types |
| `serverpod_lens_cli` | Fixed-project extraction, viewer build and loopback HTTP delivery | Keep as an internal tool under `tool/lens`, with its own workspace manifest |
| CLI Flutter viewer | Local HTTP host for the shared viewer | Keep as the internal tool's browser app, not an additional product package |
| Example server/client projects | Demonstrate actual native generation and integration | Keep under `examples`; generated code is not redundant handwritten logic |
| Large example's authenticated Flutter host | Shared Cloud demonstration and access controls | Keep optional; it is outside the requirements for local Lens |

Merging the backend package unchanged into schema is not the recommended move.
Its current `schema_source.dart` imports native `TableDefinition` and Serverpod
`Scope`; `ModelSourceIndex` imports `dart:io`. First make the shared snapshot builder
accept resolved definition maps/JSON and keep auth policy in the hosted example.
Filesystem indexing can live behind an explicit `serverpod_lens_schema/io.dart`
entry point; the primary schema entry must remain usable on web without importing
filesystem or Serverpod runtime code. The CLI/server adapters convert their native
target to that neutral input. Both examples must continue to share this logic.

### Findings, in order

1. **Correctness: refresh cache misses some changes.**
   `packages/serverpod_lens_cli/lib/src/project_snapshot.dart` keys native target
   reuse only by protocol modification time, size and package name. Dependency
   configuration/lockfile/module changes are outside that key. The generated Shop
   protocol includes framework targets from the imported Serverpod protocol.
   A focused injected-runner probe changed dependency configuration while leaving
   the protocol unchanged: extractor runs stayed at one, the revision stayed equal
   and the refreshed graph was omitted. A second probe changed protocol contents
   while preserving its size/timestamp and reproduced the same result. These are
   cache invalidation defects, not evidence that ordinary regenerated model edits
   always fail. Prefer a fresh native read on explicit manual refresh, with shared
   in-flight reads; later caching needs a complete dependency fingerprint.

2. **Security/configuration: tracked IDE task contains a database credential.**
   `.vscode/tasks.json` has an inline `SERVERPOD_PASSWORD_database` value. Remove it
   from tracked configuration, use ignored/operator-provided credentials and
   establish whether credential replacement is needed. Do not copy its value into
   audit reports. Both VS Code files still target the removed root server path;
   update or remove the stale launch configurations. Tests do not exercise IDE tasks.

3. **Redundancy: two snapshot refresh implementations.**
   The CLI Flutter host and `ConnectedSchemaController` independently validate
   project/revision/source kind, preserve unchanged graphs, copy source maps,
   suppress overlapping loads and retain stale results. Share typed snapshot
   validation and state transitions. HTTP/generated-client delivery, auth failure
   classification and host error wording remain small adapters. Do not introduce a
   second generic framework for this.

4. **Redundancy: two diagram emphasis mechanisms.**
   Current apps use `watchSchemaSelection` and native effects.
   `applySchemaContext` remains exported and tested but has no current application
   caller; it mutates document opacity through transactions. Remove/deprecate that
   older implementation and its obsolete tests after checking the public interface.
   Keep `SchemaContext` traversal and `SchemaRelationshipsPanel`: the inspector
   actually uses them. A passing test alone does not prove a feature is needed.

5. **Scope: optional import code sits in the viewer's primary interface.**
   `ProjectAnalyzer` implements ZIP parsing and partial YAML inference;
   `PostgresSchemaImporter` includes worker/WASM assets. Neither current host calls
   these importers. They add another interpretation path alongside native Serverpod
   extraction. Keep them only as explicit optional functionality or remove them if
   imported schemas leave the product scope. Merely moving exports to another
   library does not remove Flutter-declared assets from consumer builds. Move
   neutral parsing into schema where appropriate; optional SQL assets need separate
   ownership to reduce core build payload. Preserve required license notices.

6. **Separation: extraction currently carries auth policy.**
   `LensSchemaSource.readScope` constructs a Serverpod scope although the local CLI
   needs none. The optional host independently declares its own scope. Keep project
   identity and snapshot validation in shared extraction; keep access scopes and
   login requirements in the optional host.

7. **Maintenance: public interface and error handling need tightening.**
   The viewer barrel exposes diagram interactions, traversal and persistence
   internals as well as the main widget and importers. Keep the integration entry
   small and expose advanced facilities deliberately. The HTTP catch handler tells
   users to inspect CLI output, but discards the underlying failure without logging
   it. Add useful sanitized local diagnostics and retain generic HTTP errors.
   Cached web builds are reused solely because `index.html` exists; use a build
   version/source stamp or clearly require `--rebuild` after viewer updates.

8. **Support claims need a precise scope.**
   Native extraction supplies tables, not an inventory of all non-persisted models
   or enum declarations. YAML fallback explicitly states it is partial. Keep the
   generated database target authoritative and describe non-table models as source
   information until there is a dedicated supported model inventory. The CLI also
   decodes target definitions using its pinned Serverpod 4.0.4 SDK; compatibility
   with projects on other SDK versions needs tests. Large full-map rendering remains
   a measured SDK performance limitation; reducing package count will not fix it.

### Recommended final structure

```text
packages/
  serverpod_lens_schema/   graph, native-definition interpretation, snapshots
  serverpod_lens/          shared Flutter viewer and native Vyuh mapping
tool/
  lens/                   internal Dart launcher + internal Flutter host
examples/
  shop/                   actual Serverpod project
  large_schema/           actual Serverpod project + optional Cloud host
```

Two reusable product packages does not mean only two `pubspec.yaml` files. The
internal Dart launcher, Flutter browser host and generated examples still need
workspace manifests. These are implementation/build units, not publication units.

Apply changes in this order: correct cache/configuration defects; centralize
snapshot validation; remove the obsolete emphasis path; isolate optional import
features; then consolidate backend extraction and relocate the launcher. Preserve
one graph contract, one native-target interpretation, one snapshot policy and one
viewer. Move existing tests with their responsibilities; do not delete working
security or native-contract coverage merely to lower the test count.

No implementation changes were made by this audit. Existing 158-test verification
is the previous baseline; the new cache scenarios above expose missing coverage.
