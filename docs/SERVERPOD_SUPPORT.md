# Serverpod support

## Verified scope

**Lens extracts and renders every column variant in Serverpod 4.0.4's native
database-definition contract.** This means 18 concrete storage variants plus the
`unknown` sentinel. Lens provides a read-only view of the generated server target.

The support work is prepared as **0.2.0**. Publication and Cloud deployment require
a separate manual release. The live demo currently uses the previously published
release.

| Area | Covered behavior | Evidence |
| --- | --- | --- |
| Columns | All native column variants; native Dart type, nullability and defaults | [Native contract](../examples/large_schema/server/test/native_schema_contract_test.dart), [native rendering](../packages/serverpod_lens/test/native_type_rendering_test.dart) |
| IDs and inheritance | Integer/UUID IDs, UUID v7 defaults, inherited persisted fields and aliases | [Generated model matrix](../examples/shop/server/test/feature_matrix_test.dart) |
| Relations | ID/object relations, generated hidden IDs, optional, reverse, self and junction relations | [Generated matrix](../examples/shop/server/test/feature_matrix_test.dart), [native bindings](../packages/serverpod_lens/test/serverpod_feature_matrix_test.dart) |
| Composite foreign keys | Every field pair binds to native ports; pair labels retain identity | [Relationship rendering](../packages/serverpod_lens/test/relationship_semantics_test.dart) |
| Cardinality | Nullable parent references; reverse uniqueness from primary/unique keys, including unique subsets; conservative partial-index handling; SIMPLE/FULL matching | [Relationship semantics](../packages/serverpod_lens_schema/test/schema_metadata_test.dart) |
| Indexes and constraints | Unique/compound/partial indexes, native methods, all FK actions and retained advanced metadata | [Native contract](../examples/large_schema/server/test/native_schema_contract_test.dart), [definition reader](../packages/serverpod_lens_schema/test/schema_definition_reader_test.dart) |
| Aliases | Scalar, inherited and explicitly named foreign-key fields; native labels take precedence | [Migration comparison](../examples/shop/server/test/feature_matrix_test.dart), [source policy](../packages/serverpod_lens_schema/test/schema_source_test.dart) |
| Enums | Name/index storage, defaults, values and enhanced enum properties | [Generated matrix](../examples/shop/server/test/feature_matrix_test.dart), [inspector](../packages/serverpod_lens/test/model_inspection_test.dart) |
| Nested types | Lists, sets, maps, positional/named records, inherited objects, sealed variants and recursive references | [Type structures](../packages/serverpod_lens_schema/test/type_structure_test.dart), [model inspection](../packages/serverpod_lens/test/model_inspection_test.dart) |
| Persistence scope | Server-only persisted fields remain visible; `!persist` fields stay outside table columns; client-only tables stay outside the server target | [Generated matrix](../examples/shop/server/test/feature_matrix_test.dart) |
| Schemas/modules | Qualified identities and references; database schema and module remain separate | [Reader tests](../packages/serverpod_lens_schema/test/schema_definition_reader_test.dart), [native contract](../examples/large_schema/server/test/native_schema_contract_test.dart) |
| Hosts | Local CLI subprocess, unchanged snapshots, source access policy, packaged model metadata for compiled hosts | [CLI tests](../tool/lens/test/project_snapshot_test.dart), [compiled assets](../examples/large_schema/server/test/host_model_sources_test.dart) |
| Usability | Desktop/mobile navigation, light/dark inspection, search, native layouts/zoom/minimap and read-only gestures | [Viewer tests](../packages/serverpod_lens/test/) |

## How to interpret support

The generated target defines the database structure. Authored YAML supplies
**inspection metadata** omitted from that target: Dart aliases, enum values,
inheritance and object declarations. Enrichment never creates inferred database
tables, columns, types or constraints. Native field names take precedence when
present. Only declarations reachable from persisted native column types enter a
snapshot; unrelated and client-only models do not become table nodes.

Standalone DTOs, exceptions and enums can enrich a persisted nested type. They
are not separate database tables. JSON inspection displays type/model structure,
not stored JSON values. Native metadata is retained in the Source tab even when
no dedicated UI interpretation exists yet.

Metadata needs the relevant authored files. Local Lens indexes them; compiled
hosts must package the table, parent, enum and embedded-model files. Missing,
malformed or ambiguous declarations leave native database information available.
External module types remain visible; local declarations are not guessed as a
replacement for unavailable module sources.

Cardinality labels describe allowed rows, not existing row counts. Unrecognized
matching rules or missing column definitions display `?`. PostgreSQL's unsupported
PARTIAL matching rule also remains unknown. Partial unique indexes do not imply
unconditional one-to-one relationships.

Lens accepts qualified schemas and composite foreign keys in resolved definitions.
This does not add YAML syntax to Serverpod: the pinned compiler's supported model
syntax still applies. Its generated example tables use `public`.

Client-side SQLite visualization, experimental offline-sync policies, live database
drift detection, record browsing and schema editing are outside this support claim.
Future Serverpod versions and arbitrary third-party module combinations require
revalidation. The broad claim is **all native field/storage variants in the pinned
contract**, rather than every Serverpod feature or every possible model combination.

## Verification and release

Run `tool/verify.sh` after resolving the workspace. Server tests use managed
PostgreSQL and need a local test credential or `SERVERPOD_PASSWORD_database`.
CI additionally regenerates the examples with Serverpod 4.0.4 and rejects stale
checked-in generated code, runs the SQL parser tests, and checks public dependency
advisories.

Before deploying this support release:

1. Review and merge the worktree changes.
2. Manually publish both 0.2.0 packages, schema first.
3. Update `tool/cloud_release.dart` to the published version and actual archive
   hashes. Its build guard rejects mismatched workspace/release versions.
4. Build and verify the isolated Cloud release, then deploy when approved.

No package publication or deployment is performed by the support worktree.

## Reference

The compatibility matrix follows Serverpod's [model reference](https://docs.serverpod.dev/concepts/lookups/model-reference),
[table definitions](https://docs.serverpod.dev/concepts/data-and-the-database/database/tables)
and [relationships](https://docs.serverpod.dev/concepts/data-and-the-database/database/relations).
The installed 4.0.4 native types and official generator are the executable contract
used by the tests.
