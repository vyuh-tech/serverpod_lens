## Unreleased

- Add bounded authored-model enrichment without inferring database structure.
- Add source bundles for inherited aliases, enums and reachable nested declarations.
- Add cached native metadata, conservative relationship cardinality and type-structure helpers.
- Advance the snapshot contract revision for enriched metadata.

## 0.1.0

- Plain Dart graph and reader for resolved Serverpod database definitions.
- Qualified table identities, fields, foreign keys, indexes, and resolved metadata.
- Deterministic snapshots and shared validation/state handling.
- Authored model-source indexing through the separate `io.dart` entry point.
