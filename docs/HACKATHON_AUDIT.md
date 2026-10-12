# Serverpod Lens hackathon readiness audit

Checked 12 October 2026 against the supplied Official Rules, the captured
participant overview, the current working tree and the latest verification
results. The connected app now uses real Serverpod authentication and a protected
schema endpoint. Local API and automated checks pass. Submission is still pending
working judge access, the public video and final
BuilderBase submission. See the dated follow-up below; historical findings remain
for traceability.

The user confirms registration and a one-person team, and confirms there is no
current demo or walkthrough video. Registration and team size are therefore
recorded as confirmed by the entrant, not independently checked in BuilderBase.

## Connected-host follow-up — 12 October 2026

The principal product gap is now implemented: `serverpod_lens_host_flutter`
uses built-in email/JWT auth, a project-specific read scope and `schema.snapshot`.
It receives 156 unique resolved target tables from the real host. The browser
check uncovered repeated auth-module tables in Serverpod's generated target list;
the adapter now deduplicates identical definitions and rejects conflicts. Both
the minimal reproduction and actual endpoint regression failed before the fix
and pass afterward. The offline demo remains separate and unchanged.

- Backend: **12 passing tests**, including unauthenticated denial, wrong-project
  scope, arbitrary project/path rejection, revision refresh and duplicate targets.
- Connected Flutter host: **11 passing tests**, including overlapping requests,
  late responses after disposal, 401/403 graph removal, malformed snapshots,
  network recovery and 320px layouts with doubled text.
- Actual local HTTP: separate reader and denied accounts sign in through the
  built-in email endpoint. Unauthenticated schema access is 401, denied account
  access is 403, authorized access succeeds, and unchanged refresh omits the graph.
- Release JavaScript web bundle builds successfully. Cloud packaging dry run
  includes the frontend and pure Dart schema dependency, excludes local passwords,
  and requires no private Vyuh registry access for the backend Cloud build.
- Cloud account login succeeded, but project creation was rejected with
  `A payment method is required to procure Starter.` No Cloud project or public
  URL was created. Account setup is required before deploy and remote verification.
  Cloud is optional under the rules; another host or functioning test build can
  provide judge access without procuring a Cloud plan.
- [Submission copy and demo script](SUBMISSION.md) and
  [deployment/judge instructions](DEPLOYMENT.md) are prepared. A captioned local release walkthrough is also recorded; its
  public YouTube/Vimeo upload and the actual submission remain.

An unchanged refresh retains the current graph and exploration state. A changed
schema replaces the map and resets exploration context. This reads the generated
current target; it does not introspect the database or detect drift. Upstream
Serverpod-tool installation and migration comparison remain future work.

The tables and assessment below describe the initial audit where they differ
from this follow-up. Current verification detail is in [VERIFICATION.md](VERIFICATION.md).

## Governing requirements and deadline

The supplied [Official Rules](</home/shiva396/Documents/temp/serverpod hackathon rules.pdf>)
are the primary source for this audit. Section and page references below refer
to that 12-page PDF. [Requirements research](HACKATHON_RESEARCH.md) contains the
full schedule, eligibility conditions, prizes, source comparisons and unresolved
questions. The current live version or subsequent amendments could not be
retrieved; confirm the linked rules in BuilderBase before final submission.

The submission deadline is **14 October 2026 at 23:59 CEST**, equivalent to
**15 October at 03:29 IST**, with no extensions in the supplied rules. Keep the
judge-accessible project available through **20 October at 17:00 CEST**, or
**20:30 IST**. Submitted materials cannot ordinarily change after the deadline;
continued development in the entrant's repository is permitted. Pin the
submitted commit and tested build so later development does not silently replace
the version judges are evaluating. [Rules §§1, 4 Testing, 5, pp.1, 4–5]

The overview says a video of up to three minutes, while the PDF requests less
than two minutes and says judges need not watch beyond two minutes. Section 11
says the Official Rules prevail over other event materials. Prepare a video
under two minutes: it satisfies both captured descriptions. Video and description
are mandatory; the video must be publicly visible on YouTube or Vimeo and show
the actual app on its intended platform. [Rules §§4, 11, pp.4, 10]

The PDF says there are no tracks and check-ins are optional. Migration comparison,
AI product features, payments, persistent workspaces, App Studio usage and
Serverpod Cloud hosting are not stated as mandatory project features. The working
full-stack Serverpod application and complete submission are the requirements.
[Rules §§1, 4, pp.1, 3–4]

## Required submission checklist

Status meanings: **confirmed** has current evidence, **partial** has only some
required evidence, **pending** is missing, and **entrant confirmation** concerns
facts the repository cannot establish.

| Requirement | Status | Current evidence and remaining action |
| --- | --- | --- |
| Registration and required registration questions | Confirmed by entrant | The user reports registration. Verify the dashboard accepts the registration and questions before final submission. |
| Team and representative | Confirmed size; representative to check | The user is solo, within the four-member limit. Ensure the registered entrant/representative matches the party owning the original project. |
| Full-stack application with Serverpod as backend | Pending | The demo loads a bundled asset or local imports; the server registers authentication endpoints only. Add a genuine Serverpod host flow that supplies the graph to the viewer. |
| Consistent installation and operation on declared platform | Partial | Tests and optimized JavaScript compilation pass. Full current release packaging, deployed access and current live end-to-end operation remain unverified. Declare web as the primary demonstration platform unless another platform is actually verified. |
| Newly created during the submission period | Supporting history; entrant confirmation | The local Git history starts on 9 October, inside the period beginning 15 September at 17:30 CEST. Commit dates alone do not establish creation history or originality. Confirm the original Lens project was created in that window and distinguish pre-existing libraries and fixtures. |
| Ownership and permitted SDK/API/data use | Entrant confirmation | Vyuh extensions require publisher registry access; the sample schema comes from flutter_elog. Record rights and attribution for the extensions, parser, fixture schema and original code. No root project license is declared. The rules allow compliant open-source reuse; they do not require all dependencies to be newly invented. |
| Repository URL with complete code, assets and instructions | Partial | Git remote is `https://github.com/vyuh-tech/serverpod_lens.git`, but external judge access is unverified. The initial audit found the latest changes uncommitted/unpushed; session permissions have since been restored for publication. Confirm the final tested revision is available remotely. If private, satisfy the named reviewer-access requirement in §4. |
| Build and run instructions | Partial | README contains SDK, registry, run, build and check commands. Verify a clean installation and explain the final host backend flow, environment configuration and judge access. A working checkout with cached private packages is not proof that judges can rebuild. |
| Project description and implementation explanation | Pending submission copy | README supplies useful material, but no final BuilderBase description is verified. State the user/problem, shipped features, architecture, limitations and original contribution. |
| AI usage disclosure in the description | Pending | AI assistance was used in this session. Include the actual tools and how they contributed; do not imply the app itself contains an AI feature. Check applicable tool/component licenses. |
| Demonstration video | Pending | User confirms none exists. Record the actual full-stack flow in under two minutes, in English or with an English translation, and upload publicly to YouTube/Vimeo. Avoid unlicensed music or other third-party material. |
| Working project access for judging | Pending | User confirms no current demo. Supply a website, functioning demo or test build; include appropriate test credentials if access is private. Keep access free and available through the end of judging. A public web deployment is useful but is not the only format allowed by the PDF. |
| English materials or translations | Partial | Repository documentation is English. Ensure description, video, testing instructions and remaining submission fields meet the same requirement. |
| Personal and organizational eligibility | Entrant confirmation | Confirm age of majority, permitted residence, absence of organizer/judge/affiliate conflicts and absence of prohibited sponsor/administrator financial or preferential support. Registration alone does not establish these conditions. |
| Final submitted state before deadline | Pending | Complete every required BuilderBase field, use the actual submit action and verify receipt/status. A saved draft is not evidence that the entry was received. Preserve the submitted description, video link, code revision and build. |

Requirements in this table come from Rules §§3–5 and 9, pp.2–5 and 8–9.
A public repository or an open-source license is not an event mandate; a private
repository can qualify with the required review access. Original ownership and
permitted dependency/data use are the checks that matter.

Private repository reviewer addresses and detailed eligibility exclusions are
listed in [the research note](HACKATHON_RESEARCH.md). These are audit items;
repository access, account changes and organizer communications have not been
authorized as part of this review.

## Audit against the judging rubric

| Criterion | Weight | Strength of current evidence | What is still needed |
| --- | --- | --- | --- |
| Does it work | 30% | 62 automated checks pass across schema reading, import mapping, canvas interactions, settings and parser tests. The local viewer flow is substantial. | Real backend-to-viewer verification, current judge-accessible build and the tagged-migration correctness fix below. |
| Use of the Serverpod stack | 25% | Migration interpretation and a generated-protocol bridge demonstrate knowledge of Serverpod schema semantics. Authentication infrastructure exists. | Actual application endpoints and client consumption. Backend packages and fixtures alone do not demonstrate Serverpod doing the project's work. |
| Craft and technical creativity | 25% | Reusable package boundaries, schema-qualified identities, native column ports, read-only admission, contextual exploration, import diagnostics and hardened settings are credible original integration work. | Show what Lens contributes beyond Vyuh rendering. Verify the final release, document limitations and avoid claiming unimplemented tools integration or migration comparison. |
| Usefulness | 20% | A concrete developer problem: navigating tables, columns and foreign-key dependencies in a large Serverpod schema. | Demonstrate one task a developer can complete faster, using their actual Serverpod project; state the result clearly in the description/video. |

The rubric is specified in Rules §6, pp.5–6 and corroborated by the
[organizer event](https://luma.com/builde-mked). No numerical prediction of judges'
scores is justified by repository tests alone.

## Confirmed product gaps

### The backend is outside the current user flow

[SchemaMapScreen](../serverpod_lens_flutter/lib/screens/schema_map_screen.dart)
loads `assets/schema_graph.json` through `rootBundle.loadString` and accepts
local files and pasted SQL. It passes a graph into the reusable viewer; it does
not fetch one from a Serverpod client. The
[server endpoint dispatch](../serverpod_lens_server/lib/src/generated/endpoints.dart)
registers `emailIdp` and `jwtRefresh`, with no schema application endpoint.
[README](../README.md) explicitly describes the backend as an integration fixture
and says schema delivery is not wired to an endpoint.

This is the largest submission gap. Build a small Serverpod host demonstration
that authenticates and authorizes access to its schema, returns a genuine resolved
schema snapshot, and passes it into `SchemaViewer`. Preserve the package and
offline-demo boundaries in [AGENTS.md](../AGENTS.md); do not turn the reusable
viewer into a generated-client-dependent component. A new SaaS product or
workspace system is unnecessary for this slice.

The repository's own instructions require built-in authentication and multiple
users. Those are project constraints, not separately invented hackathon rules.
Verify that unauthorized users cannot fetch a protected schema and that requests
cannot choose arbitrary filesystem paths. The current Serverpod test checks
schema conversion; it does not test a working schema API or access isolation.

### Tagged migrations could produce a silently stale import — fixed

[ProjectAnalyzer](../serverpod_lens/lib/src/schema/project_analyzer.dart) previously matched
only `migrations/\d+/definition.json` and `definition_project.json`. Serverpod
documents supported tagged names such as `<timestamp>-v1-0-0`.
[Serverpod migration documentation](https://docs.serverpod.dev/concepts/data-and-the-database/database/migrations)

A synthetic ZIP probe against the pre-fix code reproduced both failures:

| Archive contents | Actual result |
| --- | --- |
| Only `20261009120000000-v1-0-0/definition.json` defining `new_schema` | Invalid; no schema found |
| Older `20261008120000000/definition.json` defining `old_schema`, plus the newer tagged definition | Valid; renders `public.old_schema` with no warning |

The follow-up fix accepts supported migration tags. Three new regression tests
cover newer tagged complete/project-only definitions and an invalid newest tagged
definition; all failed before the fix and pass afterward. The full demo suite now
passes 30 tests. Tagged-only and tagged multiple-server-root cases have not yet
been added to the automated suite.

### Graph replacement does not preserve exploration context

The viewer accepts a replacement graph, but
[SchemaViewer](../serverpod_lens/lib/src/screens/schema_viewer.dart) builds a new
controller and resets the query, schema filter, groups, selection context and
previous camera. Existing view preferences survive. A connected flow must not
claim seamless live refresh before it reconciles this state. A clearly labelled
manual refresh is a smaller initial demonstration than automatic polling that
continually resets a user's map.

### Release and judge access are not complete

The current production configuration still contains `examplepod.com` placeholder
hosts. That does not prove no external deployment exists, but no current deployment
was provided by the entrant. Optimized JavaScript compilation passes; the full
Flutter build is blocked in this environment by SDK telemetry writes outside the
workspace. Live Serverpod/Dart MCP driver verification of the current changes is
also unavailable. Historical browser checks from 9 October are useful but do
not establish that the current submission build is verified.

Verify the packaged app, SQL worker/WASM assets, host API/auth configuration,
reload behavior and judge account access at the actual URL or test build. Test
both narrow and desktop layouts there. Freeze that build for judging.

### Dependency access and attribution need a submission check

[README](../README.md) records commercial Vyuh registry access and the absence
of a root project license. Parser notices are present, but the entrant must
confirm extension and dataset rights. Source availability and commercial-package
rebuild access are different concerns: provide usable judge instructions, not
private registry secrets. The bundled fixture was checked: 396 tables, 5,133
columns, 536 foreign keys, 505 resolved edges and 31 unresolved targets across
10 schemas. It is a source snapshot, not a live database.

### Remaining quality work should follow measured risk

ZIP/schema decoding is synchronous and has no explicit compressed-size,
expanded-size or entry-count limits. Matching large archive entries can therefore
block or exhaust the client. SQL parsing is already isolated in a worker, limited
to two million characters and terminated after its timeout. Prioritize archive
limits and responsiveness if arbitrary project uploads are part of the judging
flow; do not claim every imported schema size is supported.

The new label-restoration benchmark is strong, but it measures synthetic native
engine updates, not browser frame time, startup, memory or every expensive layout.
Physical-device, screen-reader and broader browser verification remain incomplete.
The web HTML/manifest still contains scaffold descriptions and naming. These are
presentation improvements, not substitutes for the mandatory backend and demo.

## Verification evidence and its limits

| Evidence | Result | Scope |
| --- | --- | --- |
| Shared schema reader | 5 passed | Schema interpretation |
| Viewer package | 24 passed | Imports, host graph replacement, 11 connection checks and 7 settings checks |
| Demo regression suite | 27 passed | Native canvas, read-only rules, layouts, responsive browsing and contextual exploration |
| Serverpod bridge | 1 passed | Schema conversion, not authenticated endpoint integration |
| Real PostgreSQL parser | 5 passed | AST fixture, quoted strings, malformed suffixes and 100 self-referencing tables |
| Analysis and changed-file formatting | Passed | Current workspace/source checks |
| Label restoration at 1,000 edges and 3,000 labels | 4,145 ms before; 66–75 ms afterward | Synthetic Linux engine; about 55–63 times faster, not a release-browser guarantee |
| Optimized JavaScript compilation | Passed | Updated application compiles |
| Full current release packaging and live driver | Blocked/unverified | Environment access, not a demonstrated product-code failure |
| Python offline importer regression | Blocked | Missing `sqlglot`; pinned dependency download fails under restricted network |
| Tagged-migration regression follow-up | Fixed; 3 new regressions pass | Full demo suite: 30 tests pass; see verification follow-up |

[VERIFICATION.md](VERIFICATION.md) records the commands, results and distinctions.

## Work order before submission

1. **Complete the Serverpod flow.** A host resolves its schema, applies built-in
   auth and project authorization, serves it through an endpoint, and a host UI
   displays it through the reusable viewer. Prove a refresh and a denial case.
2. **Tagged migration imports: fixed.** New regressions verify tagged selection
   and rejection of malformed newest definitions; additional boundary cases remain useful.
3. **Provide a working judge build.** Finish release packaging, run the deployed
   flow, supply judge instructions/credentials if needed and keep it available
   until judging ends.
4. **Record the video.** Aim for 100–115 seconds: establish the developer problem,
   show real Serverpod schema delivery, explore a relationship, demonstrate
   refresh, and explain the original contribution. Describe only shipped behaviour.
5. **Finish the English description.** Include features, architecture, actual AI
   assistance, original work versus dependencies, intended platform, build/run
   instructions and honest limitations.
6. **Resolve entrant and rights checks.** Confirm original creation within the
   window, ownership, dependency/data permissions and eligibility/conflicts.
7. **Publish the tested code.** Commit and push the changes, verify repository
   access and pin the submitted revision. Git staging was initially blocked by a read-only `.git` mount. Session
   permissions have since been restored for publication; confirm the remote
   revision rather than relying only on local test results.
8. **Submit and verify receipt.** Complete every required dashboard field before
   the cutoff and preserve the final submitted evidence. Check the current linked
   rules for amendments, especially the video wording.

Migration comparison, complete table-details panels, persistent/shared groups,
upstream Serverpod installation, database drift detection and schema editing are
not prerequisites stated in the supplied rules. Defer them unless they are the
chosen demonstrated core flow. Read-only viewing remains the project's boundary.

## Optional prize opportunities

The feedback prize is relevant to Lens: an actionable proposal or bug report
about Serverpod development-tool integration could fit its purpose. It still
requires the registered entrant, eligible project and feedback form described
in the rules; this audit is not a submitted feedback entry. A public progress or
demo post can pursue the social prize. The captured overview requests tagging
Serverpod. Neither bonus is required for the main submission. [Rules §§4, 6, 8,
pp.3, 6–8; captured participant overview]

## Final assessment

**The full-stack flow is implemented; submission completeness is now the main
risk.** Registration and solo team size are established. Public judge access,
the mandatory public video, final source revision and entrant-specific rights/
eligibility confirmations remain pending. The project description is drafted,
but it has not been submitted to BuilderBase. Eligibility and prize awards
remain decisions for the organizer, not conclusions that automated tests can
certify.
