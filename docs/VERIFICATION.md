# Verification — 2026-10-14

This report records the local monorepo baseline and the deployed large-schema
Cloud demo. Package publication is a separate workflow.

## Automated checks

The full `tool/verify.sh` run passed fatal-info analysis, formatting and the 172
tests below before the tree update. The subsequent tree checks are recorded at the end.

| Suite | Passed |
| --- | ---: |
| Manual publication policy and registry metadata | 4 |
| Plain Dart schema, extraction and snapshot policy | 17 |
| Internal launcher, real native subprocess and HTTP safety | 13 |
| Large-example backend, including embedded PostgreSQL | 21 |
| Shop generated-target integration | 1 |
| Reusable Flutter viewer | 84 |
| Optional ZIP/YAML/SQL import tooling | 17 |
| Optional connected Flutter demo | 15 |
| **Dart/Flutter total** | **172** |
| Optional PostgreSQL parser source tests (Node) | 5 |

The shared local Flutter viewer builds successfully for release web. Its clean
output contains no SQL worker/WASM files; the optional imports package owns them. Both actual
Serverpod examples use the shared packages. The Shop protocol and initial migration
were produced by the native Serverpod generator; generated code was not hand edited.
Its four authored tables have three foreign keys and four indexes. The complete
resolved target includes Serverpod framework tables (19 tables total). The large
example contains 156 target tables and 122 authored source mappings.

## Local workflow

`serverpod run lens` was exercised in the Shop server folder and printed a working
loopback browser URL. Both examples also run through the package executable:

```sh
dart run serverpod_lens_cli:serverpod_lens --project examples/shop/server
dart run serverpod_lens_cli:serverpod_lens --project examples/large_schema/server
```

Local viewing needs no login, running application server or database. The launcher
reads the generated target in a Dart subprocess, then serves the shared viewer.
Every manual refresh rereads the native target and authored sources, including
dependency changes and edits with preserved timestamps; overlapping HTTP reads
share one extraction. There is no background schema polling.

Launcher tests cover initial snapshot reuse, explicit refresh, source and generated
fresh target reads, dependency/equal-timestamp changes, revision-based payload omission, cross-origin/Host
rejection, unsupported writes and static-file path/link containment. Source indexing
accepts `.spy.yaml`, `.spy.yml` and `.spy`, prunes generated folders and rejects
ambiguous ownership. Serverpod generation remains responsible for model validity.

## Viewer acceptance

Post-consolidation local Chromium checks passed against both examples: no login, table selection,
Fields search, Source display, inspector dismissal without a placeholder, browser
collapse/expand, one manual refresh and no background polling. No uncaught browser
errors were recorded. Mounted-widget tests separately cover themes and layouts.

- All schemas → schema → tables; selecting a table preserves the current scope.
- Every column appears in its native card with field-to-field key bindings.
- Selected tables and neighbors are emphasized; unrelated items dim. Solid lines
  remain visible beneath outward native marching dashes. Repeated selection reuses
  running effects, while explicitly stopped effects can restart.
- Details, searchable Fields, Relationships, Indexes and organized Source tabs.
- Closed desktop inspectors leave no placeholder. Both panels collapse and resize;
  compact screens retain access through an edge handle. The header menu is removed.
- Native minimap, measured fit below 25%, manual positioning and layout choices.
- Persisted System/Light/Dark theme and manual refresh.
- Contract tests cover installed Serverpod 4.0.4 column types and foreign-key
  actions, qualified schemas, module duplication, vectors, composite keys, indexes,
  self-relations and preservation of additional resolved metadata.

The database target is authoritative. Non-persisted model fields remain in source;
they are not invented as database columns. These tests cover the installed SDK,
not every future Serverpod version.

## Performance diagnostics

One synthetic Chromium run used software rendering, 12 columns per table and
approximately two relationships per table. Measurements are diagnostic elapsed
times, not hardware GPU frame timings or a smooth-interaction guarantee.

| Tables | Relationships | Ready | Selection | Pan/zoom median interval |
| ---: | ---: | ---: | ---: | ---: |
| 156 | 300 | 3.66 s | 582 ms | 319 ms |
| 500 | 988 | 7.22 s | 1.96 s | 1.05 s |
| 1,000 | 1,988 | 12.13 s | 6.15 s | 3.01 s |

Native Grid, Tree, Force and Circular completed without browser errors. Native
Layered layout stalled on the large web graph; it is disabled on web scopes of
100 or more tables. Native Force uses a bounded iteration budget. Large full maps
still need SDK rendering/effect improvements; schema selection reduces the visible
scope. No custom renderer or vendored SDK modification was introduced.

## Security and remaining scope

The post-consolidation dependency audit queried 268 locked public packages and returned no OSV
advisories. This excludes private SDK dependencies and does not prove absence of
all vulnerabilities. Optional Cloud authentication retains its existing built-in
Serverpod/project-scope tests. Local Lens is intentionally loopback only.

Vyuh 3.5.1 still exposes its generic connection hover decoration; admission rules
prevent connection editing. The Cloud demo is now deployed and checked in Chromium.
Physical devices, other browser engines and screen readers
remain outside this pass. Standalone CLI distribution and upstream `serverpod lens`
integration remain future work; the supported command today is `serverpod run lens`.

## Consolidation regressions

The actual Shop subprocess test caught a missing utility import that injected
runner tests could not detect; it failed before the fix and now passes. Fresh
native reads are also tested against dependency changes and protocol edits with
preserved timestamps. Source reads handle equal-size/equal-timestamp edits.
Snapshot revisions ignore map key ordering while retaining array order.

Build-stamp tests cover changed source/dependencies and removal of stale output
assets. `serverpod run lens` rebuilt the internal viewer and printed a working
loopback URL after the move. Generated server/client code was not hand edited.
The native-effect suite remains; five tests for the obsolete document-opacity
implementation were removed, and importer tests moved with their implementation.

The inline IDE password was removed and launch paths/source links corrected.
Older Git history still contains the removed value; no credential was rotated in
any running/shared database. No application server, Cloud deployment or package
publication was started by this consolidation.

Both product package archives pass `dart pub publish --dry-run` in a clean staged
workspace. The only warning is Dart's unrecognized `publish_to_tier` key, handled
with the same strict exception as CDX; extra warnings and errors fail validation.
The staged viewer also passes analysis against freshly resolved dependencies.

The manual publishing workflow targets `https://pub.vyuh.tech` with tier `internal`.
Dry run is the default; real publication is restricted to `main`, schema first,
then viewer, followed by exact-version and tier verification. Git access remains
read only and publication explicitly disables tags. Other workspace packages stay
unpublished. No release or Cloud deployment was triggered.

## Final obsolete-file cleanup

Retired the old root runtime and archived its data outside the repo; removed the
root `tools/` folder and old root build output. Removed eight obsolete tracked
files, including unused Docker configuration and schema export wrappers. Shared
schema/transport regression assertions remain in place. This cleanup passes
fatal-info analysis, all 21 backend tests, and live schema delivery from both
local examples (19 and 156 tables). `tool/lens/` remains the local launcher.

## Consistent schema tree

The updated viewer passes fatal-info analysis, formatting, release web compilation
and all 94 viewer tests, including nine new navigation tests. These cover independent
schema/root expansion, retained selection, search/scroll restoration, refreshed
field matches, disabled navigation, uniform hover in both themes, narrow RTL with
large text, and keyboard activation with expansion semantics.

Local Chromium acceptance passed against both examples (19 and 156 tables): schema
and root collapse preserve the open inspector, search and table selection work,
and no uncaught browser errors were recorded. The browser and shared row component
own navigation state independently of the native Vyuh canvas. No Cloud deployment
or package release is part of this UI update.

Marching dashes inherit the native connector color and theme adaptation. Their
solid base remains visible at 35% opacity beneath brighter moving strokes. A new
regression test checks inherited color, the 0.2× default (eight-second cycle), and
base contrast; the supported speed range includes 0.1× for slower motion.

## Hosted large-schema demo

Serverpod Cloud now serves `44fd46c` at
https://serverpod-lens.serverpod.space/, replacing the earlier build at the same
URL. Cloud reports a successful build and rollout. The served Flutter JavaScript
matches the fresh release build.

- The connected demo uses the existing read-only account and built-in authentication.
- Its snapshot contains 156 tables, 122 source paths and 122 original model sources.
- Chromium checks cover login, schema navigation, Fields, Relationships and Source.
- The Source panel shows `elog_activities.spy.yaml` with its original repository path.
- Source assets are retained under Cloud's supported `assets/` payload; they are
  exposed through the protected endpoint, not the public web routes.
- All 25 backend tests pass, including four host-source regression tests.
- Workspace analysis is clean; changed Dart files are formatted. Generated code
  and database models were not edited, and no new migration was required.

The source regression initially returned empty maps in a simulated compiled
runtime. It now passes while preserving authored-source precedence in development.
The deployment archive contains the server, schema package and compiled frontend;
local password files, test databases and unrelated packages are excluded.
