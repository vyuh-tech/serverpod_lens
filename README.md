# Serverpod Lens

Serverpod Lens is a read-only schema map for Serverpod projects. Tables show
columns, database types and keys; foreign-key connections show how the backend
fits together. Search for a table or column, choose a database schema, and follow
its relationships without opening each model file.

The app uses Flutter, Serverpod 4.0.4 and Vyuh Diagram 3.5.1. The intended home is
Serverpod's development tooling. This repository is the standalone viewer and
schema adapter being built toward that integration.

![Serverpod Lens schema viewer](docs/schema-map.png)

## Explore a project

The initial view loads SQL declarations from the local `flutter_elog` project.
The imported snapshot contains 396 tables across ten database schemas, including
`public`, `sso`, `elog`, `docs_iq`, `workflow_runtime` and `assure_iq`. This is a
source-file snapshot, not a connection to its live database. Of 536 imported
foreign keys, 505 have targets present in the snapshot; the report lists the
other 31. Its provenance and
import limitations are recorded in [the schema notes](docs/elog-schema.md).

For a Serverpod project, choose **Open project** and select a ZIP containing one
server package. Archives with multiple server packages are rejected. Lens reads
the newest migration definition, preferring complete
`definition.json` over `definition_project.json`. Complete definitions include
installed modules and framework tables. A malformed newest snapshot is reported
rather than silently replaced with an older schema.

ZIP analysis happens locally in Flutter. It does not execute uploaded code,
upload your project to a server or connect to your project's database.

On phones, the canvas fills the available space. Open **Browse schemas** to
search or choose a schema in the navigation drawer; selecting a table closes
the drawer and focuses its node. Desktop keeps the browser beside the canvas
and lets you collapse it. Both light and dark modes use neutral Material colors.

The viewer provides:

- A **Schema** dropdown with an **All schemas** option. Filtering updates both
  the table list and the canvas; connections appear when both ends are visible.
- Search across table and column names. Selecting a result brings its node into view.
- Native pan, zoom, node dragging, selection and minimap navigation. Clicking a
  table animates its visible relationships with Vyuh’s native flow effect.
- Native layered, grid, tree, force and circular layouts. The initial view uses
  grid layout to avoid expensive startup arrangement of the full schema.
- View settings for animation speed (0.25–3×), particles, dashes, arrows, pulse,
  blinking and an Off option, with trail density and reverse flow controls.
- Orthogonal connections by default, with straight, Bézier, quadratic and
  rounded orthogonal options. Adjust line width, dashed strokes, corner radius
  and port leads.
- Native alignment guides and tolerance, grid snapping and spacing, minimap
  connections, edge panning and Fit schema. Preferences last for the session,
  including when another project is opened.

The canvas uses Vyuh's interactive surface with schema changes blocked by native
admission rules. There are no drawing tools, editable
cells, property panels or diagram-editing toolbars. It cannot change your models
or database. Dragging and automatic layout rearrange the view only.

## Run locally

Use Flutter **3.47 or newer** and Dart **3.13 or newer**. The current checks use
Flutter 3.47.5 and Dart 3.13.4.

Vyuh's hosted extensions require a publisher-issued registry token:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd serverpod_lens_server
serverpod start
```

Serverpod starts the backend and companion Flutter app, handles incremental
code generation and watches for changes. The development configuration uses
Serverpod's managed PostgreSQL database; Docker is not required. The API runs
on port 8080. Open the Flutter URL printed by the runner.

The native table, layout, minimap, connectors and snap-guide extensions come
from `pub.vyuh.tech`.
The publisher's base Diagram engine, Flutter renderer and SVG codec come from
pub.dev. `vyuh_diagram_core` is the Diagram engine. Lens does not import the
separate Vyuh application framework.

The workspace pins the transitive `base_menu` dependency to 0.2.0 because 0.1.5
publishes missing workspace paths that break Dart test startup.

## Serve a release build

```sh
# From serverpod_lens_flutter
flutter build web --release
python3 -m http.server 8090 --bind 127.0.0.1 --directory build/web
```

Open `http://localhost:8090`. To share it temporarily, run this in another terminal:

```sh
cloudflared tunnel --url http://127.0.0.1:8090
```

The printed `trycloudflare.com` link stays available while Python and cloudflared
are running. This publishes the static schema viewer, not the local Serverpod API.

## How the code is divided

```text
Serverpod migration definition
       ↓
serverpod_lens_schema — one pure Dart definition reader
       ↓
generated SchemaGraph — server/client codec bridges
       ↓
SchemaDiagram — native table content, ports and connectors
       ↓
SchemaMapScreen — loading, search, schema filter and view settings
```

The shared reader preserves database schema and Serverpod module as separate
values. Table identities and referenced targets include their schema names,
so identically named tables in different schemas do not collide.

`SchemaDiagram` maps schema semantics onto native Vyuh shapes. Vyuh owns table
rendering, connector geometry, selection, the camera, minimap and layout.
`SchemaCatalog` handles queries over the imported graph; the screen handles
widgets and user actions. There is no second mutable schema workspace.

The backend remains Serverpod, with its authentication setup retained. Greeting
screens, their endpoint and the unused sign-in wrapper have been removed.
Generated code is changed through Serverpod's generator, never by hand.

## Coverage and limits

Migration extraction covers Serverpod 4.0.4's resolved column-type identifiers,
including vectors, JSONB and geography; unfamiliar string type names are kept.
It preserves nullability, defaults, indexes and referential actions. Composite
unique constraints and primary keys are distinguished from individually unique
columns. Self-references and cross-schema foreign keys use the same mapping.

Composite foreign keys remain one connector, with a label listing all column
pairs; the line attaches at the first pair. References absent from the snapshot
cannot be drawn. Enum declarations are retained in the graph but are not separate
canvas nodes. Partial-index predicates are retained and do not imply global uniqueness.
Vector dimensions and some compiler metadata are not represented by the graph contract.

A ZIP containing only `.spy.yaml` files uses a partial fallback parser and shows
a warning. It does not reproduce Serverpod's complete compiler semantics. Use
resolved migration definitions for the database view.

The viewer does not introspect a running database, detect drift or automatically
follow changes in a host project. It is not yet installed inside Serverpod's
tools. Providing that host-project connection is the next integration milestone;
validated schema authoring is outside this read-only feature.

## Refresh the flutter_elog snapshot

The offline SQL importer reads the source project without changing it. It uses
SQLGlot, rather than implementing a SQL parser inside the Flutter app.

```sh
python3 -m venv /tmp/lens-schema-import
/tmp/lens-schema-import/bin/pip install sqlglot==30.21.0
/tmp/lens-schema-import/bin/python serverpod_lens_flutter/tool/import_elog_schema.py \
  /path/to/flutter_elog/supabase/schemas
```

It writes `assets/schema_graph.json` and an import report beside it. Procedural
DDL and some ALTER transformations remain partial; review the report when the
source changes. `serverpod_lens_server/bin/dump_schema.dart` separately exports
this repository's resolved Serverpod schema to `docs/serverpod-schema.json`.
It does not overwrite the flutter_elog view.

## Checks and repository layout

| Location | Responsibility |
| --- | --- |
| `serverpod_lens_schema/` | Shared database-definition reader and tests |
| `serverpod_lens_server/` | Serverpod backend and generated schema contract |
| `serverpod_lens_client/` | Generated Serverpod client |
| `serverpod_lens_flutter/lib/schema/` | Project loading, schema queries and diagram mapping |
| `serverpod_lens_flutter/lib/screens/` | Read-only viewer UI |
| `serverpod_lens_flutter/tool/` | Offline SQL import and SVG export |

```sh
# Repository root
dart analyze
dart format --output=none --set-exit-if-changed .
cd serverpod_lens_schema && dart test
cd ../serverpod_lens_server && dart test
cd ../serverpod_lens_flutter && flutter test
```

Regression checks cover migration ordering and invalid snapshots, types,
module/schema identity, composite constraints, foreign keys, native layout and
JSON round-tripping. Canvas checks cover native node dragging, click-triggered
connection flow and blocked schema edits while preserving content. Responsive
checks cover the mobile drawer, desktop collapse and search state.
Port offsets are checked against
native resolved row geometry; only bound ports are exposed. Route switching
preserves column bindings and labels. Nodes use native table styling with a flat
header, subtle row separators and right-aligned types. The SQL importer has a
separate Python test:

```sh
/tmp/lens-schema-import/bin/python -m unittest discover \
  -s serverpod_lens_flutter/tool -p 'test_*.py'
```

There are no GitHub Actions workflows or OpenCode configuration in this repo.
See [the architecture plan](docs/PLAN.md), [remaining work](docs/ROADMAP.md)
[the project audit](docs/AUDIT.md) and [verification results](docs/VERIFICATION.md).

## Licensing

No project license has been declared yet. Vyuh's hosted extensions have their
own access and licensing terms.
