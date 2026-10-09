# serverpod_lens

**A schema visualizer for Serverpod.** Point it at a schema and see the whole data
model as one connected map — tables as nodes, columns as rows, foreign keys as
edges. Built on [Serverpod](https://docs.serverpod.dev) and
[Vyuh Diagram](https://diagram.vyuh.tech).

The goal is a tool good enough that the **Serverpod team can adopt it** as an
official way to see — and eventually shape — a project's schema.

---

## Vision

Understanding a Serverpod backend usually means reading `.spy.yaml` files and
migrations. `serverpod_lens` turns that into a living diagram you can explore:

- the **entire schema** at a glance, with real relational connections,
- grouped by schema/domain, searchable and filterable,
- fast enough to pan and drag around hundreds of tables,
- and, eventually, editable directly on the canvas.

## Current status

The end-to-end pipeline works against a real 122-table schema (see *Dogfood*):

- parses a Serverpod database definition into a normalized `SchemaGraph`,
- renders it as dbdiagram-style table cards with per-column foreign-key ports,
- supports schema filtering, search, layout, minimap and connection animations.

## Architecture

One rule: **the diagram controller owns the state; our code feeds it data.**

```
Serverpod migrations/<v>/definition_project.json
        │
        ▼
SchemaExtractor              (serverpod_lens_server, pure Dart)
        │  → SchemaGraph    (shared Serverpod .spy.yaml models)
        ▼
SchemaDiagram                (pure Dart layout + diagram authoring)
        │  → DiagramController (Vyuh: document, visibility, selection, camera, options)
        ▼
DiagramCanvas + extensions   (serverpod_lens_flutter)
        │  cards · ports · marching-ants signals · minimap
        └─ settings via Vyuh typed options
```

- **`SchemaExtractor`** — reads the resolved Serverpod `definition.json` and
  emits a `SchemaGraph` (tables, columns, foreign keys, indexes, enums).
- **`SchemaGraph`** — Serverpod models, generated for both server and client.
- **`SchemaDiagram`** — turns the graph into a diagram: one node per table, one
  port per column, one connector per foreign key; layered or grid layout.
- **Flutter app** — a single long-lived `DiagramController` with extensions for
  widget-backed table cards, the signal overlay and the minimap.

State management is deliberate and minimal: **Vyuh's `DiagramController` is the
single source of truth** (including view settings, stored as its typed options).
A small `ChangeNotifier` (`LensState`) only bridges option changes to Flutter
widgets. The screen holds only UI-shell state (selected schema, search text).
No Provider/Riverpod/Bloc.

## Features

- Schema dropdown with an **All** option; selecting a schema filters the canvas.
- **Search** across table and column names.
- **dbdiagram-style nodes**: colored header per domain, one row per column with
  PK / FK badges and types.
- **Foreign-key edges** with per-column ports.
- **Marching-ants** signal animation along a selected table's edges (optionally
  every edge).
- **Minimap** with a viewport rectangle; click/drag to navigate.
- **Layouts**: layered (by FK depth) and masonry grid.
- **Settings**: connection animations, animate-all-edges, column types, grid,
  minimap, layout.
- Only table nodes are selectable; edges are non-selectable.

## Dogfood

The schema of the **flutter_elog** project (a real Supabase/Postgres stack) was
recreated as Serverpod models to exercise the tool on something non-trivial:

| Source schema | Tables |
|---------------|-------:|
| `02_elog`     |     82 |
| `01_sso`      |     30 |
| `00_public`   |     10 |
| **Total**     | **122**, 1397 columns, 216 foreign keys |

See [`docs/dogfood-elog.md`](docs/dogfood-elog.md). The elog source is read-only;
the recreated models live in `serverpod_lens_server/lib/src/elog_schema/`.

## Roadmap

- **Phase 1 — read-only viewer** *(in progress)*: polish nodes, filtering,
  search, layout, minimap, animations.
- **Phase 2 — author on the canvas**: create/edit tables, columns and relations;
  validate against Serverpod rules; export `.spy.yaml`.
- **Phase 3 — ecosystem**: analyze *any* Serverpod project (not just this one),
  multi-source ingestion, shareable views.

## Project layout

```
serverpod_lens/
├── serverpod_lens_server/   # Serverpod backend: extraction, SchemaGraph
│   ├── lib/src/models/schema/   # SchemaGraph domain models (.spy.yaml)
│   ├── lib/src/schema/          # SchemaExtractor
│   └── lib/src/elog_schema/     # recreated elog schema (dogfood)
├── serverpod_lens_client/   # generated client
├── serverpod_lens_flutter/  # Flutter app: diagram canvas + extensions
│   └── lib/schema/              # SchemaDiagram, table/signal/minimap extensions
└── docs/                    # PLAN.md, dogfood notes
```

## Getting started

```sh
# from the repository root
dart pub get

# regenerate the schema asset the app renders
cd serverpod_lens_server
dart run bin/dump_schema.dart

# run the app
cd ../serverpod_lens_flutter
flutter run -d chrome
```

## Seeing the whole plan

[`docs/PLAN.md`](docs/PLAN.md) holds the full vision, deeper architecture notes
and design decisions.

## License

TBD.
