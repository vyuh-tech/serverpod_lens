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
