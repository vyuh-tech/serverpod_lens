# Serverpod Lens submission draft

Status: prepared copy, not a submitted entry. Hosted demo:
https://serverpod-lens.serverpod.space/. The navigation release is verified locally
and awaits deployment authorization. A public video URL, submitted commit and
judge access details still need to accompany the final submission.

## Project description

Serverpod Lens turns a Serverpod project's database schema into an interactive
map. Developers can find tables and columns, follow incoming and outgoing foreign
keys, and narrow a large schema to the relationships relevant to their task.

The Flutter host uses Serverpod 4's built-in email authentication and JWT sessions.
A project-specific scope protects a read-only endpoint that returns the host's
resolved current target, including framework and authentication modules. A schema
revision lets unchanged refreshes preserve the existing map without downloading
and rebuilding it. Network failures keep a clearly labelled last-loaded snapshot;
access denial and sign-out remove protected content.

The viewer is a reusable Flutter package. A shared pure Dart reader maps schema
metadata into a graph, while Vyuh Diagram supplies native tables, column ports,
connectors, layout, minimap and gestures. Lens contributes schema interpretation,
qualified identities, explicit relationship navigation, table inspection,
import diagnostics and the host integration. The separate offline demo accepts
Serverpod migration/project files and PostgreSQL SQL without requiring a backend.
SQL parsing runs locally in a browser worker and never executes the input.

The collapsible Schemas browser shows the project's actual schemas and their tables.
All schemas opens the complete graph; selecting a schema shows its tables. Selecting
a node highlights immediate connections while unrelated nodes fade. The inspector
separates Details, Fields, Relationships, Indexes and authored Source. Manual positions
persist per account, refresh stays manual, and Settings includes System/Light/Dark.

Settings let developers show relationship labels when useful and configure
snapping, layout, connection style and animation. Phones use a drawer to preserve
canvas space. Focus updates are batched, and unchanged schema refreshes retain the
current view. Tests cover malformed inputs, authorization failures, stale requests,
network recovery, repeated module tables and small layouts with enlarged text.

This is a read-only view of generated schema metadata. It does not edit models,
query user records, detect database drift, or install itself into Serverpod's
upstream development tools. Migration comparison remains future work. A changed
schema snapshot preserves valid search, selection, positions and camera
context, pruning removed models.

## AI assistance disclosure

OpenAI Codex assisted with implementation, debugging, test creation and execution,
performance investigation, documentation and submission preparation. The app does
not itself provide an AI feature. Review this disclosure against the entrant's
complete development history and add any other AI tools actually used.

## Original work and dependencies

Lens uses Flutter, Serverpod and Vyuh Diagram rather than claiming their rendering
or backend infrastructure as original work. The offline SQL snapshot and the 122
recreated backend models are fixtures derived from an existing source project;
they are not newly authored product features. The PostgreSQL parser includes its
third-party notices. The entrant must confirm rights to the fixture data and
commercial extensions, original-project timing and ownership, and eligibility.
No project license has yet been declared.

## Demo script — target 110 seconds

Record the actual connected app, in English or with English captions. Use only
non-sensitive schema metadata and the read-only demonstration account. Keep
credentials and verification codes out of the recording.

| Time | Show | Narration |
| --- | --- | --- |
| 0–12s | Connected schema overview | “Serverpod projects can grow into hundreds of related tables. Lens helps developers understand those relationships without opening every model file.” |
| 12–28s | Sign in and browse schemas | “This Flutter app signs in through Serverpod. The backend checks project access and returns its resolved schema, including framework and auth modules.” |
| 28–53s | Search, select a table, follow relationships | “Search a table or column, focus its incoming and outgoing links, and inspect its immediate connections to answer which tables depend on it.” |
| 53–70s | Right inspector and field detail | “Inspect fields, relationships, indexes and YAML in the side panel. Every column is shown; choose a table to emphasize its immediate connections.” |
| 70–87s | Refresh while focused | “Refresh checks the generated target. When the schema is unchanged, Lens keeps the current map and avoids rebuilding it.” |
| 87–100s | Ungranted account/access screen | “Authentication alone does not expose the schema. A separate account without the project scope is denied access.” |
| 100–110s | Return to overview | “Lens reads Serverpod's generated schema through reusable packages; local use needs no login. The goal is to make schema exploration a useful part of Serverpod development tooling.” |

The supplied Official Rules require a publicly visible YouTube/Vimeo video under
two minutes. The participant overview allows three minutes; staying under two
satisfies both captured descriptions. On 13 October 2026, all previous local Lens
recordings and their editing assets were deleted at the entrant's request.
A replacement recording and public YouTube/Vimeo upload are pending.

## Final submission fields

- Title: Serverpod Lens
- Repository: https://github.com/vyuh-tech/serverpod_lens
- Deployed source revision: `ef75cb9` (pushed to main)
- Judge-accessible URL: https://serverpod-lens.serverpod.space/
- Judge account instructions: sign in as `test`; deliver the password separately; see DEPLOYMENT.md
- Public YouTube/Vimeo URL: replacement recording and public upload pending
- Description/AI disclosure: review the copy above
- Rules PDF deadline: 14 October 2026, 23:59 CEST / 15 October, 03:29 IST; check the event dashboard for amendments
- After submitting: verify receipt/status and preserve the exact submitted materials

Use [Project description](PROJECT_DESCRIPTION.md) for the submission copy and
[Submission requirements](SUBMISSION_REQUIREMENTS.md) for the verified rules.
Complete the final dashboard submission and confirm its receipt.

The current architecture is local first: use `serverpod run lens` from either
example server folder. Cloud and its authentication are optional demo delivery.
The public demo still runs the earlier release; do not claim this restructure is
already deployed. A literal `serverpod lens` command remains upstream work.
