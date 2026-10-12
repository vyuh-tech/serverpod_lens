# Serverpod Lens submission draft

Status: prepared copy, not a submitted entry. Public demo URL, public video URL,
submitted commit, judge credentials and entrant rights/eligibility confirmation
must be completed before the final BuilderBase submit action.

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
qualified identities, relationship navigation, filtering, contextual groups,
import diagnostics and the host integration. The separate offline demo accepts
Serverpod migration/project files and PostgreSQL SQL without requiring a backend.
SQL parsing runs locally in a browser worker and never executes the input.

Settings let developers show relationship labels when useful and configure
snapping, layout, connection style and animation. Phones use a drawer to preserve
canvas space. Focus updates are batched, and unchanged schema refreshes retain the
current view. Tests cover malformed inputs, authorization failures, stale requests,
network recovery, repeated module tables and small layouts with enlarged text.

This is a read-only view of generated schema metadata. It does not edit models,
query user records, detect database drift, or install itself into Serverpod's
upstream development tools. Migration comparison remains future work. A changed
schema snapshot currently resets search, selection, groups and camera context.

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
| 12–28s | Sign in and current-target status | “This Flutter app signs in through Serverpod. The backend checks project access and returns its resolved schema, including framework and auth modules.” |
| 28–53s | Search, select a table, follow relationships | “Search a table or column, focus its incoming and outgoing links, and expand the neighborhood to answer which tables depend on it.” |
| 53–70s | Settings: labels and snapping | “Keep the map quiet by default, then reveal relationship labels when needed. Snapping and guides are configurable from the same settings.” |
| 70–87s | Refresh while focused | “Refresh checks the generated target. When the schema is unchanged, Lens keeps the current map and avoids rebuilding it.” |
| 87–100s | Ungranted account/access screen | “Authentication alone does not expose the schema. A separate account without the project scope is denied access.” |
| 100–110s | Return to overview | “Lens combines Serverpod's schema and authorization with a reusable Flutter viewer. The goal is to make schema exploration a useful part of Serverpod development tooling.” |

The supplied Official Rules require a publicly visible YouTube/Vimeo video under
two minutes. The participant overview allows three minutes; staying under two
satisfies both captured descriptions. A captioned local release walkthrough has now been recorded and exported as
`serverpod-lens-demo.mp4` in the local submission artifacts directory. It still
needs review and a public YouTube/Vimeo upload; no public video URL exists yet.

## Final submission fields

- Title: Serverpod Lens
- Repository: https://github.com/vyuh-tech/serverpod_lens
- Tested commit: fill with the final pushed revision
- Deployed web URL: pending Cloud project setup and verification
- Judge account instructions: follow DEPLOYMENT.md; deliver credentials separately
- Public YouTube/Vimeo URL: local captioned recording prepared; public upload pending
- Description/AI disclosure: review the copy above
- Deadline: 14 October 2026, 23:59 CEST / 15 October, 03:29 IST
- After submitting: verify receipt/status and preserve the exact submitted materials

See HACKATHON_AUDIT.md and HACKATHON_RESEARCH.md for rule references and remaining
entrant-specific confirmations. Neither a saved draft nor a pushed repository
proves BuilderBase submission.
