# serverpod_lens_schema

Plain Dart models and extraction for Serverpod database schemas. The package
maps resolved definitions to tables, columns, foreign keys, indexes, and their
metadata. It has no Flutter or Serverpod runtime dependency.

## Serverpod support

Reads every native database field type in **Serverpod 4.0.4**, including vectors,
geography and JSON. It preserves tables, schemas, module identities, integer and
UUID IDs, keys, nullability, defaults, indexes and foreign keys. Native metadata
is kept with each table so hosts can inspect additional database attributes.

When you supply `.spy.yaml` sources, Lens also restores Dart field names and
records enum values and properties, inheritance, nested collections, records and
objects. The generated database definition decides which tables and columns
exist. Model sources add the details needed to understand them.

The [support matrix](https://github.com/vyuh-tech/serverpod_lens/blob/main/docs/SERVERPOD_SUPPORT.md)
lists the verified features and scope. These additions are prepared for **0.2.0**;
use this checkout until that version is published. The installation below uses
the currently published **0.1.1**.

## Install

Requires Dart 3.13+ and a registry token with access to internal packages.

```sh
dart pub token add https://pub.vyuh.tech
```

```yaml
dependencies:
  serverpod_lens_schema:
    hosted: https://pub.vyuh.tech
    version: ^0.1.1
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

Pass the graph to the [Flutter viewer](https://github.com/vyuh-tech/serverpod_lens/tree/main/packages/serverpod_lens/), serialize it with
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

This source-bundle API is available in the prepared **0.2.0** release.

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
