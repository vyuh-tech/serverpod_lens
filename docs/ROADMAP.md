# Remaining work

The read-only viewer imports Serverpod migration snapshots and project ZIPs. Its
initial SQL graph comes from flutter_elog. Pasted PostgreSQL and SQL files now
parse locally on web; partial imports require review before rendering.

The next feature milestone is live host connection, table inspection, and visual
migration comparison. See [FEATURE_PLAN.md](FEATURE_PLAN.md) for the construction
plan, delivery sequence, and verification criteria.

## Integrate with Serverpod tooling

- Agree on the host development-tool surface with the Serverpod team.
- Supply the host project's complete resolved definition directly.
- Connect the host schema-change event to the viewer's existing graph refresh interface.
- Restrict any schema-delivery endpoint to authorized development use.
- Establish a tested compatibility range across Serverpod versions.

## Improve schema fidelity

- Expand import diagnostics into a browsable report with statement locations.
- Expose enum values, partial-index predicates and vector dimensions where useful.
- Integrate Serverpod compiler resolution for YAML imports; current inference
  discloses its limitations.
- Expand SQL fixture coverage for ALTER and procedural transformations, or obtain
  an authoritative read-only database catalog export for that dataset.

## Verify the viewer at scale

- Measure frame time, startup time and memory on large schemas.
- Move ZIP parsing off the UI thread if measurements warrant it; impose appropriate
  archive limits before making arbitrary public uploads a supported service.
- Extend keyboard and screen-reader coverage; verify on physical mobile devices.
- Persist native view settings across app restarts.

## Extend contextual exploration

- Profile focus and fitting against dense neighborhoods in the full dogfood map.
- Persist named groups per project and reconcile membership after schema refresh.
- Add collapsed group views and group-to-group summaries while retaining original
  table and foreign-key identities.
- Verify contextual keyboard navigation and screen-reader announcements in the
  running app.

Schema authoring is outside the current feature. There is no plan to reintroduce
editor palettes or editable table cells into this read-only viewer.
