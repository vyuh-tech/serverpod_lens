# Verification — 2026-10-14

This report covers the local release. No deployment was performed; the public demo
still runs the earlier release.

## Automated checks

`tool/verify.sh` checks fatal-info analysis, formatting and all package suites.

| Suite | Passed |
| --- | ---: |
| Shared schema reader | 5 |
| Serverpod backend with embedded PostgreSQL | 21 |
| Reusable viewer | 67 |
| Connected Flutter host | 14 |
| Offline demo | 34 |
| **Total** | **141** |

The connected JavaScript web release builds successfully. Backend tests need no
Docker. Generated files were produced by Serverpod from the authored DTO models;
no database migration is required for the optional transport metadata.

## Navigation acceptance

- Schema → table tree, independent expand/collapse and browser hide/show.
- All schemas contains the complete graph; schema selection contains all matching
  tables. Table selection preserves the scope and emphasizes immediate connections.
- Native fades dim unrelated nodes and edges; the solid relationship line stays
  visible beneath native marching dashes that flow from the
  selected node toward its neighbors. These effects do not mutate document opacity,
  schema metadata, positions, camera or undo history. Reduced motion keeps emphasis
  without continuous flow.
- Back/history, neighborhood/detail menus, Explore table, overflow actions and the
  status footer are removed. Clearing selection restores context and keeps the
  desktop inspector completely closed, with no placeholder. Edge collapse preserves
  the selection and inspector tab; both panels can be resized within limits.
- Every column appears in its native table card, with field-to-field key bindings.
- Native camera limits allow zooming below 25% down to the full-schema fit and cap
  zoom at natural node size (100%). The native label reports actual scale; Fit is
  the overview action, rather than a literal zero-scale camera.
- Fit uses the final measured viewport and the largest fit containing the current
  scope. The native minimap starts expanded and returns after toggling off/on.
- The inspector separates Details, Fields, Relationships, Indexes and Source;
  field search/type/key badges and a filename/path/open/code presentation are tested.
- System/Light/Dark is one persisted host-level theme, applied to both apps and
  authentication. Theme changes preserve the current diagram and selection.
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

Chromium checks against the local connected build pass sign-in, absence of schema
polling, one manual refresh, tree selection, removal of old controls, Fields,
Source/open-action availability and clearing selection without hiding the browser.
No uncaught browser errors were recorded in that flow.

Browser accessibility actions and keyboard navigation also exercise Settings,
Dark theme selection, minimap off/on, dialog dismissal and returning to Fields.
The dark-mode screenshot was inspected. Popup pointer automation is limited by
Flutter's accessibility overlay; the successful flow uses semantic activation and
keyboard selection. Mounted-widget tests separately verify the actual toggle
state, System/Light/Dark persistence and mobile inspector behavior.

## Remaining verification

Cloud email delivery and production checks for this release await deployment
approval. Physical devices, Safari/Firefox, screen readers and browser profiling
of very large full maps remain outside this pass. Upstream Serverpod development-tool
installation and package publication remain future work.
