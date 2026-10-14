# serverpod_lens_schema

Plain Dart models and extraction for Serverpod database schemas. The package
maps resolved definitions to tables, columns, foreign keys, indexes, and their
metadata. It has no Flutter or Serverpod runtime dependency.

## Install

Requires Dart 3.13+.

```yaml
dependencies:
  serverpod_lens_schema:
    git:
      url: https://github.com/vyuh-tech/serverpod_lens.git
      path: packages/serverpod_lens_schema
      ref: main
```

Run `dart pub get`. Pin the Git reference to a commit for reproducible builds.

## Read a definition

```dart
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

SchemaGraph readSchema(String definitionJson) {
  return SchemaExtractor.fromDefinitionJson(
    definitionJson,
    source: 'My project',
  );
}
```

Input is Serverpod's resolved database definition JSON. Extraction is tested
against the Serverpod 4.0.4 database contract. Database schemas and Serverpod
modules retain separate identities.

Pass the graph to the [Flutter viewer](../serverpod_lens/), serialize it with
`toJson()`, or query it in another Dart host.

## Current-target snapshots

`LensSchemaSource` accepts serialized table definitions from a host's generated
`Protocol`. The host supplies the Serverpod types; the schema package receives
plain maps.

```dart
LensSchemaSnapshot readTarget(
  List<Map<String, dynamic>> tables, {
  String? knownRevision,
}) {
  final source = LensSchemaSource(projectId: 'shop');
  return source.read(tables, knownRevision: knownRevision);
}
```

Snapshots deduplicate qualified table identities and compute deterministic
revisions. An unchanged revision omits the graph and source bodies.
`LensSnapshotState` validates and applies snapshots.

## Model sources

Import `package:serverpod_lens_schema/io.dart` for `ModelSourceIndex`, which reads
authored model files from a project directory. Filesystem indexing is separate
from the primary, web-compatible library.

See the [package example](example/main.dart) for definition-file extraction.

[MIT license](LICENSE).
