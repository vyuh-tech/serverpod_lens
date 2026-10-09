# Project audit — 2026-10-09

The architecture matches the intended read-only Serverpod schema feature. One
shared reader interprets resolved definitions; generated contracts carry the
graph; a small adapter maps it to native Vyuh shapes; the Flutter screen provides
search and schema filtering. It remains a standalone prototype until Serverpod's
host-development tooling supplies the project's schema directly.

The audit reviewed the repository, the changes after `b1355ae`, the actual
flutter_elog SQL and native Vyuh implementation. Standards and requirements
reviews were performed separately, followed by targeted fixes and regression checks.

## Standards review

| Finding | Resolution |
| --- | --- |
| Server and Flutter duplicated definition interpretation | Shared pure Dart package with generated-protocol bridges |
| Cross-schema table names and FK targets could collide | Schema-qualified identities, including `referenceTableSchema` |
| Corrupt newest migrations silently fell back to older data | Invalid newest snapshots reject with their path; valid empty schemas remain empty |
| Individual components of composite primary keys looked unique | Cardinality requires an actual individual or full constraint |
| Partial unique indexes implied global uniqueness | Predicate retained; excluded from global uniqueness inference |
| Old dump command overwrote the SQL dataset | Separate output under `docs/serverpod-schema.json` |
| Published transitive package broke Dart test startup | Pin official `base_menu` 0.2.0, which removes absent workspace paths |
| Unused greeting and sign-in scaffolding obscured purpose | Removed source paths; Serverpod regenerated client/server/test helpers |

The parsing/mapping/UI boundaries are now explicit. The final browser check found connector paint escaping into the sidebar; the
screen now clips the native canvas to its viewport.

No handwritten generated
code, custom minimap, custom graph layout, table renderer or animation engine is
needed. Authentication initialization remains in the Serverpod backend.

## Requirements review

| Requirement | Result |
| --- | --- |
| Read-only canvas | Native interaction surface with schema changes blocked; cells remain read-only |
| Remove palette, bottom editing toolbar and property panel | Editor dependency and configuration removed |
| Real database schemas and All filtering | Ten SQL schema groups; table list and canvas filter by schema |
| No sample/dogfood labels | Removed from the UI and dataset source |
| Native minimap and automatic layout | Hosted Vyuh extensions retained |
| Neater view settings | Grid and minimap grouped in a scrollable view dialog |
| Shared reader and focused regressions | Shared reader, ZIP selection, types, identity, relations and native viewer tests |
| Documentation consistent with code | README, architecture, source notes and roadmap rewritten |

The native effects API requires the interactive canvas. A later interaction
update enables native node dragging and connection flow on selection, with
admission rules rejecting content changes. Editor chrome remains absent.

The SQL importer now preserves declared types/defaults, PKs, unique constraints,
indexes, referential actions and basic ADD COLUMN statements. The current source
snapshot contains 396 tables, 5,133 columns and 536 foreign-key declarations.
31 targets are absent, so 505 relationships render. The import report lists
unsupported SQL and every unresolved target; this is not a lossless live catalog.

## Remaining work and practical limits

- Direct host-project schema delivery, development authorization and automatic
  refresh are not implemented. No claim of completed Serverpod-core integration.
- Migration parsing is tested against Serverpod 4.0.4. Cross-version compatibility
  needs an explicit supported-version matrix.
- YAML-only inference omits compiler-resolved details and warns. It should not be
  treated as an authoritative database definition.
- SQL procedural/ALTER transformations remain partial; source files do not prove
  what is installed in a running database.
- Composite foreign keys attach at the first column pair and label all pairs.
  Missing referenced tables do not get fabricated nodes.
- ZIP parsing runs synchronously and assumes one server package. Multiple server
  archives reject. Large archive limits, memory and responsiveness need measurement.
- Large-schema frame time, keyboard accessibility and persistent view preferences
  still need dedicated verification beyond the current functional checks.
- A project license and hosted-package redistribution terms must be settled before
  presenting this as an adoptable distributed Serverpod component.

The initial layered layout of all 396 tables stalled the debug browser startup
check. The viewer now opens with Vyuh's native grid layout; layered, tree, force
and circular layouts remain explicit choices. Detailed startup/frame-time
benchmarks remain open.

## Verification

The automated suite checks shared schema parsing, both generated-protocol bridges,
latest/empty/invalid migration selection, same-named tables in different schemas,
partial uniqueness, composite cardinality, source filtering, SQL FK actions,
native layout/codecs and the read-only canvas. Node dragging changes positions only; selection plays native connection effects,
and Delete is rejected.

Analysis and formatting pass. Eleven Flutter tests, five shared-reader tests,
one backend bridge test and one Python importer test pass. The development app and release web build are checked in a browser;
the release is served by Python and the existing Cloudflare quick tunnel. Runtime
checks use Serverpod MCP for restarts and logs.
