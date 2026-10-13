# Remaining work

The read-only viewer imports Serverpod migration snapshots and project ZIPs. Its
initial SQL graph comes from flutter_elog. Pasted PostgreSQL and SQL files now
parse locally on web; partial imports require review before rendering.

The authenticated Serverpod host connection is implemented: built-in email/JWT
authentication, project-scoped schema access, current-target delivery, manual
revision-based refresh and stale-network recovery. Table inspection and visual
migration comparison remain planned. See [FEATURE_PLAN.md](FEATURE_PLAN.md) for
the construction plan, delivery sequence, and verification criteria.

## Submission priorities — 13 October 2026

1. Provide working judge access to the connected Serverpod app: a deployed build
   or a reproducible runnable test build, with a read-only account and verified
   instructions. Cloud setup previously required a payment method; Cloud is
   optional. Check the event resources for available Cloud credits.
2. Verify the chosen build's complete flow: sign in, load the host schema, search
   and follow relationships, refresh, and sign out. Check denied access separately.
   The recorded local results in VERIFICATION.md do not establish production access.
3. Record and publicly upload a replacement walkthrough under two minutes. Previous
   recordings and their editing assets were removed on 13 October at the entrant's
   request. No public video URL is recorded.
4. Complete SUBMISSION.md with the actual build/video URLs, final source revision,
   judge instructions and entrant confirmations; submit in BuilderBase and verify
   receipt. The supplied rules give 14 October at 23:59 CEST / 15 October at
   03:29 IST as the deadline. Preserve the submitted build through judging.

Prioritize the working connected flow and submission over expanding feature scope.
The next product feature after submission is a table-details panel exposing column
metadata, indexes, enum values and incoming/outgoing relationships. Migration
history and comparison follow that panel. Automatic refresh, view preservation
across changed schemas and upstream Serverpod tooling integration remain open.

## Cleanup candidates

- Reconcile historical findings in BUGS.md and AUDIT.md with the current code and
  verification notes. For example, the old YAML findings predate the documented
  inferred ID/non-persisted field fixes, and earlier test counts are historical.
- Consolidate overlapping readiness notes so ROADMAP.md tracks remaining work,
  VERIFICATION.md tracks evidence and SUBMISSION.md tracks final submission fields.
- Local Flutter build and test caches account for much of the roughly 1.8 GiB
  workspace. They can be regenerated; schedule cleanup after preserving the judge
  build. Keep `serverpod_lens_server/web/app` while it supplies the served release.
- Retain the generated client, migrations, backend fixtures, SQL worker/WASM assets
  and source dataset. They have documented integration or runtime roles. Treat the
  server's `.serverpod` directories as database state, not disposable build caches.

Only recording artifacts were deleted during this cleanup; the items above are
recommendations, not additional deletions.

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
