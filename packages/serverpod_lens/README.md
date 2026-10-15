# serverpod_lens

A read-only Flutter viewer for Serverpod database schemas, built with Vyuh
Diagram. It displays tables, columns, foreign keys, indexes, and model source.

## Serverpod support

Displays every native database field type in **Serverpod 4.0.4**, including
vectors, geography and JSON. Table cards show all columns; the inspector shows
field names, types, nullability, defaults, keys, indexes and model source.

With model sources supplied through `serverpod_lens_schema`, you can inspect
inherited fields, aliases, enum values and properties, nested collections,
records and objects. Recursive models expand safely. Foreign-key connections
attach to the fields they reference, including every pair in a composite key.
Relationship labels show optionality and whether a reference allows one or many
rows.

The [support matrix](https://github.com/vyuh-tech/serverpod_lens/blob/main/docs/SERVERPOD_SUPPORT.md)
lists the verified features and scope. These additions are prepared for **0.2.0**;
use this checkout until that version is published. The installation below uses
the currently published **0.1.1**.

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
    version: ^0.1.1

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

The [shop example](https://github.com/vyuh-tech/serverpod_lens/tree/main/examples/shop/) and
[connected large-schema demo](https://github.com/vyuh-tech/serverpod_lens/tree/main/examples/large_schema/) use this viewer.
The [local launcher](https://github.com/vyuh-tech/serverpod_lens/tree/main/tool/lens/) serves it in a browser.

Lens code is [MIT licensed](LICENSE). Vyuh extensions require their own registry
access and license.
