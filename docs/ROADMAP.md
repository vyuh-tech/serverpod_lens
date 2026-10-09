# Remaining work

The current prototype visualizes migration snapshots and imports project ZIPs.
The README describes its supported behavior and limitations.

## Serverpod integration

- Decide the development-tool surface with the Serverpod team.
- Obtain the host project's resolved definition directly from Serverpod tooling.
- Refresh the graph when migrations or model definitions change.
- Keep access restricted to the development environment and authorized users.
- Test complete definitions with installed modules across supported Serverpod versions.

## Schema fidelity

- Report unresolved references and unsupported definition versions explicitly.
- Distinguish database schema names when tables share a name across schemas.
- Expose index expressions, composite constraints, enum values and vector dimensions.
- Replace the partial YAML fallback with compiler-resolved definitions where available.
- Consolidate server and browser extraction behind a shared parsing contract.

## Viewer verification

- Test large schemas on web and desktop, recording frame time and memory use.
- Check narrow screens, keyboard navigation and accessibility with native extensions.
- Preserve view preferences and support loading exported diagram documents.

## Schema authoring

Native diagram editing currently changes the diagram only. Writing Serverpod
models requires a separate validated adapter, compiler checks and migration
review. Do not treat drawing edits as database operations.

Use Vyuh's native editor, table, layout, minimap, history and codecs for diagram
features. Keep project-specific code focused on Serverpod semantics.
