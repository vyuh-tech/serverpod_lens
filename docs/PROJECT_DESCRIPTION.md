# Serverpod Lens — See how your backend fits together

**Your models define the backend. Lens makes their structure visible.**

## Submission description

Every application starts with decisions about its data: where information lives,
how it connects, and which parts depend on each other. In a growing backend,
those decisions are spread across many model files. Understanding the whole
structure becomes a task of its own.

**Serverpod Lens turns the schema generated from your `.spy.yaml` models into an
interactive map of your backend.** Developers can see how tables fit together,
follow their relationships, and connect the visual structure to the model source.
It brings schema exploration into the Serverpod development workflow, using the
schema the project already defines.

Start with a simple schema-and-table browser. Select one table to understand its
fields, keys, indexes and source. Its immediate connections stay clear while unrelated nodes fade.
Follow incoming or outgoing relationships, choose a schema, or open **All schemas**
to explore the complete map. The right-side inspector keeps details close to the diagram, and
manual refresh preserves valid exploration state as the generated schema changes.

This helps teams answer practical questions: where user information connects to
other records, which tables reference an important entity, and how a backend is
organized. It supports design reviews, onboarding and everyday development by
making the application's data foundation easier to understand and explain.

The primary workflow is local: run **`serverpod run lens`** and open the browser
link. No login, Cloud account or running application server is required. **Serverpod
provides the generated schema**, **Flutter provides the interface**, and **Vyuh
Diagram provides native rendering and navigation**. The optional Cloud demo adds
Serverpod authentication for shared access. The viewer is a reusable package: a host supplies its
resolved schema graph and optional model-source links. Moving tables changes the
view; Lens remains read-only for model definitions and database contents.

**Serverpod Lens makes the structure behind an application visible—so the people
building it can understand the same foundation and make clearer design decisions.**

### AI assistance disclosure

OpenAI Codex assisted with implementation, debugging, tests, security review,
documentation and submission writing. Lens itself does not provide an AI feature.

## Short description

Serverpod Lens transforms the schema generated from `.spy.yaml` models into an
interactive, read-only map. Select a table, follow its connections, inspect
fields and source, or navigate the complete schema. Built with Serverpod, Flutter
and Vyuh Diagram, Lens helps teams understand the data structure behind their
application and brings visual schema exploration into their existing workflow.

## How it fits into a project

1. Serverpod resolves the project's `.spy.yaml` models into its generated target.
2. `serverpod run lens` reads that target through the reusable adapter and prints a
   loopback browser link. Developers can refresh manually after generation.
3. A Flutter host can also embed `SchemaViewer(graph: graph)` directly. A shared
   hosted integration supplies its own authenticated transport and project scopes.

Two complete Serverpod projects demonstrate the same packages: a small shop and
an existing large schema. Generated server/client code lives in the examples.
The reader, schema extractor, viewer and CLI remain reusable repository packages.
They are not yet published or installed as an official Serverpod CLI command.

## Verified evidence

- **Automated package and example tests** cover extraction, native rendering, navigation,
  persistence, authorization, manual refresh and import protections.
- Contract checks exercise **all 19 database column types** and every foreign-key
  action in the installed **Serverpod 4.0.4** SDK. Complete resolved table metadata
  is retained, including advanced index/constraint attributes and vector dimensions.
- Large-schema regressions use a **396-table sample** and a synthetic table with
  **1,000 neighbors** to check indexed traversal and focus behavior.
- The local CLI serves both projects without login or database startup. Its tests
  cover fixed-project delivery, manual refresh, source indexing and loopback safety.
- The optional connected demo retains tests for project authorization, session
  handling and manual refresh. Earlier local lifecycle checks covered registration,
  password reset, JWT refresh and sign-out.
- Release-web profiling exercises 156, 500 and 1,000 tables. It identifies software
  rendering limits and guards an expensive web layout; it does not claim universal
  smooth performance.

These are implementation checks, not measured user time savings or a guarantee
of compatibility with every future Serverpod version. See
[verification](VERIFICATION.md) and [security review](SECURITY_REVIEW.md).

## Submission use

Paste the **Submission description** and **AI assistance disclosure** into the
project description field. Use the short description if the form provides a
summary field. Add the repository, working demo access, build instructions and
public demo video in the appropriate submission fields.

The copy is structured around usefulness, working behavior, Serverpod's actual
role and technical craft. It takes editorial inspiration from the first-party
[Flutter DevTools overview](https://docs.flutter.dev/tools/devtools),
[Prisma Studio description](https://www.prisma.io/studio) and
[dbdiagram introduction](https://dbdiagram.io/): a clear promise followed by
concrete user actions and practical value. See the
[verified rules and submission requirements](SUBMISSION_REQUIREMENTS.md).
