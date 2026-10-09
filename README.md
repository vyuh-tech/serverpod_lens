# Serverpod Lens

Serverpod Lens turns a Serverpod database schema into an interactive map. Each
table shows its columns, types and keys; connections follow the foreign keys.
It helps you trace relationships across a backend without opening every model
file or reading migration SQL.

Built with Flutter, Serverpod 4.0.4 and Vyuh Diagram 3.5.1. The long-term goal is
to make this a schema view inside Serverpod's development tools. This repository
is the standalone prototype used to develop and test that view.

![Serverpod Lens with a selected table, native inspector and minimap](docs/schema-map.png)

## Try the schema map

The app opens with a bundled sample: 122 tables recreated as Serverpod models
from the flutter_elog PostgreSQL schema. It lets you explore a substantial data
model immediately, without connecting to that project's database.

Use **Open project** to choose a ZIP containing a Serverpod server package.
Lens reads the newest migration definition in the archive. It prefers
`definition.json`, which includes installed modules and framework tables, and
uses `definition_project.json` when the complete definition is unavailable.
Files are analyzed locally in the Flutter app; uploading a ZIP does not execute
its code or connect to its database.

You can:

- Search table and column names, filter by module and jump to a table.
- Pan, zoom and navigate with Vyuh's built-in minimap.
- Arrange the map with layered, grid, tree, force or circular layout.
- Select a table to follow its relationships; enable focus dimming or connection
  animation in settings.
- Use the native diagram toolbar and inspector, including undo and redo.
- Copy the diagram as JSON, including its table content and imported metadata.

Diagram edits change the view. They do not update `.spy.yaml` files, create
migrations or change a running database.

## Run locally

Use Flutter **3.47 or newer** with Dart **3.13 or newer**. Development and tests
have been run with Flutter 3.47.5 and Dart 3.13.4.

The commercial Vyuh Diagram extensions require access to `pub.vyuh.tech`.
Register your publisher-issued token before resolving dependencies:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd serverpod_lens_server
serverpod start
```

`serverpod start` launches the backend and the companion Flutter app, watches
source changes and handles incremental generation and reloads. The development
configuration uses Serverpod's managed PostgreSQL database; Docker is not
required. The backend API runs on port 8080. Use the Flutter URL printed by the
runner to open the app.

The minimap, layout, editor, table and snap-guide extensions come from
`pub.vyuh.tech`. The publisher's required base packages—`vyuh_diagram_core`,
`vyuh_diagram_flutter` and the SVG codec—come from pub.dev. Here, “core” means
the **Vyuh Diagram engine**. Lens does not import the separate Vyuh application
framework.

To refresh the bundled sample after changing this project's migrations:

```sh
# From serverpod_lens_server
dart run bin/dump_schema.dart
```

To export the sample as SVG:

```sh
# From serverpod_lens_flutter
dart run tool/export_svg.dart
```

## Serve a web build

```sh
# From serverpod_lens_flutter
flutter build web --release
python3 -m http.server 8090 --bind 127.0.0.1 --directory build/web
```

Open `http://localhost:8090`. To share this build temporarily, run the following
in another terminal with Cloudflare's `cloudflared` installed:

```sh
cloudflared tunnel --url http://127.0.0.1:8090
```

Use the `trycloudflare.com` URL printed by that process. The link remains live
while both the Python server and tunnel are running. This serves the Flutter
schema viewer; it does not publish the local Serverpod API.

## How schema mapping works

```text
Serverpod migration definition
          ↓
SchemaExtractor → SchemaGraph
          ↓
SchemaDiagram → Vyuh DiagramController
          ↓
Flutter DiagramCanvas + native extensions
```

The extractor reads resolved database definitions rather than guessing database
relationships from Dart classes. It preserves table and module names, columns,
nullability, defaults, indexes, foreign-key targets and referential actions.
The `SchemaGraph` contract is defined in Serverpod `.spy.yaml` models, so the
server and Flutter client use generated representations of the same data.

The diagram adapter creates a native table shape for each table, with ports at
its column rows. Foreign keys become native connectors. Composite foreign keys
remain a single constraint and show all column pairs in a connector label; the
connector attaches at the first pair. References to tables absent from the
snapshot cannot be drawn.

Vyuh owns table rendering and editing, connector geometry, selection, camera,
minimap, layout, snapping, history, effects and diagram serialization. Lens adds
the schema mapping, search and module filter. A small extension chooses native
flow and fade effects for related tables; it does not paint connections or
implement its own animation engine.

## Coverage and current limits

The adapter handles Serverpod 4.0.4's resolved column-type identifiers, including
vector, JSONB and geography types, and retains unfamiliar string type names.
Single and composite unique indexes are distinguished. Self-references and join
tables use the same foreign-key mapping as other relations.

Migration definitions describe the schema at a migration version. Lens does
not introspect a live database or detect database drift. If a ZIP has only
`.spy.yaml` files, the app falls back to a partial model parser and displays a
warning: compiler-resolved relations and implicit database details may be
missing. Use migration definitions for an accurate database view.

The current graph is a visualization contract, not a lossless copy of every
Serverpod compiler detail. Enum declarations are not drawn as separate nodes;
index expressions, vector dimensions and some constraint details do not have
dedicated visual controls. Compatibility with every older or future Serverpod
version has not been established.

The next integration step is to supply the host project's resolved definition
through Serverpod's development tooling, replacing the manual ZIP import. A
schema editor that writes validated models and migrations is a separate future
step. Neither integration is claimed as complete here.

## Repository and verification

| Location | Responsibility |
| --- | --- |
| `serverpod_lens_server/lib/src/schema/` | Backend schema extraction |
| `serverpod_lens_server/lib/src/models/schema/` | Shared schema contract |
| `serverpod_lens_server/lib/src/elog_schema/` | Recreated sample models |
| `serverpod_lens_client/` | Generated Serverpod client |
| `serverpod_lens_flutter/lib/schema/` | ZIP analysis and native diagram adapter |
| `serverpod_lens_flutter/lib/screens/` | Flutter schema-map screen |

Run checks from the repository root, then tests from their packages:

```sh
dart analyze
dart format --output=none --set-exit-if-changed .
cd serverpod_lens_flutter
flutter test
cd ../serverpod_lens_server
dart test
```

Tests cover resolved type and constraint mapping, the sample schema, native
layout and undo, JSON round-tripping, and canvas integration with the native
editor, minimap and relationship effects. Serverpod manages the test database.
There are currently no GitHub Actions workflows in this repository.

See [the sample's provenance](docs/dogfood-elog.md),
[the architecture plan](docs/PLAN.md) and [remaining work](docs/ROADMAP.md).
The sample demonstrates schema complexity; it is not a measured performance
benchmark.

## Licensing

This repository does not currently declare a project license. Vyuh's commercial
extensions have their own access and licensing terms; a registry token does not
change those terms.
