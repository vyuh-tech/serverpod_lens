# Architecture

Serverpod Lens is a read-only schema visualization feature intended for Serverpod's
development tooling. The standalone app establishes the reader and viewer before
that host integration.

## Reading

`serverpod_lens_schema` contains the shared, pure Dart database-definition reader.
It emits the SchemaGraph wire contract without depending on Flutter or the server
runtime. Small server/client bridges deserialize that contract with their generated
protocols. Types, indexes, module identity and foreign-key interpretation therefore
have one implementation.

`ProjectAnalyzer` discovers schema inputs in a ZIP. It chooses the newest migration,
prefers its complete definition, and rejects invalid newest snapshots. A YAML-only
fallback remains partial and warns the user. Database schemas and Serverpod modules
are separate metadata. Canonical identities are schema-qualified.

The offline flutter_elog importer is a separate development tool. It maps SQL
source declarations into the same graph contract using SQLGlot. It does not execute
the external project's code or SQL. Its report records unsupported declarations.

## Mapping

`SchemaDiagram` maps tables into Vyuh's native table shape content, column ports
and foreign-key connectors. Source metadata belongs to declared native shape values.
Vyuh handles rendering, connector geometry, selection, navigation, minimap, layout
and serialization. No custom minimap, renderer, layout or effect engine exists.

No editable extension is installed. DiagramCanvas therefore mounts Vyuh's native
read-only surface. Shape dragging, cell edits, drawing tools and editor keyboard
commands are absent. Programmatic filtering and layout remain view operations.

## UI

`SchemaCatalog` queries an immutable imported snapshot. `SchemaMapScreen` handles
loading, search, schema selection and view settings. Selecting a schema filters nodes
and connections with both endpoints visible. Selecting All restores the full graph.
Search narrows the list; selecting a result navigates to its native node.

## Serverpod integration

The backend stays Serverpod and retains its built-in authentication setup. Host-project
schema delivery, authorization for that delivery and automatic updates are not yet
implemented. Integration should supply resolved definitions through Serverpod's
existing development tools rather than introduce another backend.

Generated models, client code and test helpers are managed by Serverpod. See
[AGENTS.md](../AGENTS.md) for generation and runtime rules, [AUDIT.md](AUDIT.md)
for the review and [ROADMAP.md](ROADMAP.md) for remaining work.
