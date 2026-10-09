# Architecture

Serverpod Lens is a read-only schema visualization feature intended for Serverpod's
development tooling. The `serverpod_lens` package supplies an embeddable viewer; the standalone demo
showcases imports before upstream host integration.

## Reading

`serverpod_lens_schema` contains the shared, pure Dart database-definition reader.
It owns the plain Dart SchemaGraph model and reads resolved migration definitions
without depending on Flutter or the server runtime. The server fixture bridges
that wire contract to its generated protocol. The viewer uses the plain model. Types, indexes, module identity and foreign-key interpretation therefore
have one implementation.

`ProjectAnalyzer` discovers schema inputs in a ZIP. It chooses the newest migration,
prefers its complete definition, and rejects invalid newest snapshots. A YAML-only
fallback remains partial and warns the user. Database schemas and Serverpod modules
are separate metadata. Canonical identities are schema-qualified.

The offline flutter_elog importer is a separate development tool. It maps SQL
source declarations into the same graph contract using SQLGlot. It does not execute
the external project's code or SQL. Its report records unsupported declarations.

Interactive PostgreSQL import uses a bundled PostgreSQL 17 WASM parser in a
browser worker, then maps its AST to SchemaGraph. Native hosts may provide the
same AST directly. Unsupported statements produce diagnostics; the demo asks
the user to review partial results before replacing the current map. SQL is
never executed. YAML-only imports remain explicitly partial.

## Mapping

`SchemaDiagram` maps tables into Vyuh's native table shape content, column ports
and foreign-key connectors. Source metadata belongs to declared native shape values.
Vyuh handles rendering, connector geometry, selection, navigation, minimap, layout
and serialization. No custom minimap, renderer, layout or effect engine exists.

A small configuration enables Vyuh's native interactive surface without the editor
shell. Nodes can move and selecting a table plays native connection flow. Native
admission rules allow positions and visibility only, rejecting content changes,
creation, deletion, resizing and rewiring. Connection appearance changes use
Vyuh’s hosted connector extension. Native resolved table cells supply precise
column-port offsets. Table cells remain non-editable.

## UI

`SchemaCatalog` queries an immutable imported snapshot. `SchemaViewer` handles
search, schema selection and view settings. The demo `SchemaMapScreen` owns
asset loading, file picking and the SQL import dialog. Selecting a schema filters nodes
and connections with both endpoints visible. Selecting All restores the full graph.
Search narrows the list; selecting a result navigates to its native node.
View settings configure native effects, routing, alignment guides, grid snapping
and navigation. Preferences survive source changes during the session.

## Serverpod integration

The backend stays Serverpod and retains its built-in authentication setup. Host-project
schema delivery and authorization for that delivery are not yet implemented.
The viewer already accepts refreshed graphs through its widget interface. Integration should supply resolved definitions through Serverpod's
existing development tools rather than introduce another backend.

Generated models, client code and test helpers are managed by Serverpod. See
[AGENTS.md](../AGENTS.md) for generation and runtime rules, [AUDIT.md](AUDIT.md)
for the review and [ROADMAP.md](ROADMAP.md) for remaining work.
