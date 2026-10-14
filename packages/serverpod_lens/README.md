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
viewer. The launcher is internal tooling under `tool/lens/`. Generated Serverpod clients and demo applications stay unpublished.

The schema package has version, README, changelog, example and MIT license files.
`publish_to: none` remains a deliberate safeguard until an actual release is
approved. Its release manifest must remove that field.

The viewer cannot currently be published to pub.dev: its Vyuh extensions use a
custom hosted repository. Dart requires dependencies from the default hosted
server or SDK for pub.dev publication. Git installation works with registry access;
a custom registry is the eventual viewer distribution option unless those
extensions become available on pub.dev.
[Publishing rules](https://dart.dev/tools/pub/publishing).

Publishing packages is separate from deploying the demo on Serverpod Cloud.
No package publication or Cloud deployment is included in the current changes.

License: MIT for Lens code; third-party dependencies retain their own licenses.
