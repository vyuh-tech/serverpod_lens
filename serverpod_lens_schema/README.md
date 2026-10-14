# Serverpod Lens Schema

Plain Dart models and a reader for Serverpod resolved database definitions.
No Flutter, Serverpod runtime or generated client dependency is required.

```dart
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

final graph = SchemaGraph.fromJson(
  SchemaDefinitionReader.read(definitionJson, source: 'My project'),
);
```

Supply the resulting graph to the Flutter `serverpod_lens` viewer, or use the
models in another host. Tables retain fields, foreign keys, indexes and complete
resolved metadata. Database schemas and Serverpod modules remain distinct.

The input is Serverpod's resolved definition JSON, rather than authored YAML.
Compatibility is tested against Serverpod 4.0.4's database contract.

This package is available in the Git repository and has not been published.
For installation and publication status see the repository README.

License: MIT. Vyuh dependencies belong to the separate Flutter viewer package.
