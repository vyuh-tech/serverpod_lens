# Verification — 9 October 2026

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

- Host-project delivery and automatic refresh inside Serverpod development tools.
- Compatibility beyond the tested Serverpod 4.0.4 schema contract.
- Physical iOS/Android devices, Safari/Firefox and screen-reader navigation.
- Large-schema frame time, memory, heavy layouts and large ZIP responsiveness.
- Persistent preferences across app restarts.
- Complete compiler semantics for YAML-only projects and procedural SQL/ALTER.
- Project licensing and the hosted extensions' distribution terms.

The README describes the shipped viewer and these boundaries. Passing this suite
means the covered behavior works; it is not a claim that every possible case has
been tested.
