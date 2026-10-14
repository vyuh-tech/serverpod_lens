# Shop Serverpod example

A complete Serverpod server/client project with four authored models:
customers, products, orders and order items. Serverpod generates all model and
client code. Its framework tables are included in the target as well.

```sh
# From the repository root:
flutter pub get
cd examples/shop/server
serverpod run lens
```

Lens prints a local URL and reads this project's actual generated target. It does
not require this example's server or database to be running. The shared tooling
viewer displays all fields, key bindings, indexes and matching model source.

`dart run bin/dump_lens.dart` demonstrates the reusable schema extractor directly.
`dart test` verifies the real generated target, its three foreign keys and four
source mappings. No schema fixture or hand-written generated code substitutes for
Serverpod generation.

To develop the shop server itself, copy `server/config/passwords.example.yaml` to `server/config/passwords.yaml`,
replace the placeholder passwords, and use
`serverpod start` in `server/`. Its local ports are 8180–8182, separate from the
large example. The Lens command is independent of those ports.
