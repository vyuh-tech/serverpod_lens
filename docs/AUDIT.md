# Project audit — 2026-10-09

The architecture fits a read-only feature for Serverpod development tools.
The host supplies a resolved schema; Lens reads it into a plain Dart graph and
maps it to native Vyuh shapes. The reusable viewer is separate from the demo.
Upstream installation and automatic host delivery remain integration work.

## Boundaries

| Module | Owns |
| --- | --- |
| `serverpod_lens_schema` | Graph model and resolved migration interpretation |
| `serverpod_lens` import adapters | ZIP selection, partial YAML inference and PostgreSQL AST mapping |
| `SchemaCatalog` / `SchemaContext` | Search, filtering, neighborhoods and groups |
| `SchemaDiagram` | Schema meaning mapped to native table shapes and connections |
| `SchemaViewer` | Canvas and screen interactions with a supplied graph |
| Demo `SchemaMapScreen` | Asset loading, file picking, pasted SQL and diagnostic review |
| Serverpod fixture | Backend authentication and generated protocol bridge |

The viewer has no generated client, API initialization, file picker or bundled
schema dependency. Replacing the widget's graph refreshes the map and preserves
view preferences. Context groups reset for the new dataset.

## Cleanup and corrections

- Removed obsolete demo forwarding files, client initialization, unused config
  asset, authentication dependencies, obsolete backend app-config route, unused landing
  template/widgets and scaffold pubspec comments.
- Kept one shared migration reader. Generated protocol code remains managed by
  Serverpod; the viewer consumes the plain graph model.
- Preserved schema-qualified identities and distinct module metadata for resolved
  definitions. YAML imports label inferred project membership rather than inventing
  modules from table-name prefixes.
- Kept newest-migration selection, complete-definition preference, invalid snapshot
  rejection and valid empty schemas. Project-only snapshots disclose missing modules.
- Added explicit YAML import diagnostics, parent-class resolution, inferred IDs,
  basic indexes and invalid-file messages.
- Added browser SQL import with the PostgreSQL WASM parser and an AST adapter.
  Unsupported statements and unresolved relationships are disclosed before rendering.
- Retained native table rendering, minimap, layouts, connector routing, snap guides
  and effects. There is no custom diagram renderer or animation engine.
- Retained contextual exploration, overlapping groups, neutral themes, the mobile
  drawer and the collapsible desktop browser.

Native admission rules reject schema edits, deletion, creation, resizing and
rewiring while allowing node movement. Measured native rows supply port offsets;
unused column ports are omitted and native fallback markers are transparent. Composite relationships retain their pair labels and
attach at the first pair.

## Evidence and limits

Migration mapping is tested against Serverpod 4.0.4. Regressions cover types,
modules, foreign keys, composite constraints and partial uniqueness. Real parser
AST fixtures cover SQL keys, enum declarations, arrays, indexes and selected ALTER
operations. A host widget test covers graph replacement without demo controls.
[Verification notes](VERIFICATION.md) record suite and browser results.

The current dataset is a source snapshot: 396 tables, 5,133 columns and 536 foreign
keys, of which 505 have targets present. It is not a live catalog. Initial native
grid layout keeps startup practical; more expensive layouts remain explicit choices.

Remaining work includes host delivery and authorization, cross-version compatibility,
compiler-backed YAML imports, additional SQL operations, physical-device and
accessibility checks, archive limits and large-schema performance measurements.
Native SQL text parsing, drift detection, schema authoring and migration execution
are not implemented. Project licensing and extension redistribution terms need to
be settled before distribution as a Serverpod component.
