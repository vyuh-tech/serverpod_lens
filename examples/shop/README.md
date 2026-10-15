# Shop Serverpod example

A Serverpod project with customers, products, orders, and order items, plus a
feature matrix under `server/lib/src/models/compatibility/`. Its generated server
target contains 14 project tables and Serverpod's framework tables.

```sh
# From the repository root:
flutter pub get
cd examples/shop/server
serverpod run lens
```

Lens prints a loopback URL and reads the project's generated schema and model
sources. The server and database can remain stopped.

From `server/`, run `dart run bin/dump_lens.dart` to print the extracted graph or
`dart test` to check the generated target and source mappings.

To develop the shop server itself, copy `server/config/passwords.example.yaml` to `server/config/passwords.yaml`,
replace the placeholder passwords, and use
`serverpod start` in `server/`. Its local ports are 8180–8182, separate from the
large example. The Lens command is independent of those ports.

## Serverpod feature coverage

These are real `.spy.yaml` models compiled by Serverpod 4.0.4. Tests read the
resulting native protocol, exercise the local CLI extractor, and render the graph
through Vyuh's native table shapes and field ports.

| Feature | What Lens shows and checks |
| --- | --- |
| Integer and UUID v7 IDs | Primary keys, inherited fields, persisted defaults |
| Object and reverse relations | Explicit IDs and hidden foreign-key columns |
| One-to-one, self and junction relations | Bound field connections, unique and compound indexes, delete actions |
| Enums by name and index | Model type and text/bigint storage, including defaults |
| Lists, sets, maps, records, nested models | Typed JSON/JSONB columns and nullability |
| Vector, half/sparse vector and bit | Native storage types and dimensions |
| Geography and scalar fields | Generated storage types without SQL inference |
| Server-only and `!persist` fields | Persisted server fields included; transient fields omitted |
| `database: client` / `database: all` | Client-only tables excluded; shared server tables included |
| Generated migration | Database columns, FKs and indexes agree with the runtime target |

### Boundaries

Lens visualizes the **server database target**, not every model as a separate
node. Non-table DTOs, inheritance trees and standalone enum value lists are not
diagram nodes. Nested JSON remains a column rather than an expanded object tree.
The runtime target currently omits Dart field aliases; the database column name
is shown, and the authored YAML remains available in Source. Reading a migration
definition directly preserves its alias metadata.

Composite foreign keys retain all column pairs but use the first pair for their
visual anchor. Optionality is available on fields; connection labels do not yet
express every optional cardinality. Experimental offline sync behavior, client
SQLite schemas, custom module combinations and live database drift are not
validated by this matrix. This is a pinned compatibility suite, not a claim of
support for every future Serverpod feature.

Regenerate with the official Serverpod tooling after changing models. Run
`dart test` in `server/` to check extraction and migration consistency. Repository
CI also tests the actual CLI subprocess and the native diagram bindings. No
application server or database is started by these compatibility tests.
