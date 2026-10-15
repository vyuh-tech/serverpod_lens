# Serverpod Lens

Explore the database behind your Serverpod models. Lens gives you a read-only
map of tables, fields and relationships, so you can follow how your backend fits
together without jumping between model files.

## Try the demo

[Open the Cloud demo](https://serverpod-lens.serverpod.space/).
Sign in with username `test` and password `test123!`.

The Cloud demo explores a fictional university campus with 156 tables and uses
Serverpod authentication.

![Serverpod Lens in dark mode, exploring the campus schema](docs/schema-map.png)

## Run locally

Requires Flutter 3.47+, Dart 3.13+, Serverpod 4.0.4, and access to
[Vyuh's licensed diagram extensions](packages/serverpod_lens/README.md).

From the repository root:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd examples/shop/server
serverpod run lens
```

Open the loopback URL printed in the terminal. Local Lens reads the project's
generated schema without starting its server or connecting to its database.
After Serverpod regenerates your models, click Refresh to load the changes.

The launcher runs from this checkout. See [local tool setup](tool/lens/README.md).

## Explore a schema

- Search for a table or column, or browse **All schemas → schema → tables**.
- Select a table to highlight its relationships and inspect its fields, keys,
  indexes, and model source.
- Follow incoming and outgoing relationships from the inspector.
- Use **1 hop / 2 hops** to expand a selected table's connections, then
  **Bring together** to arrange those tables in view.
- Choose a layout, move tables, and adjust the minimap, connections, and theme.

Moving tables changes the view. Model definitions and database records remain
unchanged.

## Serverpod support

Tested with **Serverpod 4.0.4**. See the [full support matrix and test evidence](docs/SERVERPOD_SUPPORT.md).

| Area | What Lens covers |
| --- | --- |
| Fields | Every native type, including vectors, geography and JSON; nullability and defaults |
| IDs and inheritance | Integer/UUID IDs, UUID v7 defaults and inherited persisted fields |
| Relations | ID/object, optional, reverse, self and junction relations; hidden foreign-key IDs |
| Composite foreign keys | A field connection for every column pair |
| Cardinality | Optional/required and one/many relationships; SIMPLE/FULL matching |
| Indexes and constraints | Unique, compound and partial indexes; foreign-key actions and native metadata |
| Field aliases | Scalar, inherited and explicitly named foreign-key fields |
| Enums | Name/index storage, values, defaults and enum properties |
| Nested types | Lists, sets, maps, records, objects, sealed variants and recursive references |
| Persistence | Server-only fields included; `!persist` fields and client-only tables omitted |
| Schemas and modules | Qualified table identities and connections across schemas; separate module identities |
| Hosts | Local CLI, manual refresh, snapshots and packaged model sources |
| Navigation | Desktop/mobile, light/dark mode, search, layouts, zoom, minimap and read-only interaction |

Serverpod's generated definition supplies the database structure. Model details
need the corresponding `.spy.yaml` sources. The full matrix explains source
availability and scope, including client SQLite and offline-sync boundaries.

## Packages

| Package | Role | How to use it |
| --- | --- | --- |
| [serverpod_lens_schema](packages/serverpod_lens_schema/) | Reads Serverpod definitions into a plain Dart schema graph, with optional model source details. No Flutter dependency. | Use `SchemaExtractor` to read a generated definition, or `LensSchemaSource` to create a snapshot for a host. |
| [serverpod_lens](packages/serverpod_lens/) | Embeddable Flutter viewer with search, layouts and a table inspector, powered by Vyuh Diagram. | Pass a `SchemaGraph` to `SchemaViewer` in your Flutter app. |

The schema package reads the structure; the viewer makes it explorable. Your
host supplies the graph, so you can use a local file or a connected Serverpod app.
See [how the pieces fit together](docs/PLAN.md).

Both packages are published as **0.1.1** on
[pub.vyuh.tech](https://pub.vyuh.tech) in the **internal** tier. Installing them
requires registry access. This checkout prepares **0.2.0** for manual publication;
its new support is available locally. See each package's README for installation
and API examples.

## Examples

| Project | What it shows |
| --- | --- |
| [Shop](examples/shop/) | Small Serverpod project with local Lens setup and model compatibility tests. |
| [University campus](examples/large_schema/) | 156-table project with a connected Flutter host, Serverpod authentication and the Cloud demo. |

The [local launcher](tool/lens/) runs `serverpod run lens` from either example.
[Optional import adapters](tool/lens/imports/) handle ZIP, YAML and PostgreSQL SQL.

## Development

After installing workspace dependencies, run:

```sh
tool/verify.sh
```

Runs analysis, formatting checks and the Dart/Flutter test suites. Server tests
use managed PostgreSQL; provide a disposable test password through
`SERVERPOD_PASSWORD_database` or local Serverpod configuration.

Package releases use the manual [publishing workflow](.github/workflows/publish-packages.yml),
which defaults to a dry run. The [Cloud build instructions](examples/large_schema/README.md#cloud-demo)
explain how to build the demo from published packages.

Lens code is [MIT licensed](LICENSE). Third-party dependencies retain their own
licenses.
