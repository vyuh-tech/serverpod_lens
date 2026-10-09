# serverpod_lens — Roadmap & Next Steps

Status captured after the first authoring slice. This file is the plan for what
comes next; `docs/PLAN.md` holds the vision and architecture.

## Where we are

**Viewer (Phase 1) — largely done**
- `SchemaGraph` models + `SchemaExtractor` (server) and a Flutter-side copy.
- `ProjectAnalyzer`: analyze **any** Serverpod project from an uploaded `.zip`
  (newest `migrations/<v>/definition_project.json`, else `definition.json`,
  else `.spy.yaml`).
- `SchemaDiagram`: table nodes, per-column ports, FK connectors, layered/grid
  layout. Owns a deterministic layout because Vyuh's graph layout is commercial.
- Flutter canvas: dbdiagram-style cards, schema filter + **All**, search,
  minimap, marching-ants signals, hover-to-highlight, focus dimming,
  cardinality markers, transparent engine chrome + custom selection outline.
- Single long-lived `DiagramController` owns state; view settings live in Vyuh
  typed options; a `ChangeNotifier` (`LensState`) bridges to widgets.
- Deployed as a **WASM release** build behind a `trycloudflare` tunnel.

**Authoring (Phase 2) — first slice done**
- `SchemaWorkspace` (mutable tables; the card reads from it, so edits are live).
- **Add table** (name, module, columns) → new node on the canvas.
- **Add column** to the selected table → node resizes + ports refresh.
- **Export `.spy.yaml`** dialog (copy all models to clipboard).

## Next steps

### Hackathon and Serverpod integration milestone

Build the schema visualization layer for eventual integration into Serverpod
core, and demonstrate it in the Serverpod hackathon submission. The first
milestone is accurate visualization of all schemas in a Serverpod project,
with reliable search, filtering, and relationship inspection.

Work through [BUGS.md](BUGS.md), starting with schema correctness and viewer
reliability. The authoring work below remains on the roadmap after that viewer
milestone. The hackathon date, submission requirements, and exact Serverpod
integration surface are still to be established.

### Phase 2 — finish authoring
1. **Relations on the canvas.** "Add relation" between two selected tables
   (pick child column + parent) → creates a connector and records the FK in the
   workspace; update the card's FK badge.
2. **Edit & delete.** Rename table/column, change type/nullable, delete a
   column/table, delete a relation. Reflect via `setElementBounds`/`setPorts`
   and workspace mutation.
3. **Validation.** Validate against Serverpod model rules (id required, relation
   target exists, id type matches FK, unique names) and surface findings inline
   (e.g., an error badge + a problems panel).
4. **Real export.** One `<class_snake>.spy.yaml` per table (plus enum files),
   zipped for download; offer "open the generated project" round-trip.
5. **Undo/redo UI.** Vyuh already records edits as transactions — expose undo/redo
   buttons and keyboard shortcuts.
6. **Save/load a working schema** as JSON (workspace) so an editing session can
   be resumed, separate from the read-only analyzed graph.

### Phase 1 — remaining polish
7. **Zoom LOD.** Mount full widget cards only above a projected-size threshold;
   render a lightweight name-only node below it (keeps the 122-table overview
   smooth). This is the biggest remaining performance lever.
8. **Node density** setting (comfortable/compact) affecting row height, ports and
   card metrics together.
9. **Edge routing.** Only `ConnectorRoute.straight` ships in the OSS packages;
   orthogonal/curved require a (commercial) route provider. If license is
   available, wire it; otherwise leave straight.
10. **Legend** of module colors; keyboard navigation (search-select, arrow
    focus); light theme pass.
11. **Export view** as PNG/SVG from the app (SVG export exists headlessly in
    `tool/export_svg.dart`; expose in-UI and include the custom chrome).

### Phase 3 — product maturing
12. **Input modes.** Desktop folder-path picker (in addition to zip upload); git
    URL clone; analyze `.spy.yaml`-only projects without migrations.
13. **Multi-package/module projects.** Let the user choose which package's schema
    to view when a zip contains several Serverpod servers.
14. **Share/persist views.** Save the diagram (positions, filters, settings) with
    `DiagramJsonCodec` and share/restore it.
15. **Incremental/real-time.** For a local path, watch `.spy.yaml`/migrations and
    re-analyze on change.

### Packaging & upstream (make it adoptable)
16. **Clean the Android app id** (`com/example/pod_lens_flutter` folder + id).
17. **Split into packages.** Extract `SchemaGraph` + `SchemaExtractor` +
    `ProjectAnalyzer` + `SchemaDiagram` into a reusable package (pure Dart) so
    it can be published and embedded, leaving the Flutter app thin.
18. **CI.** The scaffold added GitHub workflows; make them green (analyze, test,
    build web) and add a release-web job.
19. **License + docs.** Add a LICENSE; finalize README with screenshots/gif;
    keep `docs/PLAN.md` and this file current.
20. **Upstream conversation.** Package the extractor so the Serverpod team could
    adopt it (e.g., as a companion tool or an Insights feature).

## Known constraints
- **Vyuh auto-layout / minimap / routing** are commercial; we implement our own
  layout and minimap. Hover/selection chrome is disabled via a transparent
  selection theme and replaced by our overlay.
- The tunnel serves a **WASM release** build; debug web (`flutter run -d chrome`)
  cannot be tunneled (DWDS mixed-content).
- Dogfood schema (elog) models are generated; treat
  `serverpod_lens_server/lib/src/elog_schema/**` as data, not source.

## How to run
```sh
dart pub get
cd serverpod_lens_server && dart run bin/dump_schema.dart   # refresh asset
cd ../serverpod_lens_flutter && flutter run -d chrome       # dev
# release over a tunnel:
flutter build web --release --wasm
python3 serve.py   # serves build/web with application/wasm MIME, then tunnel it
```
