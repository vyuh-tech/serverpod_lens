# serverpod_lens

A read-only Flutter viewer for Serverpod database schemas, built with Vyuh
Diagram. It displays tables, columns, foreign keys, indexes, and model source.

## Install

Requires Flutter 3.47+, Dart 3.13+, and a Vyuh registry token that grants access to
the licensed diagram extensions.

```sh
dart pub token add https://pub.vyuh.tech
```

Add the Git dependency and overrides to your application's `pubspec.yaml`:

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

Then run `flutter pub get`. Pin both Git references to a commit for reproducible
builds. The schema override resolves the companion package from Git; the
`base_menu` override avoids an upstream archive with missing workspace paths.

## Use

Pass a resolved Serverpod database definition as a JSON string:

```dart
import 'package:flutter/widgets.dart';
import 'package:serverpod_lens/serverpod_lens.dart';

Widget schemaView(String definitionJson) {
  final graph = SchemaExtractor.fromDefinitionJson(
    definitionJson,
    source: 'My project',
  );
  return SchemaViewer(graph: graph);
}
```

The host loads the schema and supplies a new graph when it changes. It also owns
authentication and any network requests.

`SchemaViewer` provides table and column search, schema navigation, relationship
highlighting, inspectors, layouts, a minimap, and view preferences. Dragging
tables changes their displayed positions only.

## Host integration

- `sourcePaths` maps qualified table names to model paths.
- `modelSources` supplies model text for the Source tab.
- `onOpenModel` lets the host open a model in an editor or repository.
- `storageKey` identifies the project/account for saved view positions.
- `onImport` and `importActions` let the host provide import controls.
- `SchemaSnapshotController` handles manual refresh, snapshot validation, and
  request lifetime for hosts that use Lens snapshots.

Advanced native diagram integration is exported from
`package:serverpod_lens/diagram.dart`.

The [shop example](../../examples/shop/) and
[connected large-schema demo](../../examples/large_schema/) use this viewer.
The [local launcher](../../tool/lens/) serves it in a browser.

Lens code is [MIT licensed](LICENSE). Vyuh extensions require their own registry
access and license.
