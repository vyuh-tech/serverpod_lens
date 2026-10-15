# serverpod_lens

A read-only Flutter viewer for Serverpod database schemas, built with Vyuh
Diagram. It displays tables, columns, foreign keys, indexes, and model source.

## Serverpod coverage

All Serverpod 4.0.4 native column variants render as field rows, including vector,
geography, JSON/JSONB, and the unknown-type sentinel. The inspector shows aliases,
nullable/default/key information, enum values and properties, nested collections,
records, and authored object structures. Recursive types expand safely.

Relationships use native Vyuh field ports for every composite-key pair. Labels
show `0..1`, `1`, and `0..N` bounds derived from nullability and unconditional
uniqueness. Advanced field, index, and constraint metadata stays inspectable.

[Coverage and boundaries](../../docs/SERVERPOD_SUPPORT.md). Version **0.2.0** is
prepared for manual publication; use this workspace until it is released.

## Install

Requires Flutter 3.47+, Dart 3.13+, and a Vyuh registry token that grants access to
the licensed diagram extensions.

```sh
dart pub token add https://pub.vyuh.tech
```

Add the published package to your application's `pubspec.yaml`:

```yaml
dependencies:
  serverpod_lens:
    hosted: https://pub.vyuh.tech
    version: ^0.2.0

dependency_overrides:
  base_menu: 0.2.0
```

Then run `flutter pub get`. The `base_menu` override avoids an upstream archive
with missing workspace paths. Both Lens packages are published with the
`internal` tier and require registry access.

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
