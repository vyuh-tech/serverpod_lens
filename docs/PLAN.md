# Serverpod Lens architecture

Serverpod Lens is intended to become a schema visualization feature in Serverpod's
development tooling. The standalone Flutter app provides a place to validate the
schema adapter and interaction model before that integration.

## Data boundary

Serverpod's resolved migration definition is the input. `SchemaExtractor` maps
it to `SchemaGraph`, whose tables, columns, foreign keys, indexes and enum models
are defined in `serverpod_lens_server/lib/src/models/schema/*.spy.yaml`.
Serverpod generates the server and client representations.

There are currently server and browser implementations of extraction. The server
implementation powers `bin/dump_schema.dart`; the browser implementation powers
ZIP import. Regression fixtures must keep their interpretation consistent until
these parsers share a package.

Complete `definition.json` snapshots include installed modules. Project-only
snapshots remain useful when complete definitions are unavailable. The ZIP
analyzer selects the latest migration and prefers the complete definition at the
same version. YAML-only parsing is explicitly a partial fallback.

## Diagram boundary

`SchemaDiagram` translates the graph into native Vyuh Diagram shapes, table
content, column ports and foreign-key connectors. Imported table metadata is
stored in the shape's declared native value field and survives diagram export.

The `DiagramController` owns the document, selection, visibility, camera,
history and extension options. Schema search, module filtering and source labels
belong to the Flutter shell. The schema graph is an imported snapshot; drawing
edits do not update that snapshot or the Serverpod models.

Vyuh's hosted extensions supply table rendering, the editor, minimap, automatic
layout and snap guides. Base extensions supply navigation and grid behavior.
The relationship extension selects native flow/fade effects; it does not own
rendering, geometry or animation timing.

## Backend boundary

The backend remains Serverpod, including its existing authentication setup.
Live host-schema delivery is not implemented yet. Integration must use
Serverpod's development tooling and access controls rather than introduce a
separate backend or production database introspection service.

## Development instructions

See [AGENTS.md](../AGENTS.md) for generation, migrations, runtime tooling and
verification rules. Never edit generated model or client code by hand.

See [README.md](../README.md) for setup and current coverage, and
[ROADMAP.md](ROADMAP.md) for the remaining integration and fidelity work.
