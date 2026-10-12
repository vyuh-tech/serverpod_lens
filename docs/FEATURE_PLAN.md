# Live schema connection table details and migration comparison

Build three read-only features for the Serverpod hackathon: connect Lens to its
host project, inspect schema metadata, and see how two schema versions differ.
Contextual exploration makes these features usable on large maps: focus on a
table or group while retaining enough surrounding schema to understand it.
Keep the viewer reusable for eventual integration into Serverpod development
tooling. This is an implementation proposal; the exact upstream host surface
remains to be agreed with the Serverpod team.

Implementation status, 12 October 2026: the separate connected host app now
authenticates with Serverpod, checks a project-specific scope, and reads the
generated current target through `schema.snapshot`. Manual revision-based refresh,
stale-network recovery and denied-access handling are implemented. Unchanged
refreshes retain the map; changed graphs reset exploration context. Migration
comparison, automatic polling, full details panels and upstream tool installation
below remain proposals, not shipped features.

## Scope and source meaning

Treat these as distinct sources:

| Source | Meaning | MVP behavior |
| --- | --- | --- |
| Current target | Resolved tables from the host's generated protocol, after generation and reload | Default connected view when the host adapter supports it |
| Migration snapshot | Complete definition.json for a specific migration | Immutable history and comparison inputs |
| Running database | Actual database catalog | Later drift feature; not required for this milestone |
| ZIP or bundled asset | Offline imported snapshot | Existing viewer continues to work |

A changed YAML file is not a refreshed target until Serverpod has successfully
generated and loaded it. Watching migrations alone cannot show uncommitted model
changes. If only migrations are available, label the source Latest migration;
never label it Current target or Applied database.

Serverpod's complete definition.json includes module dependencies, while
definition_project.json contains project tables. Prefer complete definitions
and expose partial coverage when only project definitions are available.
[Serverpod migrations](https://docs.serverpod.dev/concepts/data-and-the-database/database/migrations)

## Shared construction

Extend the existing reader and catalog rather than adding another schema parser.

```text
Host resolved target + migration files
                  ↓
HostSchemaSource → immutable SchemaSnapshot
                  ↓
        SchemaDefinitionReader
                  ↓
       SchemaGraph + source metadata
           ↙                 ↘
SchemaCatalog inspection   SchemaComparison
           ↘                 ↙
      SchemaViewer + native Vyuh canvas
```

Use three modules with small interfaces:

- HostSchemaSource: read a snapshot and list migration versions. Hide host
  runtime access, file discovery, caching, and normalization inside it.
- SchemaCatalog: resolve a selected table, its columns, indexes, incoming and
  outgoing relationships, and available enum information.
- SchemaComparison: compare two immutable normalized snapshots and return a
  deterministic change set, independent of Flutter and transport.

Represent provenance beside the graph: project ID, source kind, revision,
migration version when applicable, completeness, warnings, and reader version.
Use a hash of canonical schema content as the revision; generatedAt must not
change the revision. Use structured schema/table identities internally instead
of splitting display names on dots.

Maintain one normalized snapshot contract in serverpod_lens_schema. Generated
Serverpod .spy.yaml DTOs bridge delivery to the client. Do not make pure-Dart
comparison depend on the generated Flutter client. Initial DTOs need no table
declarations or database migration; snapshots and comparisons can remain in memory.

## 1 Live host connection

### Host integration

1. Implement a host adapter in the Serverpod backend. For the first vertical
   slice, this repository's server is the host; use a small fixture schema to
   prove generation and reload updates. Make host access injectable so later
   embedding does not depend on this repository's folder structure.
2. Obtain resolved target tables from the host runtime's database analyzer.
   Installed Serverpod 4.0.4 exposes getTargetTableDefinitions(), used by its
   Insights getTargetTableDefinition method. Adapt these tables to the shared
   reader contract and include all project, module, and framework tables.
3. Discover migration versions from the host's migration metadata and complete
   definition files. Use Serverpod's version handling; include tagged migrations
   such as <timestamp>-v1-0-0. The current ZIP pattern accepts digits only and
   must be updated consistently.
4. Validate root and project identity at host configuration time. Requests use
   project/version IDs, not client-supplied filesystem paths. The standalone
   server cannot inspect another project's current target by using its own
   generated protocol; that target needs its own host adapter.

### Delivery and refresh

Proposed endpoint operations: describe project, list migrations, and read a
snapshot with an optional known revision. Return unchanged without resending
the graph when content has not changed. Return snapshot metadata and graph
together so refresh cannot mix different revisions.

Start with a revision check about every two seconds while the connected view
is active, plus Refresh. Avoid overlapping requests; pause background polling,
back off on disconnect, and dispose timers on source switches. Host-side caching
avoids reparsing every migration on every request. Reconcile files after reload
or a completed generation signal, and retain the last valid snapshot during
partial writes. Resume checks after backend restart. A push stream can follow
if the agreed host integration exposes a suitable change signal.

Use Serverpod's built-in authentication and a schema-read scope plus project
authorization. Registration is opt-in for development in the initial adapter.
Retain offline viewing for signed-out users; connected viewing prompts for the
existing identity provider when needed. Do not place the Insights shared secret
in the Flutter bundle. Serverpod endpoints are public unless access is explicitly
restricted. [Endpoint authorization](https://docs.serverpod.dev/concepts/working-with-endpoints/)

### Viewer behavior

- Add a source control for Sample, Open ZIP, and Connected project; obtain the
  host address from existing client/host configuration.
- Display Connecting, Connected, Updating, Disconnected, or Access denied,
  plus source kind, migration version where relevant, and last successful refresh.
- On temporary failure, keep the last graph visible and mark it stale. An invalid
  target is an error, not an empty schema or permission to fall back silently.
- Preserve camera, filters, query, view settings, selection, and existing node
  positions during refresh. Apply changes in a native diagram transaction; place
  new nodes near their relationships without automatically relaying out the map.
- Recompute rows and ports for changed tables. Clear details if its table is
  removed and explain why. Ignore late responses from a previous project.
- Existing schema admission rules reject content edits. Provide a narrow trusted
  refresh path for imported snapshot updates while user gestures remain read-only.

Done when a generated host-model change appears without ZIP upload, the view
stays in place, reconnect works, and unauthorized users cannot read snapshots.

## 2 Table details

Selecting a table opens a desktop details panel beside the canvas. On mobile,
use a full-height details sheet with a clear close action. Sidebar selection and
canvas selection use the same selected table ID; neither rebuilds the graph.
For multiple selections, show a count and let the user pick one for inspection.

The panel contains:

- Overview: qualified table name, Dart class, schema, Serverpod module, available
  documentation, and source revision.
- Columns: database and Dart types, nullable, primary key membership, individual
  uniqueness, and defaults. Distinguish no default from a displayed SQL default.
- Indexes: type, ordered elements, unique/primary status, and partial predicates.
  Composite uniqueness belongs to the index, not every member column.
- Relations: outgoing and incoming FKs, every column pair, and ON DELETE/UPDATE.
  Clicking a reference selects its target; missing targets show an explicit warning.
- Enums: show values only when the snapshot provides an unambiguous association;
  otherwise expose an available-enums list. Do not infer enum identity from names.

Extend SchemaCatalog with cached identity and reverse-reference lookups. The graph
already retains most metadata, but SchemaIndex currently loses primary-index
status and structured index element information. Preserve these through the
reader/DTOs before displaying them. Model docs, field-level enum bindings, and
vector dimensions are optional enrichments; show unavailable metadata honestly.

Done when every displayed detail agrees with its fixture snapshot, incoming and
outgoing relation navigation works, and desktop/mobile keyboard focus is usable.

## 3 Migration comparison

### Inputs and comparison module

Add Compare with explicit Before and After version selectors. Both versions must
belong to the same project and use compatible coverage. Default to the previous
and latest migrations. With fewer than two versions, explain why comparison is
unavailable. Retain migration history during ZIP discovery as well, so offline
comparison uses the same module. A single imported SQL graph has no history.

Compare normalized definitions rather than SQL text. Produce additions, removals,
and modifications for tables, columns, indexes, foreign keys, and available enums.
For modifications, keep exact before/after values: type, nullability, default,
constraint properties, index predicates, referenced columns, and FK actions.
Ignore import timestamps and irrelevant input ordering, while preserving order
where it changes meaning, such as composite index and FK column pairs. Preserve
column order as a separate presentation change rather than a destructive change.

Match tables and columns by structured identity. Match indexes/FKs by their
stable names within a table when available; retain signatures for unnamed objects
and flag ambiguous duplicate matching. Count a renamed constraint as a name
change only when its definition matches unambiguously. A table or column rename
is removal plus addition in the MVP; do not invent rename detection.

A change set should include table ID, object kind, object identity, change kind,
before/after values, and reasons for review. Flag removals, narrower types,
nullable-to-required changes, and altered referential actions for review; do not
claim a schema-only comparison proves data loss or runtime safety. Custom SQL
backfills and data transformations are not captured by these definitions.

### Comparison viewer

- Show added, removed, and changed counts plus a searchable change list.
- Keep unchanged objects subdued; provide Show changed only and optional related
  context. Use labels/icons along with color to identify change kinds.
- Render the union of before/after tables. Removed tables and relationships stay
  visible as ghosts; a column-level change list supplies exact before/after detail.
- Selecting a change focuses the relevant table and opens the details panel in
  comparison mode. Preserve enough surrounding relationships to explain it.
- Keep both revisions frozen while comparing. If the live target advances, show
  an update available notice rather than changing the comparison underneath users.
- Exiting comparison restores the connected/offline view and its camera/settings.

Done when fixtures produce deterministic change sets, removed objects remain
inspectable, and swapping versions reverses additions/removals consistently.

## Contextual exploration and named groups

Selecting a table should make its relationships easy to follow. Add a Focus
related action and a visible focus-mode toggle. In that mode, selecting a table
dims unrelated nodes and connections, emphasizes direct incoming/outgoing
references, and keeps the wider map as context. Keep the table details panel in
sync. A background click clears selection; Escape or Show all exits focus.

Offer one-hop focus first, with optional two-hop expansion and Incoming,
Outgoing, or Both direction controls. Mark selected tables, direct neighbors,
and second-hop neighbors distinctly. Explain missing relation targets rather
than suggesting there are no connections. Preserve cross-schema relationships
in the focus set; indicate when an active schema filter excludes a related table
and let the user reveal it explicitly.

Make Bring related into view an explicit camera action. Selecting a different
table should not repeatedly fit the map or interrupt panning. Fit only when the
user requests it, retain a readable zoom, and offer Back to previous view. Large
neighborhoods show their count and allow direction/hop narrowing before fitting.
Keep dimmed objects selectable so users can change focus directly.

Named groups are view metadata, not database schemas or Serverpod modules.
Create a group from selected tables, give it a name, and optionally assign an
accent. Allow overlapping membership, including tables from different schemas.
Initially use a named saved selection and highlight members in place; a native
group container is optional after verifying that it preserves member identities,
ports, and relationships. Grouping must not rewrite source schemas or move nodes
without an explicit user action.

Focusing a group emphasizes members, their internal connections, and one hop of
external neighbors. Distinguish internal edges from edges crossing the group.
Offer Members only and Members plus neighbors, a count/list of incoming and
outgoing external relationships, and navigation to the specific referenced table
or column. Derive group-to-group connection summaries from original FKs without
inventing relationships. Collapsed group diagrams can follow after this base
interaction is proven; counts should represent FKs, not database records.

Keep focus/group state in a small view-state module beside SchemaCatalog. Build
cached forward/reverse adjacency lookups, traverse with a visited set for cycles,
and apply native view styling instead of adding a custom renderer. If opacity is
blocked by current admission rules, allow only trusted view-decoration updates;
schema edits remain blocked. Keyboard users receive the same actions and textual
relationship list; do not encode group membership or hop distance by color alone.

Stage delivery: table focus and restore-view first; named groups and external
relationship inspection second; collapsed groups and persistent/shared group
definitions later. Session groups can initially live in memory. Refresh retains
groups by stable project/table identity and reports removed members; comparison
uses frozen membership with explicit removed-table markers.

Verify isolated tables, self-references, cycles, overlapping groups, filtered
neighbors, dense hubs, refresh removal, and comparison mode. Use the large dogfood
map to check that focus stays responsive and camera movement is predictable.

## Delivery sequence and verification

### Implemented context slice

The viewer now dims unrelated tables on selection and supports one/two-hop
incoming, outgoing, and bidirectional neighborhoods. Fit context and restore
camera are explicit actions. Schema-filtered neighbors have a reveal action.
Named groups support overlapping, cross-schema membership, colors, notes,
editing and removal. Their relationship sheet lists internal and boundary FKs,
including unresolved targets, with navigation to present tables. Members-only
focus is available for groups. These operations decorate the native Vyuh view
without changing schema data.

Groups are held in memory for the opened dataset and clear when a project is
opened. Persistence, refresh reconciliation, collapsed containers, group-to-group
summaries, and readable fitting of dense hubs remain follow-up work. Live host
connection, full table details, and migration comparison are planned separately.

Automated tests verify traversal, cycles, unresolved targets, overlapping groups,
FK counts, read-only decorations, camera restore, group creation/editing and
mobile controls. Widget screenshots verify control layout using a small fixture;
native canvas fonts in the test harness prevent typography review. Running-app
verification and large-map profiling remain outstanding because Serverpod/Dart
MCP runtime tools were unavailable during implementation.

Inspiration: [dbdiagram table groups](https://docs.dbdiagram.io/table-groups/)
and [diagram views](https://docs.dbdiagram.io/diagram-views/).

| Slice | Deliverable | Required proof |
| --- | --- | --- |
| 1 | Snapshot contract, provenance, reader fidelity, host adapter | Complete target includes installed modules; tagged migration ordering; revision ignores timestamps |
| 2 | Authenticated connected view and refresh | Anonymous/project-denied requests fail; changed target refreshes; disconnect/reload and late responses preserve correct view |
| 3 | Table details through SchemaCatalog | Composite constraints, predicates, cross-schema/self FKs, missing targets, defaults and mobile panel verified |
| 3a | Table focus, direction/hop controls and restore view | Cycles, isolated tables, cross-schema filters, dense hubs, keyboard access and readable camera fitting |
| 3b | Named session groups and external relationship list | Overlapping groups, stable membership on refresh, exact FK counts and read-only source behavior |
| 4 | Pure-Dart comparison and history inputs | Add/remove/modify/no-op, enum/index/FK changes, empty schemas, ordering, rename behavior, and version reversal fixtures |
| 5 | Comparison canvas and change navigation | Removed ghosts, changed-only context, frozen revisions, restore view, desktop/mobile and accessible labels verified |
| 6 | Hackathon demonstration and scale check | Connect → change a model → await host generation/reload → inspect details → compare two migrations; profile against the large dogfood map |

Implement each slice as a reviewable commit. Follow AGENTS.md for analysis,
formatting, generation, hot restart, tests and runtime logs. Generate DTOs through
Serverpod; never edit generated files. Start no server automatically. Keep GitHub
Actions disabled and do not reintroduce workflows.

Keep the feature read-only throughout. Database drift, schema authoring, migration
execution, automatic rename guessing, and collaborative layout persistence are
outside this milestone. Before implementation, confirm the adapter placement and
schema-read scope provisioning; upstream embedding remains a separate decision.
