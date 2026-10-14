# Serverpod Lens package

An embeddable read-only schema viewer for Serverpod development tools.
Import `package:serverpod_lens/serverpod_lens.dart` and pass a `SchemaGraph` to
`SchemaViewer`. The host owns schema delivery, authentication and refresh;
the package owns interpretation and visualization.

```dart
final graph = SchemaExtractor.fromDefinitionJson(
  resolvedDefinitionJson,
  source: 'My Serverpod project',
);
SchemaViewer(graph: graph)
```

Supply a new graph to refresh the view. Optional `onImport` and `importActions`
let a host add source controls. No asset or generated client is required.
Advanced native integration is available through `diagram.dart`; ordinary hosts
use `SchemaViewer`. Snapshot delivery can use `SchemaSnapshotController` to share
manual refresh, unchanged-state preservation and request lifetime behavior.
Optional archive/YAML/SQL imports are maintained separately under
`../../tool/lens/imports/`; the core viewer does not bundle their SQL assets.

The CLI's shared local viewer and two Serverpod projects under `examples/`
demonstrate the package. The host owns schema delivery and manual refresh.
The optional connected Cloud demo owns authentication; local CLI usage has no login.

## Install from Git

Until the shared schema package is published, use these dependencies in a host:

```yaml
dependencies:
  serverpod_lens:
    git:
      url: https://github.com/vyuh-tech/serverpod_lens.git
      path: packages/serverpod_lens
      ref: main

dependency_overrides:
  serverpod_lens_schema:
    git:
      url: https://github.com/vyuh-tech/serverpod_lens.git
      path: packages/serverpod_lens_schema
      ref: main
  base_menu: 0.2.0
```

Pin `ref` to a reviewed commit for reproducible builds. The `base_menu` override
is currently needed for an upstream package archive issue. Dependency overrides
in this package are not inherited by consumers.

Authenticate with Vyuh's licensed extension registry before `flutter pub get`.
The projects in `../../examples/` use the shared extraction and viewer packages.

## Package release status

The reusable packages under `packages/` are the plain schema library and Flutter
viewer. The launcher is internal tooling under `tool/lens/`. Generated Serverpod
clients and demo applications stay unpublished.

Both package manifests target `https://pub.vyuh.tech` with the `internal` tier.
The GitHub Actions **Publish internal Lens packages** workflow is manual only and
starts in dry-run mode. It validates both packages, then publishes the schema
before the viewer when publication is explicitly selected on `main`. It creates
no Git tags. See [publishing](../../docs/PUBLISHING.md) for the steps.

No package has been published by this setup. Git installation remains available.
The viewer requires Vyuh's licensed extension registry, so its current dependencies
do not support pub.dev distribution. Publishing packages is separate from deploying
the optional Serverpod Cloud demo.

License: MIT for Lens code; third-party dependencies retain their own licenses.
