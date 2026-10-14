# Serverpod Lens submission requirements

Researched 14 October 2026 for **Build Something Real: The Serverpod Hackathon**. This note distinguishes verified rules from writing recommendations.

## Evidence and dates

The controlling source available here is the user-supplied **Official Rules PDF supplied by the entrant**. It names Serverpod AB and BuilderBase Labs AB. I re-read that document rather than relying on the deleted earlier research notes. The [official event page](https://builderbase.com/event/build-something-real-the-serverpod-hackathon) currently yields only its title through the research tool; its participant page and the PDF's `builderbase.dev` address are inaccessible. **Current dashboard fields, character limits, and any later rule amendments remain unverified.** Section 11 says rules prevail over forms/advertising and permits amendments posted on the event website. (Official Rules, §11 p.10)

| Milestone | Rules' CEST time | Calculated IST time |
| --- | --- | --- |
| Submission closes, no extensions | **14 October 2026, 23:59** | **15 October 2026, 03:29** |
| Judging ends; required testing access ends | 20 October 2026, 17:00 | 20 October 2026, 20:30 |
| Winners announced | 22 October 2026, 18:00 | 22 October 2026, 21:30 |

The creation/submission window begins 15 September 2026, 17:30 CEST. These IST conversions add 3 hours 30 minutes; they are calculations. (Official Rules, §1 p.1)

Public descriptions conflict: the [Serverpod launch announcement](https://serverpod.dev/blog/serverpod-4) says five weeks and the [App Studio page](https://serverpod.dev/appstudio) says six weeks. Use the PDF's exact dates. Earlier research recorded a supplied participant overview mentioning a three-minute video, but that overview was not independently retrievable today. The PDF recommends **less than two minutes** and judges need not watch beyond two. A video below two minutes satisfies both reported limits. (Official Rules, §4 p.4; §11 p.10)

## Required submission content

The PDF requires the following content; it does not specify a description template or word count:

- A working full-stack application with **Serverpod as its backend**, newly created during the submission window, functioning as described and demonstrated.
- A **text description explaining features, functionality, and how it was built**. **Disclose AI coding assistants and agentic tooling in that description**; their use is permitted and encouraged.
- A source-repository URL containing source, assets, and functional build/run instructions. For an entrant-owned private repository, give the three organizer accounts identified in §4 access.
- Build/run instructions and working project access through a website, functional demo, or test build. Include login credentials for a private website. Keep organizer/judge access free and unrestricted through judging.
- A mandatory demonstration video showing the functioning app on its intended device, publicly visible on **YouTube or Vimeo**, linked in the form. Keep it below two minutes. Obtain permission for included third-party marks/music/material.
- English submission materials or English translations. Complete and submit all required dashboard fields during the window; a saved draft is insufficient.

The description and video are judges' primary material. They may judge without testing, although working access remains required. (Official Rules, §4 pp.3–5; §5 p.5)

The supplied rules do not mandate Serverpod Cloud, App Studio, AI product features, payments, or a particular authentication feature. The full-stack requirement still matters: a client-only viewer with unused backend fixtures does not clearly establish substantive Serverpod use. This is an assessment of the requirement, not an organizer eligibility decision. (Official Rules, §4 pp.3–5)

## Judging and description emphasis

| Exact criterion | Weight | Evidence the description should make concrete |
| --- | ---: | --- |
| Does it work | 30% | An actual completed core flow; distinguish implemented behavior from plans |
| Use of the Serverpod stack | 25% | What the backend actually reads, processes, or serves |
| Craft and technical creativity | 25% | A sound design choice and its benefit to the user |
| Usefulness | 20% | Who needs it, the difficulty they face, and what becomes easier |

Stage one screens viability and reasonable use of Serverpod. Human judges award scores; automated assistance checks completeness and prepares summaries. Presentation quality is not separately scored. (Official Rules, §6 pp.5–6; §4 p.4)

## First-party descriptions worth learning from

These are product-description examples, not evidence of hackathon wins. The writing lessons are editorial judgments.

| Example | What its own description does well | Apply to Lens |
| --- | --- | --- |
| [Flutter and Dart DevTools](https://docs.flutter.dev/tools/devtools) | Defines the tool in one sentence, lists concrete developer tasks, and places it in an existing workflow | Name the audience and show tasks such as finding a table or following a relationship |
| [Prisma Studio](https://www.prisma.io/studio) | Leads with understanding data, then explains visual browsing and relationship navigation as practical actions | Start with what developers can understand; explain schema relationships in ordinary words |
| [dbdiagram](https://dbdiagram.io/) | States the input-to-output transformation and names developers/data analysts; explains ways to manage large diagrams | Describe existing schema becoming an explorable map, then show how a focused view helps with complexity |

A suitable description sequence is: **one-line promise → concrete developer problem → short core workflow → implemented benefits → how it was built and Serverpod's actual role → honest limitations/next steps → AI disclosure**. Build/run and judge-access details can live in their own submission fields or linked repository instructions if the dashboard provides those fields.

Avoid claims such as “the first database visualizer,” “no tool does this,” or “unique relationship navigation”: Prisma Studio and dbdiagram already document related capabilities. Describe the specific Serverpod integration and implemented workflow instead. Do not claim measured time savings, production readiness, live database introspection, collaboration, official DevTools integration, or backend-powered viewing unless the repository and demonstrated behavior support them. The goal of becoming a Serverpod development tool should be identified as a direction, not an existing official integration.
