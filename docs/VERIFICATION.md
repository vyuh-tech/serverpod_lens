# Verification

## Serverpod Cloud release — 2026-10-13

Deployed source `a167107`, attempt `94a6c66c-0255-4d5d-aade-f3546ed98322`.
Cloud reports 1/1 instances ready at https://serverpod-lens.serverpod.space/.
The managed PostgreSQL database retains the authenticated demo account across
deployments. Username `test` maps to an operator-created email identity with only
`schema:read:serverpod_lens`; its password is supplied separately.

- Workspace Dart analysis passes and changed Dart files are formatted.
- The connected JavaScript release builds. The extracted backend package resolves
  with `dart pub get --enforce-lockfile` and builds with `dart build cli` using no
  Flutter SDK or private Vyuh registry credentials. Cloud build and rollout pass.
- The deployment archive contains the frontend, shared schema package and Flutter
  API config asset; development passwords, database directories and caches are
  excluded. The demo password is absent from the compiled frontend.
- Production HTTP checks: signed-out schema requests return 401; demo login returns
  200 with only the read scope; authorized delivery contains 156 target tables;
  unchanged refresh omits the graph; another project is rejected with 400.
- Chromium at the actual public URL, without request overrides: demo username
  sign-in, native map rendering, `elog_areas` search, completed unchanged refresh
  retaining the query, and sign-out returning to login all pass. Uncaught browser
  error count is zero. The authenticated screenshot was inspected.

Cloud packaging now excludes the viewer's Flutter-only `base_menu` override by
keeping it in the viewer pubspec. A pre-deploy hook writes the public API URL at
`web/app/assets/assets/config.json`, matching Flutter's request for the asset key
`assets/config.json`. Serverpod 4.0.4's `FlutterRoute` does not generate this file.
The host's ordinary config route remains at `/assets/config.json`. A duplicate
route registration reproduced Relic's `Conflicting children` error locally and
was removed. The final backend library code matches the earlier successful
release; the upload adds the packaged config asset. Experimental pool settings
were reverted to the platform default.

The automated regression suites below were not rerun for this deployment. These
are build, packaging and production checks; physical-device and screen-reader
verification remain open. Public demo video and BuilderBase submission are pending.

## Connected host and release — 2026-10-12

Current automated suite: **92 passing checks** across seven suites:

| Suite | Passed |
| --- | ---: |
| Pure Dart schema reader | 5 |
| Reusable Flutter viewer | 24 |
| Offline Flutter demo | 34 |
| Connected Flutter host | 11 |
| Serverpod backend, including embedded PostgreSQL integration | 12 |
| Real PostgreSQL parser (Node) | 5 |
| Offline SQL importer (Python, isolated sqlglot 30.21.0 environment) | 1 |

Workspace `dart analyze` passes. The connected host builds as a release JavaScript
web app, served locally by Serverpod's `FlutterRoute`. Cloud's packaging dry run
succeeds, including `web/app` and the pure Dart schema dependency while excluding
local credentials. The extracted archive resolves its Dart dependencies and
builds a native backend with `dart build cli` (required for packages with native
build hooks; plain `dart compile exe` is insufficient). This verifies packaging,
not a Cloud rollout. Cloud creation was rejected because the account requires
a payment method; hosting there is optional under the hackathon rules.

Actual local HTTP uses two separate built-in email accounts. Signed-out access
returns 401, the account without the project scope returns 403, the reader loads
156 unique target tables, and an unchanged revision omits graph content. The
operator-only scope grant command was also exercised successfully.

Live Dart MCP inspection and sign-in exposed a duplicate-target integration bug:
Serverpod's generated list included auth_core both directly and through auth_idp
(161 entries, 156 unique tables). The viewer rejected the repeated node identity.
The host now deduplicates identical database identities and rejects conflicting
definitions. The minimal and actual-endpoint regressions both failed before the
fix. The release browser now renders the connected graph successfully.

Release Chromium checks additionally passed reader sign-in, actual graph rendering,
selection preservation on unchanged refresh, an aborted schema request retaining
the map with a stale warning, retry recovery, relationship-label and snapping
settings, 320px settings, sign-out removing the map, and a separate denied account
at phone width. Screenshots were inspected. Flutter semantics overlays sometimes
intercept Playwright pointer targeting; settings were also exercised through their
semantic actions. These checks do not replace physical-device or screen-reader
verification. The release build retains an upstream unused Fluent Light font
warning; the rendered controls checked here show their icons.

Connection tests cover overlapping refreshes, late responses after disposal,
malformed snapshots, wrong project, stale network recovery, protected-graph
removal on 401/403, and denied layouts at 320/1100px with doubled text. Endpoint
tests cover missing auth, wrong scope, arbitrary project/path rejection, module
coverage, and revision handling. No production credentials were used in tests.

Selection effects now default to Off. The native canvas regression confirms
selection starts no effect until explicitly enabled, while all effect controls
remain usable. The release browser comparison at 1440×960 with accessibility
semantics and software rendering measured pointer-up to two animation frames:
394–483ms before and 397–464ms after (three warm transitions). This is **not a
meaningful focus-latency improvement**; disabling effects removes continuous
animation work but leaves camera/paint cost. The earlier native batching result
below is a separate measurement. Hardware-accelerated browser profiling remains
necessary before claiming smooth performance on large schemas.


## Node focus latency — 2026-10-12

Focus previously called the native opacity verb separately for every changed
element. An outer batch grouped publication but still prepared and checked each
intermediate document. The 506-table regression fixture required 505 admission
checks. Focus now submits all opacity replacements in one native transaction
(two admission phases), preserves the read-only rules, and skips unchanged
elements. Selection notifications and browser/group clicks share one queued
context refresh per controller and turn.

On the actual 396-table, 536-relationship asset, a same-process native-engine
comparison measured a median broad focus update of **725.769 ms before** and
**307.930 ms after** (five samples each). A subsequent sequence selecting the
first 25 tables measured **4.090 ms median**, with a 296.017 ms maximum including
the initial broad update. These measure context decoration only, excluding
browser painting, camera animation and selection effects. Initial broad focus
still has a noticeable processing cost; these are not end-to-end browser timing
claims. Removing import history in a diagnostic probe did not materially improve
the broad update, so import history was left intact.

Repeat current measurements from `serverpod_lens_flutter` with:

```sh
flutter test --no-pub tool/benchmark_focus_test.dart
```

Validation: 24 viewer tests and 34 distinct demo tests pass (the 33-test demo
suite plus the final four-test focus run, including one added undo case).
Regressions cover bulk admission, unchanged focus, denied preview/commit with
complete rollback, movement undo retaining current decoration, and rapid
selection changes using the final selection. Dart analysis passes for both
Flutter packages and the added undo test; changed Dart files are formatted.

Serverpod MCP hot restart completed. Dart MCP connected through the app's DTD,
but live driver verification timed out in DWDS while the inspected app showed
its loading screen. Dart MCP reported no runtime errors. Live browser click
latency therefore remains unverified; automated widget and native-engine tests
are the evidence for this change.

## Tagged migration follow-up — 2026-10-12

The migration ZIP filter now accepts Serverpod's lowercase alphanumeric/dash
tags. Three regression tests failed before the fix and pass afterward: newer
tagged complete definitions, newer tagged project-only definitions, and malformed
newest tagged definitions that must reject the import rather than load stale tables.
The full demo suite passes all 30 tests. Targeted Dart analysis reports no issues;
both changed Dart files are formatted.

`serverpod start` was launched with explicit user authorization. The Serverpod
MCP reports the server running, migrations applied, Flutter serving on
`http://localhost:45855`. The first Flutter hot restart timed out even though the
MCP tool reported completion. After opening the app in the browser, a retry
logged `Restarted application in 11,877ms.` The app URL also returns HTTP 200.
This verifies startup and
restart; it does not establish the pending authenticated schema delivery flow or
a judge-accessible deployment.

## Settings and connection hardening — 2026-10-12

Relationship labels are hidden by default. The setting restores the original
native label objects in one transaction, retaining IDs, text, column mappings,
positions and badge styling. Label-only changes do not update routes or styles
and do not enter undo history. Failed label updates leave their preference alone;
failed connection appearance updates restore the last successful controls.

Settings now have Connections, Animation and Canvas categories. Small screens
and larger text use a category dropdown. Nearby-table snapping has an enable
switch and screen-pixel distance; the distance control disables when snapping
is off. Grid snapping remains a separate option.

Eleven connection hardening checks cover empty graphs, repeated toggles, stable
label IDs, composite and multilingual text, cache isolation across controllers,
external document changes, uncommitted preferences, denied updates, read-only
admission, all route styles and undo history, including 100 deterministic mixed
settings operations with a pinned random seed. Seven settings widget checks
exercise 320px and 1000px widths, doubled text, light/dark themes, RTL, snapping
disabled, independent grid snapping, distance endpoints and rejected style
updates. Test screenshots check geometry only: the test font uses placeholder
glyphs and cannot establish production typography quality.

On the same synthetic Linux Flutter engine fixture, showing 3,000 labels on
1,000 connections improved from 4,145 ms to 75 ms (about 55 times faster).
Reapplying unchanged settings improved from 6.2 ms to 0.003 ms per call over five
iterations. These are diagnostic timings, not release-browser frame-time or
physical-device measurements. The native route/style updates are also bulked;
this benchmark does not isolate routing speed.

The final runner repeat measured 66 ms to restore labels at the same scale.
Workspace analysis and changed-file formatting pass. All 57 Dart/Flutter tests pass:
24 viewer-package tests, 27 demo tests, 5 shared-reader tests and 1 Serverpod
schema bridge test. Existing demo regressions were updated to enter Animation
settings explicitly and enable labels when checking their preservation.

Five real PostgreSQL parser tests pass, including a broken trailing declaration
and 100 self-referencing tables. The parser regression now compares its AST
against the committed fixture instead of rewriting that fixture during a test.
On Node 26.8.2, `node --test parser.test.cjs` only reported the file as passing;
`node parser.test.cjs` executes and reports all five individual `node:test`
checks, so the npm test command now uses that path.

The Python SQL importer regression is blocked: `sqlglot` is absent and an isolated
attempt to obtain pinned version 30.21.0 failed because PyPI DNS/network access
is unavailable. The test now includes the importer's stderr in its failure
message. This is a dependency failure, not evidence of an importer regression.

Reproduce the socket-free checks and benchmark with an existing Flutter SDK:

```sh
bash serverpod_lens/tool/run_connection_hardening.sh /path/to/flutter
```

The runner is Linux-only and writes temporary compilation artifacts under `/tmp`.
The same correctness checks are registered in the regular Flutter test suite.
In this restricted environment, the suites run using Flutter's
`test --no-pub --experimental-faster-testing` runner. Serverpod/Dart MCP tools
are unavailable, so this pass does not establish hot-restart or live-driver
verification of the updated application.

Git staging was initially blocked by the read-only `.git` mount. Session
permissions were restored before publication; repository history records the
final published revision. The standard release build encountered a read-only
Dart telemetry file outside the workspace; full release packaging remains to
verify in an unrestricted environment.

Optimized JavaScript compilation of Flutter's generated web entry point passes
when the Dart compiler is invoked directly with global analytics suppression.
This compiles the updated application; it does not replace Flutter's full asset
packaging or a live release-browser check.

## Package and SQL import checks — 2026-10-09

The package extraction passes `dart analyze` with no issues. Automated suites
pass: 5 shared-reader tests, 6 package tests, 27 demo regressions and 1 Serverpod
bridge test. The generated Serverpod graph round-trips through the plain model
and back. Three Node tests exercise the real PostgreSQL parser, and the offline
SQLGlot importer regression passes separately.

The package tests cover real PostgreSQL 17 AST mapping, composite primary and
foreign keys, implicit referenced PK columns, enums, arrays, partial uniqueness,
ALTER nullability/default changes, unresolved references and unsupported nested
schema declarations. YAML tests cover inferred IDs, parent-class resolution,
non-persisted fields, indexes and invalid-file diagnostics. The host widget test
supplies and replaces a graph without import controls or bundled demo data.

Chromium loaded the bundled worker and WASM from the release assets, parsed a
two-table relationship, and imported pasted SQL into the actual Flutter screen.
The SQL dialog was checked at 320×568. Parse errors, partial-result review and
file imports are checked in the browser pass described below. The local Python
server and Cloudflare tunnel both returned HTTP 200.

Serverpod MCP restarted the backend and relaunched the companion Flutter app.
The restarted app serves `lib/driver.dart`; prior compile errors in its log came
from the intermediate package move. The release compiles successfully. Live Dart
MCP driver verification remains incomplete; release-browser and mounted-widget
checks are the evidence for this pass.

The JavaScript release succeeds. Its WASM dry run still reports transitive
`dart:html` dependencies, and its icon scan reports unused Cupertino and Fluent
Light font families. This is distinct from the working PostgreSQL WASM worker.

These checks cover the standalone schema viewer. They do not establish that it
is ready to ship inside Serverpod or that every database schema is represented
without loss.

## Automated checks

| Check | Result | What it exercises |
| --- | --- | --- |
| Repository `dart analyze` | Pass, no issues | All workspace packages |
| Repository formatting check | Pass, no changes | 296 Dart files |
| Shared schema reader | 5 tests pass | Serverpod types, module/schema identity, relations and constraints |
| Server bridge | 1 test passes | Shared extraction through the generated server contract |
| Flutter suite | 20 tests pass | Extraction, ZIP selection, catalog queries, native diagram mapping and interaction |
| SQL importer | 1 test passes | SQL relationships, actions and supported declaration mapping |
| JavaScript release web build | Pass | Deployable Flutter web output |

The full imported graph is checked against its native document: 396 table nodes,
5,133 column rows and 505 resolved relationships. Bound ports match the native
row centres; unused ports are absent. Composite relationships retain their
labels and bindings.

Regression checks exercise all five native layouts without changing schema
content. Mounted canvas checks exercise node selection and dragging, connection
flow, speed changes, animation off, every connector style and rejected deletion.
Additional admission checks reject creation, resizing, port changes and endpoint
rewiring. Effect configuration checks cover all six animation choices at the
minimum, default and maximum supported speed.

ZIP checks cover complete versus project definitions, migration ordering,
malformed newest snapshots, valid empty snapshots, multiple server packages and
unrelated binary files. Unrelated archive entries are skipped before text
decoding. Parsing still runs on the UI thread; this is not an archive stress test.

The responsive widget test checks 320×568, 390×844, 844×390 and 1440×1000.
The phone browser overlays the canvas, closes cleanly and retains search state.
Desktop collapse returns the sidebar width to the canvas. A long-schema-name
dropdown overflow found during this pass was fixed.

## Browser and runtime checks

The release was served with Python on port 8090. Chromium checks at desktop and
320px/390px phone widths passed in light and dark modes, with no page exceptions.
They cover browser collapse/expansion, the phone drawer and the settings dialog,
including the default orthogonal connection style. The Cloudflare release also
passed schema selection and real file-picker uploads: a valid project ZIP loads,
a malformed newest definition reports an error, and a valid empty definition
shows no tables. No page exceptions were recorded. Screenshots were inspected
for clipping, neutral colors and canvas space. These are browser viewport checks,
not physical-device testing.

Serverpod MCP hot restart completed. Server logs show the backend initialized
and migrations already applied. Dart MCP connected to the development app's
DTD and returned no runtime errors on its initial check. Subsequent live widget
inspection and Flutter Driver commands timed out, accompanied by DWDS service
extension/hot-reload timeouts. Live driver verification is therefore incomplete;
the mounted interaction tests and release browser checks passed independently.

The release build reports transitive WebAssembly incompatibilities and a missing
Fluent Light font family. JavaScript output succeeds. WebAssembly support and
unused transitive icon declarations were not changed in this pass.

## Still to verify or implement

- Upstream installation inside Serverpod development tools. The separate host
  now delivers its current target through an authenticated endpoint; manual
  refresh and graph replacement are tested.
- Compatibility beyond the tested Serverpod 4.0.4 schema contract.
- Physical iOS/Android devices, Safari/Firefox and screen-reader navigation.
- Large-schema frame time, memory, heavy layouts and large ZIP responsiveness.
- Persistent preferences across app restarts.
- Complete compiler semantics for YAML-only projects and procedural SQL/ALTER.
- Project licensing and the hosted extensions' distribution terms.

The README describes the shipped viewer and these boundaries. Passing this suite
means the covered behavior works; it is not a claim that every possible case has
been tested.
