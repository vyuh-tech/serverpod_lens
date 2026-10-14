# Verification — 2026-10-14

This report covers the local release. No deployment was performed; the public demo
still runs the earlier release.

## Automated checks

`tool/verify.sh` checks fatal-info analysis, formatting and all package suites.

| Suite | Passed |
| --- | ---: |
| Shared schema reader | 5 |
| Serverpod backend with embedded PostgreSQL | 21 |
| Reusable viewer | 53 |
| Connected Flutter host | 14 |
| Offline demo | 34 |
| **Total** | **127** |

The connected JavaScript web release builds successfully. Backend tests need no
Docker. Generated files were produced by Serverpod from the authored DTO models;
no database migration is required for the optional transport metadata.

## Navigation acceptance

- Schema → table tree, independent expand/collapse and browser hide/show.
- Tree selection opens one table; References explicitly reveals neighbors, all
  references, incoming/outgoing direction or two hops. Returning to table-only
  removes the expanded area.
- All schemas explicitly opens the complete graph. Canvas selection opens details
  while retaining the map and zoom. Back restores the prior area and camera.
- Settings is visible. Detail level, References, Fit and Inspector are together.
- Inspector tab continuity across tables; tablet/phone sheets preserve browser
  access. Responsive checks cover small screens, landscape, RTL and larger text.
- Search, selection and positions survive valid graph updates and account-scoped
  persistence; removed models and corrupt saved views are handled explicitly.
- Schema updates occur only on initial load and manual Refresh. Idle controller
  tests confirm no background schema requests. Auth token refresh stays enabled.

## Serverpod contract

Tests use every column type and foreign-key action in the installed Serverpod
4.0.4 SDK. They cover qualified schemas, modules, vector dimensions, composite
keys, partial uniqueness, self-relations and future metadata retention.

Complete resolved table definitions survive generated transport and plain-model
round trips. Advanced index/constraint attributes remain inspectable. Contract
versioning invalidates snapshots when the reader changes. The sample models are
fixtures; a real host supplies its own generated target.

The resolved database target is authoritative. YAML-only inference remains partial;
non-persisted fields are visible in authored source, not invented as database
columns. This is coverage of the tested database contract, not a claim of universal
compatibility with all future Serverpod versions.

## Authentication and security

Actual local HTTP passes registration/verification, login, wrong-password rejection,
password reset, old-password rejection, JWT refresh, sign-out and refresh revocation.
Anonymous schema access returns 401. New accounts receive no project read scope and
schema access returns 403. The temporary audit account was removed.

The designated demo signs in with only the project read scope. Delivery returns
156 target tables and 122 authored source mappings; unchanged revisions omit graph
and source bodies. Endpoint tests reject other project IDs and filesystem paths.

Four import regressions cover input/expansion limits, ZIP traversal and forged
expansion headers. The dependency audit queried 239 public Pub and 29 npm packages;
no OSV advisories were returned. See [Security review](SECURITY_REVIEW.md) for
fixes, exclusions and remaining verification limits.

## Local browser check

Release Chromium checks pass demo sign-in, absence of schema polling, one manual
refresh, independent schema expansion/collapse and the visible single-table view.
No uncaught browser errors were recorded in this core flow. The screenshot in the
README was inspected against the final local release.

Extended popup automation was inconclusive under Flutter's accessibility overlay.
References, Settings, Source and mobile interactions have passing mounted-widget
regressions; the complete live browser journey is still a separate verification
item. This report does not claim that inconclusive browser automation passed.

## Remaining verification

Cloud email delivery and production checks for this release await deployment
approval. Physical devices, Safari/Firefox, screen readers and browser profiling
of very large full maps remain outside this pass. Upstream Serverpod development-tool
installation and package publication remain future work.
