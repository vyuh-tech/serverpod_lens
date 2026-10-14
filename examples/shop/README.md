# Shop Serverpod example

A Serverpod project with customers, products, orders, and order items. Its
resolved schema also includes Serverpod's framework tables.

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
