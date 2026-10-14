# Verification — 2026-10-14

This report covers the local monorepo. No Cloud deployment or package publication
was performed. The public demo still runs an earlier release.

## Automated checks

`tool/verify.sh` passes fatal-info analysis, formatting and all suites.

| Suite | Passed |
| --- | ---: |
| Plain Dart schema reader | 5 |
| Shared Serverpod extraction adapter | 5 |
| Local launcher and HTTP safety | 7 |
| Large-example backend, including embedded PostgreSQL | 21 |
| Shop generated-target integration | 1 |
| Reusable Flutter viewer | 104 |
| Optional connected Flutter demo | 15 |
| **Total** | **158** |

The shared local Flutter viewer builds successfully for release web. Both actual
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
Unchanged generated targets reuse extracted definitions; manual refresh still
checks authored source changes. There is no background schema polling.

Launcher tests cover initial snapshot reuse, explicit refresh, source and generated
target cache invalidation, revision-based payload omission, cross-origin/Host
rejection, unsupported writes and static-file path/link containment. Source indexing
accepts `.spy.yaml`, `.spy.yml` and `.spy`, prunes generated folders and rejects
ambiguous ownership. Serverpod generation remains responsible for model validity.

## Viewer acceptance

Local Chromium checks passed against both examples: no login, table selection,
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

The dependency audit queried 268 locked public packages and returned no OSV
advisories. This excludes private SDK dependencies and does not prove absence of
all vulnerabilities. Optional Cloud authentication retains its existing built-in
Serverpod/project-scope tests. Local Lens is intentionally loopback only.

Vyuh 3.5.1 still exposes its generic connection hover decoration; admission rules
prevent connection editing. Cloud packaging was updated but has not been deployed
or production verified. Physical devices, other browser engines and screen readers
remain outside this pass. Standalone CLI distribution and upstream `serverpod lens`
integration remain future work; the supported command today is `serverpod run lens`.
