# Shop example

A small, independent Serverpod model project visualized by the reusable Lens
widget: customers → orders → order items → products.

`lib/src/models/` contains four authored `.spy.yaml` files. The checked-in
`schema/definition.json` was produced from those files by Serverpod 4.0.4's own
model analyzer and database-definition builder. It is a resolved schema fixture,
not a migration applied to the demo database. No application records are loaded.

The Flutter entry point reads that definition, loads the matching source files,
and supplies them to `SchemaViewer`. There is no sample backend/client dependency
and no authentication requirement for this bundled offline example.

From the repository root:

```sh
flutter pub get
cd serverpod_lens/example
flutter run -d chrome
flutter test
```

Vyuh extension access is required, as for the main viewer.

Select a table to inspect its fields, relationships, indexes and YAML source.
Try each native layout and drag a table; model definitions stay unchanged.

To try file import, ZIP `lib/src/models/` with the resolved snapshot placed at
`migrations/20261014000000000/definition.json`, then import it in the offline demo.
A ZIP containing only YAML also works, but reports partial inference.

For a connected deployment, the host must expose its own resolved target through
an authenticated endpoint and grant its project read scope. The sample connected
host accepts `LENS_PROJECT_ID` through a Dart build define; this changes the
expected identity, not backend permissions or available projects. Adapt the
endpoint and generated transport to your actual host. This example demonstrates
extraction and embedding; it does not claim to provide a second deployed server.
