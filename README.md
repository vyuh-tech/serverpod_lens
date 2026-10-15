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
- Choose a layout, move tables, and adjust the minimap, connections, and theme.

Moving tables changes the view. Model definitions and database records remain
unchanged.

## Serverpod support

Lens supports every native database field type in **Serverpod 4.0.4**, including
vectors, geography and JSON. It reads tables, schemas, module identities, keys,
defaults, indexes and foreign-key relationships from Serverpod's generated schema.
Composite relationships connect each pair of fields.

Your `.spy.yaml` files provide the model details: Dart field names, inheritance,
enum values and properties, nested collections, records and objects. Recursive
models can be explored without expanding forever. Models without a database
table appear as field details when referenced by a persisted field.

We verify this against generated Serverpod projects and all native database
column types. See the [support matrix](docs/SERVERPOD_SUPPORT.md) for the tests
and the scope of support.

## Packages and examples

Both packages are published as **0.1.1** on
[pub.vyuh.tech](https://pub.vyuh.tech) in the **internal** tier. Installing them
requires registry access. This checkout prepares **0.2.0** for manual publication;
its new support is available locally. See each package's README for installation
and API examples.

| Path | Contents |
| --- | --- |
| [serverpod_lens](packages/serverpod_lens/) | Flutter viewer and host integration |
| [serverpod_lens_schema](packages/serverpod_lens_schema/) | Plain Dart schema graph, reader, and snapshots |
| [Shop example](examples/shop/) | Small shop and generated Serverpod feature compatibility tests |
| [Large-schema example](examples/large_schema/) | 156-table university campus project and connected Cloud host |
| [Local launcher](tool/lens/) | CLI and browser host |
| [Optional imports](tool/lens/imports/) | ZIP, YAML, and PostgreSQL SQL adapters |

Serverpod supplies the database definition. Lens reads it and adds model details;
Vyuh Diagram handles the canvas, connections, movement and layouts.
See [how the pieces fit together](docs/PLAN.md).

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
