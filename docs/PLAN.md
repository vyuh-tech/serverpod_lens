# Architecture

Lens visualizes the database schema produced by the user's Serverpod project.
The bundled SQL dataset and recreated backend models are demonstration fixtures.

## Data and ownership

- `serverpod_lens_schema`: plain Dart graph and resolved-definition reader.
- `serverpod_lens_server`: sample host target, built-in auth and project read scope.
- `serverpod_lens_client`: generated transport, kept outside the reusable viewer.
- `serverpod_lens_host_flutter`: sessions, initial/manual refresh and DTO conversion.
- `serverpod_lens`: indexed navigation, saved view geometry, inspector and mapping.
- `serverpod_lens_flutter`: optional offline imports and sample app.

The host supplies a graph; the viewer never reads an arbitrary server path or
queries application records. Complete target metadata remains available in the
inspector. Source adapters disclose partial YAML/SQL inference.

## UX audit and implementation plan — 14 October 2026

The previous viewer mixed a schema scope, a bounded table neighborhood and a
visit-history stack. It exposed those implementation choices through Back,
References, detail-level menus, an inspector Explore action and a footer. This
made selecting the same table behave differently in the tree and canvas.
The inspector also mixed table metadata with field search, and the Relationships
tab supplied another close action. The native minimap started collapsed; camera
fit was requested before the final viewport was reliably available.

The replacement plan is:

1. Keep one navigation hierarchy: All schemas → actual database schemas → tables.
   Schema selection defines the diagram scope; table selection inspects within it.
2. Remove Back/history, neighborhood expansion controls, detail selection, the
   footer, Explore table, the overflow menu and the obsolete group model.
3. Reuse native selection outlines, fade and flow effects. Keep the selected
   table and its immediate neighbors readable; dim unrelated elements. Dashes
   flow from the selected table toward each connected neighbor. Selection does
   not edit metadata, relayout or change canvas-click zoom.
4. Reuse native layout, movement, snapping, minimap and camera fit. Show the
   minimap expanded when enabled, and fit after measuring the canvas viewport.
5. Use the same inspector in the desktop panel and mobile sheet: Details,
   Fields, Relationships, Indexes and Source. Search and field badges live in
   Fields; Source has its filename, path, open action and a formatted code card.
   Clear selection restores the overview without collapsing the desktop panel.
6. Offer System, Light and Dark through one persisted app theme controller in
   both hosts. Settings and authentication share the active app theme.
7. Verify removal of old controls, independent schema expansion, scope filtering,
   selection restoration, related-node effects/direction, camera stability,
   maximum fit, minimap toggle, inspector tabs/source and both color schemes.

### Native reuse and Lens ownership

| Behavior | Existing Vyuh capability | Lens responsibility |
| --- | --- | --- |
| Table cards and key connections | `ShapeTable`, native ports and connectors | Map resolved Serverpod metadata to table rows and bindings |
| Selection border | Native canvas selection chrome | Keep tree selection and the inspector synchronized |
| Dim unrelated nodes | Transient `Effect.fade` | Determine immediate neighbors; clear emphasis with selection |
| Moving connection dashes | `Effect.flow` with `EffectParticle.dash` | Select incident edges and orient flow toward the other node |
| Automatic layout and dragging | `Layout.grid`, native movement, snapping | Choose schema scope and persist account-specific positions |
| Maximum fit and zoom | `DiagramCamera`, `ViewTarget` | Wait for mounting and measure the actual available viewport |
| Minimap | `MinimapExtension` and runtime options | Start expanded when enabled and preserve the choice across scopes |
| Inspector, source and themes | Flutter Material widgets | Shared responsive presentation, metadata search and host theme state |

The obsolete bounded-slice navigation module and group type are removed. Native
effects remain transient: selecting a table does not rewrite document opacity or
produce undo entries. Tree and relationship navigation use native view targets;
canvas clicks keep the current camera. Rendering remains entirely native.

## Navigation and rendering

All schemas opens the complete graph; selecting a schema shows all its tables.
The tree and inspector relationship links select tables using the same behavior.
Canvas selection inspects and emphasizes immediate connections without changing
pan or zoom. View geometry is scoped by host/account.

Vyuh owns native table rendering, row ports, connectors, layout, pan/zoom, snapping
and minimap. Lens supplies semantic mapping and screen UI. Native admission rules
block schema editing while allowing view movement and appearance changes.

## Boundaries

Generated definitions are authoritative; the live database catalog and migration
comparison are outside this release. Compatibility is checked against Serverpod
4.0.4. Installation inside upstream Serverpod development tools remains future work.

See the [README](../README.md), [verification](VERIFICATION.md) and
[security review](SECURITY_REVIEW.md) for current behavior and evidence.
