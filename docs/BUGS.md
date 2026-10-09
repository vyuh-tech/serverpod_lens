# Serverpod Lens bug backlog

Serverpod Lens is a schema visualization layer intended for integration into
Serverpod core. The immediate milestone is a Serverpod hackathon submission.
Prioritize accurate, complete schema visualization and reliable exploration;
authoring and model export remain later-phase work.

Audit snapshot: 2026-10-09. These findings refer to the code reviewed during the
initial audit. Concurrent changes require rechecking before treating a finding
as current. See the resolution history below for verified changes.

## Tracking rules

- Keep stable issue IDs when updating or resolving an item.
- Reproduced means a targeted probe demonstrated the behavior.
- Code finding means inspection identified the issue; a targeted repro remains.
- Risk means the impact needs measurement or live verification.
- Mark fixed only after the relevant repro passes; record the fix and check.
- P1: schema correctness and core viewer reliability. P2: viewer polish,
  resilience, and performance. P3: authoring and optional export.

## Findings

The table records the original findings. Resolved or removed paths are listed below.

| ID | Priority | Evidence | Issue |
| --- | --- | --- | --- |
| B01 | P1 | Reproduced | ZIP imports choose a migration by table count instead of latest version, showing an older schema. |
| B02 | P1 | Reproduced | Deleted tables reappear when an older migration wins, including when the latest schema is empty. |
| B03 | P3 | Reproduced for search; code finding for other views | Added tables are absent from sidebar search, counts, filtering, and auto-layout because those views read the original graph. |
| B04 | P3 | Code finding | Added columns are absent from sidebar search and column counts. |
| B05 | P1 | Reproduced for rejection; code finding for stale target | Canvas selection does not update the screen's selected table; Add column rejects selection or targets a previously selected sidebar table. |
| B06 | P3 | Reproduced | Multi-table YAML export repeats mapping keys without separate files or document boundaries and fails YAML parsing. |
| B07 | P3 | Code finding | Model export drops defaults, indexes, uniqueness constraints, and FK update/delete actions. |
| B08 | P3 | Reproduced | Headless SVG export crashes with a missing connector-target error; its controller does not register the custom table shape. |
| B09 | P1 | Reproduced | YAML fallback omits Serverpod's implicit id column. |
| B10 | P1 | Reproduced | YAML fallback includes fields marked !persist as database columns. |
| B11 | P1 | Reproduced | YAML fallback misses object relations and their generated foreign keys. |
| B12 | P2 | Reproduced | A malformed enum values entry throws a type-cast error and aborts import. |
| B13 | P1 | Reproduced | A composite unique index incorrectly marks each member column individually unique. |
| B14 | P1 | Code finding against installed Serverpod definitions | Supported database types such as bit, jsonb, and geography become unknown because the type mapping is incomplete. |
| B15 | P1 | Reproduced | Extraction replaces actual Serverpod module names with table-name prefixes. Preserve module identity separately from any display grouping. |
| B16 | P1 | Code finding | Relationship 1/N labels depend on selection rather than schema cardinality, so selecting the other endpoint changes the meaning. |
| B17 | P2 | Code finding | Loading another project attaches a controller with default view options and resets settings. |
| B18 | P2 | Code finding | A successful project import does not clear a previous sample-loading error, leaving the error view visible. |
| B19 | P3 | Code finding | Add-table and add-column dialogs accept invalid identifiers and model definitions without validation. |
| B20 | P2 | Risk | ZIP parsing runs synchronously on the UI thread and decodes unrelated files; measure responsiveness and memory use with large archives. |

## Verification baseline

- Workspace `dart analyze` passed during the audit.
- Existing Flutter tests passed: three tests covering upload, diagram building,
  and table rendering. The scaffold widget test contains no assertions.
- Existing server tests passed: one greeting endpoint test.
- Targeted temporary probes reproduced the findings marked Reproduced above;
  they were removed after the audit. Add focused regression coverage when fixing
  each item.
- Live app navigation and server/Flutter log checks were not performed because
  the required Serverpod and Dart MCP tools were unavailable.

## Resolution history

2026-10-09 native Vyuh cleanup:

- B01, B02: latest migration wins, including empty definitions. ZIP regression tests pass.
- B08: exporter registers native table and layout extensions. `tool/export_svg.dart` succeeds.
- B13, B14, B15: unique-index semantics, all 4.0.4 column-type identifiers and module identity are covered by server and Flutter regression tests.
- B16: cardinality labels belong to imported connectors and do not change with selection.
- B18: successful loading clears the previous error in `_setGraph`.
- B03–B07 and B19: the custom schema-authoring paths and YAML exporter were removed. Native drawing edits are explicitly separate from source-schema editing.
- B20: unrelated archive entries are no longer decoded as text. Synchronous ZIP parsing still needs profiling.
- B09–B12 and B17 remain open. YAML fallback is partial; the README explains its limits.

Current verification: workspace analysis and formatting pass; six Flutter tests
and two server tests pass. The backend and companion web app start successfully.
