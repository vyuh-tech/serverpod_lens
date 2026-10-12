# Serverpod Lens

Serverpod Lens turns a Serverpod project's database schema into a map you can
explore. Tables show columns, types and keys; connections show foreign keys.
Choose a schema, find a column, or follow a table's incoming and outgoing
relationships without opening every model file.

The intended home is **a feature inside Serverpod's development tools**. The
viewer is a reusable Flutter package, and this repository includes a demo app
around it. Serverpod supplies the project's resolved schema and handles access
to that project. Lens interprets and displays the schema. Vyuh Diagram supplies
the canvas, tables, connectors, layout, minimap and interactions.

![Serverpod Lens](docs/schema-map.png)

## Package and host

`serverpod_lens` exposes `SchemaViewer`, `SchemaExtractor`, `ProjectAnalyzer` and
`PostgresSchemaImporter`. Its shared model, `SchemaGraph`, lives in the pure Dart
`serverpod_lens_schema` package. Neither package depends on a generated Serverpod
client or initializes a backend connection.

A Serverpod host can pass its complete migration definition directly:

```dart
import 'package:serverpod_lens/serverpod_lens.dart';

final graph = SchemaExtractor.fromDefinitionJson(
  definitionJson,
  source: 'My Serverpod project',
);

// Place this inside the host's Flutter application.
SchemaViewer(graph: graph)
```

Passing a new graph refreshes the viewer while retaining view preferences.
Import buttons are optional; the demo adds them. The package reads no bundled
project and makes no request for schema data on its own.

The connected `serverpod_lens_host_flutter` app uses Serverpod's built-in email
authentication and a project-scoped schema endpoint. It reads the host's resolved
current target, including framework and auth modules. Manual refresh sends a
revision hash: unchanged targets preserve the existing map; a changed target
replaces it and resets exploration context. Network failures retain a labelled
stale snapshot, while access denial removes it. The offline demo remains independent
of the server and generated client. Installation inside Serverpod's upstream
development tools has not shipped.

## Import a schema

The demo has two entry points: **Import schema** for files and **Paste SQL** for
PostgreSQL declarations.

| Input | What Lens reads |
| --- | --- |
| Serverpod project ZIP | The newest migration, preferring its complete `definition.json` |
| Migration JSON | A resolved Serverpod database definition |
| Serverpod YAML or YAML-only ZIP | Model declarations, with partial inference clearly disclosed |
| PostgreSQL `.sql` or pasted SQL | PostgreSQL AST, then the shared graph model; web only |

A project-only migration can omit installed modules and framework tables. Lens
warns before rendering it. Archives containing multiple server packages are
rejected, and a broken newest migration never falls back silently to an older one.
For the most accurate Serverpod view, use the complete resolved definition.

YAML inference can recover basic columns, indexes and explicit parent relations.
It infers a default bigint ID and resolves parent class names across imported
files. It cannot reproduce the Serverpod compiler's implicit relation columns,
join tables or installed-module resolution. Unsupported fields and invalid YAML
are reported. Use a ZIP to import several related model files together.

SQL follows this path:

```text
PostgreSQL text → PostgreSQL AST → SchemaGraph → Vyuh Diagram
```

The browser uses [libpg-query](https://github.com/constructive-io/libpg-query-node),
pinned to 17.7.4, which packages PostgreSQL's C parser as WebAssembly. The bundled
parser runs in a dedicated worker. Importing never executes SQL or sends the
input to a remote service. Python and Node are not required to use the built app.

The adapter supports CREATE TABLE, enum declarations, column and table keys,
foreign keys, ordinary and partial indexes, and selected ALTER operations: add
columns or constraints, change nullability, and set or drop defaults. Composite
keys, schema-qualified references, arrays and type modifiers are retained.
Statements such as DROP, procedural blocks and unsupported ALTER operations
produce import notes. Review these before choosing **Render supported schema**;
cancelling or a parse error keeps the current map. This is a declarative importer,
not a migration execution engine. SQL input is limited to two million characters
and parsing has a 30-second timeout. Native hosts can use `fromAst` with a
PostgreSQL 17 AST; built-in text parsing is currently available on web.

## Explore the map

The schema selector includes **All schemas**. Search covers table and column
names. Selecting a table emphasizes its relationships; choose incoming, outgoing
or both directions, expand the neighborhood to two hops, and reveal related
tables outside the current filter. Named groups can overlap and carry colors
and notes. Groups belong to the opened dataset's session.

The canvas supports selection, dragging, pan, zoom and minimap navigation.
Connections use orthogonal routing by default. View settings are grouped into
Connections, Animation and Canvas. Relationship labels are hidden initially;
enable **Show relationship labels** for cardinality and composite column mappings.
Canvas settings include **Snap to nearby tables** and its screen-pixel snap
distance, separate grid snapping, minimap visibility and edge panning.
The settings expose Vyuh's
straight, Bézier, quadratic and rounded orthogonal alternatives, native layouts,
alignment guides, grid snapping and edge panning. Connection effects include
marching dashes, particles, arrows, pulse and blink, with speed, size, density,
reverse flow and applicable stroke and opacity controls.
Animation is off initially so selecting a table does not start continuous
repainting; enable a connection effect from the Animation settings when needed.

Phones keep the canvas visible and put search and lists in a drawer. Desktop
shows a collapsible browser beside the canvas. The app uses neutral Material
colors in light and dark modes. There are no drawing tools or editable table
cells: dragging and layout change the view, never the schema or database.

Composite foreign keys use one connector, attach at the first pair, and show
their column pairs when relationship labels are enabled. Missing targets cannot
be drawn. Enum values and
partial-index predicates remain in the graph; vector dimensions and some
compiler metadata are not represented. The viewer does not introspect a running
database or detect drift.

## Run the demo

Use Flutter 3.47 or newer and Dart 3.13 or newer. Vyuh's commercial extensions
require a registry token issued by the publisher:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd serverpod_lens_flutter
flutter run -d chrome
```

The demo starts with a source snapshot from `flutter_elog`: 396 tables across ten
database schemas, 5,133 columns and 536 declared foreign keys. Of these, 505 have
targets present in the snapshot. [Dataset notes](docs/elog-schema.md) record its
provenance and missing references. It is not a live database connection.

To run the connected host, run `serverpod start` from `serverpod_lens_server`.
It manages the development database, code generation and connected Flutter app
at `http://localhost:8092`; the API uses port 8080. Create an account with the
built-in email flow (development verification codes appear in the server logs).
New accounts have no schema access. Copy the account ID from the access screen
and, as the project owner, run from the server package:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

Sign out and back in to receive the project scope. The operator command uses
the host's database credentials; there is no public endpoint for granting access.
The current connected fixture contains 156 unique tables. It shows generated
target metadata, not database records or drift detection.

The table, layout, minimap, connector and snap-guide extensions come from
`pub.vyuh.tech`. Their publisher-declared base Diagram engine, Flutter renderer
and SVG codec dependencies come from pub.dev. `vyuh_diagram_core` is part of
Diagram; Lens does not use the Vyuh application framework.

## Build and share

For the connected app, run `serverpod run flutter_build` in the server package.
The server serves the output from `web/app` and supplies its API address through
`assets/config.json`. Restart the server after the first build to install that
route; local release URL: `http://localhost:8082`.
See [Cloud deployment and judge access](docs/DEPLOYMENT.md) for production setup.

For the separate offline demo:

```sh
cd serverpod_lens_flutter
flutter build web --release
python3 -m http.server 8090 --bind 127.0.0.1 --directory build/web
```

Open `http://localhost:8090`. For a temporary public link, run
`cloudflared tunnel --url http://127.0.0.1:8090` in another terminal. The link lasts
while both processes run and shares the static demo, including its bundled
snapshot. It does not expose the Serverpod API.

The SQL worker and WASM are checked in as package assets. Rebuild them only when
changing the parser or worker:

```sh
cd serverpod_lens/tool/sql
npm ci
npm test
npm run build
```

## Code and checks

| Directory | Responsibility |
| --- | --- |
| `serverpod_lens_schema/` | Plain Dart model and shared migration-definition reader |
| `serverpod_lens/` | Import adapters, schema queries, native diagram mapping and embeddable viewer |
| `serverpod_lens_flutter/` | Demo: file picking, SQL dialog, asset loading and app theme |
| `serverpod_lens_host_flutter/` | Authenticated host app, refresh and connection state |
| `serverpod_lens_server/` | Protected schema endpoint, auth and integration fixtures |
| `serverpod_lens_client/` | Generated client for that host fixture; absent from viewer dependencies |

`SchemaCatalog` handles search and filtering; `SchemaContext` handles directional
neighborhoods and groups. `SchemaDiagram` maps schema meaning to Vyuh shapes.
`SchemaViewer` owns screen interactions. The demo owns source loading.

```sh
# From the repository root
dart analyze
dart format --output=none --set-exit-if-changed .
(cd serverpod_lens_schema && dart test)
(cd serverpod_lens && flutter test)
(cd serverpod_lens_flutter && flutter test)
(cd serverpod_lens_host_flutter && flutter test)
(cd serverpod_lens_server && dart test)
```

Tests cover migration selection, type mapping, modules, composite constraints,
relations, real PostgreSQL AST mapping, partial import diagnostics, host graph
refresh, native movement and effects, read-only admission rules, responsive
navigation and contextual exploration. [Verification notes](docs/VERIFICATION.md)
separate automated checks from remaining device and integration work. The
workspace pins `base_menu` to 0.2.0 because 0.1.5 contains broken workspace paths.
There are no GitHub Actions workflows or OpenCode configuration.

## Refresh the dataset

The offline dataset tool remains separate from interactive SQL import. It uses
SQLGlot to collect declarations from the external source tree without modifying it:

```sh
python3 -m venv /tmp/lens-schema-import
/tmp/lens-schema-import/bin/pip install sqlglot==30.21.0
/tmp/lens-schema-import/bin/python serverpod_lens_flutter/tool/import_elog_schema.py \
  /path/to/flutter_elog/supabase/schemas
/tmp/lens-schema-import/bin/python -m unittest discover \
  -s serverpod_lens_flutter/tool -p 'test_*.py'
```

It writes the graph asset and an import report. Review the report when refreshing.
`serverpod_lens_server/bin/dump_schema.dart` separately exports the fixture's
resolved schema to `docs/serverpod-schema.json`; it does not replace the demo asset.

See [architecture](docs/PLAN.md), [remaining work](docs/ROADMAP.md) and
[the audit](docs/AUDIT.md) for the integration plan and practical limits.
No project license has been declared. Vyuh extensions have their own terms;
SQL parser notices are included in `serverpod_lens/assets/sql/`.
