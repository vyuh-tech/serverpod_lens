# serverpod_lens_schema

Plain Dart models and extraction for Serverpod database schemas. The package
maps resolved definitions to tables, columns, foreign keys, indexes, and their
metadata. It has no Flutter or Serverpod runtime dependency.

## Serverpod coverage

Extraction and rendering are tested against **Serverpod 4.0.4**: every native
column variant, int/UUID IDs, persisted defaults and inherited fields, foreign
keys and actions, indexes, database schemas, and module identities. Complete
native table metadata is retained, including attributes the viewer does not
interpret yet.

Optional authored-model enrichment restores Dart aliases and adds enum values,
properties, inheritance details, and nested type declarations. It adds no tables,
columns, or inferred constraints. Native metadata takes precedence.

[Coverage and boundaries](../../docs/SERVERPOD_SUPPORT.md). Version **0.2.0** is
prepared for manual publication; use this workspace until it is released.

## Install

Requires Dart 3.13+ and a registry token with access to internal packages.

```sh
dart pub token add https://pub.vyuh.tech
```

```yaml
dependencies:
  serverpod_lens_schema:
    hosted: https://pub.vyuh.tech
    version: ^0.2.0
```

Run `dart pub get`. The package is published with the `internal` tier.

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

Use a source bundle when aliases, enums, or nested object structures are needed:

```dart
import 'package:serverpod_lens_schema/io.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

LensSchemaSnapshot readProject(
  String directory,
  List<Map<String, dynamic>> generatedTables,
) {
  final models = ModelSourceIndex(projectDirectory: directory).readBundle();
  return LensSchemaSource(projectId: 'shop').read(
    generatedTables,
    sourcePaths: models.paths,
    modelSources: models.sources,
    modelCatalog: models.catalog,
  );
}
```

The host supplies `generatedTables` from its generated Serverpod protocol. For
compiled deployments, retain the authored table, parent, enum, and embedded-model
files as assets. Only declarations reachable from persisted column types enter
the snapshot. `SchemaModelCatalog.fromSources` also accepts model text directly,
without filesystem access.

`SchemaTableMetadata` provides cached native metadata lookup;
`SchemaRelationshipInfo` derives cardinality; `SchemaTypeStructure` describes
container and record components for inspection. No application records are read.

See the [package example](example/main.dart) for definition-file extraction.

[MIT license](LICENSE).
