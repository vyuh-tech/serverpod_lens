# Package and example restructure

## Intended structure

- `serverpod_lens/`: reusable Flutter visualization and import adapters.
- `serverpod_lens_schema/`: plain Dart graph and resolved-definition reader.
- `serverpod_lens_backend/`: shared Serverpod target extraction, revision and safe source indexing.
- `serverpod_lens_cli/`: local developer launcher; its internal viewer is tooling, not another demo.
- `examples/large_schema/`: existing authenticated Serverpod server/client/Flutter integration, relocated intact.
- `examples/shop/`: independent four-model Serverpod server/client/Flutter project using the same packages.

Remove the standalone offline demo. Keep its useful importer/read-only regression
coverage with the reusable viewer, rather than deleting those guarantees.

## Delivery sequence

1. Checkpoint existing work; use an isolated worktree to preserve the running app.
2. Extract backend logic behind one typed interface and keep generated transport in examples.
3. Relocate existing integration without manually changing generated code.
4. Bootstrap the shop project with Serverpod generation, then verify its actual target.
5. Add a local CLI that prints a URL and renders the project target through the same viewer.
   Use the supported `serverpod run lens` script integration; do not impersonate or patch Serverpod's CLI.
6. Remove header sidebar menu; retain accessible edge controls on desktop/mobile.
7. Update package installation, verification, deployment paths and example instructions.
8. Run analysis, format checks, package and example tests, release builds and local browser checks.
9. Commit by responsibility, merge the completed restructure and push. Do not deploy or publish packages.

## Invariants

- No generated code is edited by hand; only Serverpod produces new shop transport.
- Multiuser hosted examples keep Serverpod authentication and project read scopes.
- A local launcher binds only to loopback and never exposes arbitrary file paths.
- Native Vyuh rendering, layouts, camera, minimap and effects remain authoritative.
- Model definitions and application records are not changed by Lens interaction.
- Extraction uses the host's current generated target; YAML inference is explicitly partial.
- Package publication remains blocked where dependencies require a private registry.

## Performance evidence to carry forward

A release-web benchmark of a synthetic 156-table graph (12 columns per table,
approximately two foreign keys per table) reached the viewer in 2,930 ms and its
selection frame in 472 ms on headless Chromium with software rendering. Native
grid layout completed in 520 ms. Native layered layout did not complete during
the observation window and monopolized the renderer; the owned benchmark process
was terminated. These are diagnostic single-run measurements, not a performance
signoff or representative device guarantees. Large-map layered behavior needs a
reproducible guard/investigation before encouraging it in the CLI.
