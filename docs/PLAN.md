# serverpod_lens — Serverpod Schema Visualizer

> Living document. Everything we are trying to do, why, and how.

## 1. Vision

**serverpod_lens is a schema visualizer for Serverpod.** Point it at a Serverpod
project and it renders the database schema as a single, connected map: tables as
nodes, columns as rows, relations as edges. Explore, filter, search, and (later)
edit schemas directly on the canvas.

The end goal is for this to be good enough that the **Serverpod team itself can
adopt it** as an official companion tool — a first-class way to see and shape a
project's data model.

## 2. Goals

1. **Visualize** any Serverpod project's schema as a complete relational map
   (tables, columns, foreign keys, indexes, modules, enums, endpoints).
2. **Understand** the schema: relations at a glance, cardinality, isolation by
   module/domain, search and focus.
3. **Fast & pleasant**: instant load, smooth pan/zoom, no server round-trips
   needed for the diagram itself.
4. **Serverpod-native**: built on Serverpod, shaped like something the Serverpod
   team would ship.
5. **Phase 2 — author schemas on the fly** from the canvas: create tables,
   columns, relations; export valid `.spy.yaml`.
6. **Phase 3 — multi-source**: ingest other schema sources (raw Postgres DDL,
   migrations) so serverpod_lens is useful beyond just `.spy.yaml` projects.

## 3. Who it is for

- **Serverpod developers** who want to see their data model without reading YAML.
- **Teams onboarding** onto an existing Serverpod backend.
- **The Serverpod project itself**, potentially as an official devtool.

## 4. Architecture

serverpod_lens is a Serverpod **fullstack** project (server + generated client +
Flutter app). The design follows one rule: **the server owns schema knowledge,
the Flutter app owns the canvas.**

```
target schema source (Serverpod project, or SQL DDL)
        │
        ▼
[ SchemaExtractor ]        (serverpod_lens_server, pure Dart, I/O)
        │  produces
        ▼
[ SchemaGraph ]            (shared Serverpod .spy.yaml models)
        │  consumed by
        ▼
[ DiagramBuilder ]         (pure Dart, no Flutter)
        │  produces a Vyuh diagram document
        ▼
[ DiagramCanvas ]          (serverpod_lens_flutter, vyuh_diagram_flutter)
        │
        └─ layout · selection · filtering · search · persistence
```

### 4.1 Deep modules (narrow interfaces, hidden internals)

| Module            | Lives in            | Responsibility                                        | Depends on |
|-------------------|---------------------|-------------------------------------------------------|------------|
| `SchemaExtractor` | `serverpod_lens_server`   | Read a source, resolve it, emit `SchemaGraph`          | source readers |
| `SchemaGraph`     | shared models       | Pure schema data (tables, columns, relations, enums)  | nothing |
| `DiagramBuilder`  | `serverpod_lens_server` / shared | `SchemaGraph` → Vyuh diagram document/authored content | vyuh_diagram_core, codec |
| Canvas features   | `serverpod_lens_flutter`  | Render, interact, theme, persist view                 | vyuh_diagram_flutter |

`SchemaExtractor` and `DiagramBuilder` are **headless-testable** with `dart test`.
Only the canvas is Flutter-bound. This keeps the core logic fast and verifiable.

### 4.2 Schema sources

- **Serverpod (primary):** `.spy.yaml` models + `migrations/<v>/definition.json`
  + `lib/src/generated/protocol.yaml`. `definition.json` is the resolved truth
  for tables/columns/foreign keys/indexes; `.spy.yaml` adds class-level meaning,
  docs, enums, and non-table models.
- **Postgres DDL (secondary, used for the elog dogfood):** parse `CREATE TABLE`,
  `ALTER TABLE ... ADD CONSTRAINT`, `CREATE TYPE ... AS ENUM`, `CREATE INDEX`.
- **Optional exact mode (later):** `package:serverpod_cli/analyzer.dart`
  (`SerializableModelAnalyzer`) behind a single adapter, version-pinned, for
  precise relation resolution.

## 5. Visual mapping (schema → diagram)

| Schema concept | Diagram concept |
|----------------|-----------------|
| Table          | Node (`Shapes.card`/`rectangle`), height = header + rows × rowHeight |
| Column         | Row inside the node; a `Port` on the left (incoming FK) / right (outgoing FK) |
| Relation       | Connector between column ports, with a `ConnectorLabel` (cardinality, FK) |
| Module/domain  | Visual grouping / color |
| Enum           | Distinct node style or attached chip |
| Index          | Badge on the column / node |

Key Vyuh Diagram APIs we rely on:

- `DiagramController` + `controller.edits.*` (all edits are undoable transactions)
- `createShape(type, at:, size:, style:, text:, values:, ports:)`
- `connect(from, to, fromPort:, toPort:, route:)`
- `Port` + `PortOffsetMode.distanceFromStart` → one anchor per column row
- `ShapeWidgetRegistry` / `ShapeWidgetBuilder` → live Flutter widget inside a node
- `controller.layout(Layout.layered(...))` and friends → auto-arrange
- `DiagramJsonCodec` → persist/restore the view
- `DiagramCanvas(controller:, theme:)` → the canvas itself

## 6. Roadmap

### Phase 0 — Foundation (current)
- [x] Scaffold Serverpod fullstack project.
- [x] Research Serverpod schema internals and Vyuh Diagram API.
- [x] Define `SchemaGraph` `.spy.yaml` models.
- [x] Build `SchemaExtractor` (Serverpod `definition.json` source).
- [x] Build `SchemaDiagram` (diagram builder + layered layout).
- [x] Wire `DiagramCanvas`; render the dogfood schema end-to-end.
- [x] Dogfood: recreate elog's schema as 122 Serverpod models and render it.

### Phase 1 — Read-only viewer
- Rich table nodes (widget rows), per-column ports, relation labels.
- Auto-layout (layered ER), module filtering, search & focus.
- Persist/restore layout. Package browsing (pick a project).

### Phase 2 — Author on the canvas
- Create/edit tables, columns, relations on the diagram.
- Validate against Serverpod model rules; export `.spy.yaml`.
- Round-trip edits back into the analyzed project.

### Phase 3 — Ecosystem
- Upstream-friendly: usable by the Serverpod team as a devtool.
- Multi-source ingestion, shareable views, embedded/Web build.

## 7. Dogfood dataset

The **flutter_elog** project (`~/Projects/caliber/flutter_elog`) is our
real-world test schema. It is a Vyuh + Supabase/Postgres stack (not Serverpod),
so we recreate its Postgres schema **as Serverpod models inside serverpod_lens**,
read-only on the elog side.

Scope chosen for the dogfood: `00_public` + `01_sso` + `02_elog`.

- `02_elog` — 82 tables
- `01_sso` — 30 tables
- `00_public` — 10 tables (dynamic-DDL subset)
- ~221 foreign keys, 5 enum types, ~1230 columns

Source of truth (read-only): `flutter_elog/supabase/schemas/**/*.sql`.

See `docs/dogfood-elog.md` for extraction details and mapping decisions.

## 8. Key decisions

| Decision | Choice | Why |
|----------|--------|-----|
| Where parsing runs | Server (Dart VM) | FS access, headless, testable, Serverpod-native |
| Primary schema source | `.spy.yaml` + `definition.json` | Resolved, version-stable, no runtime needed |
| Dogfood source | Postgres DDL from elog | Real 122-table schema; no hand-porting |
| Diagram engine | Vyuh Diagram (open-source packages) | Headless core + Flutter canvas + codecs + layout |
| Table names | `<schema>_<table>` in one Serverpod schema | Serverpod uses one schema; disambiguates sso/elog collisions |
| IDs | `UuidValue` where source is UUID | Faithful to elog; Serverpod supports UUID ids |
| Relations | FK-side `relation(parent=...)` only | Avoids circular Dart imports across 122 models; FKs still in `definition.json` |
| Authoring | Phase 2 | Keep Phase 1 read-only and solid first |

## 9. Non-goals (for now)

- Replacing Serverpod's own migrate/generate CLIs.
- A general-purpose ER designer for arbitrary SQL (that's Phase 3+).
- Real-time collaboration.

## 10. References

- Serverpod docs: https://docs.serverpod.dev
- Serverpod models skill: `.opencode/skills/serverpod-models/SKILL.md`
- Vyuh Diagram: https://diagram.vyuh.tech
