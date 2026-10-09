# flutter_elog schema source

The viewer's initial graph is imported from SQL under
`flutter_elog/supabase/schemas`. The external project is read-only during import.
All numbered schema directories are scanned, not just the earlier public/SSO/ELOG subset.

| Database schema | Declared tables |
| --- | ---: |
| assure_iq | 220 |
| assure_iq_durable | 6 |
| audit | 3 |
| docs_iq | 26 |
| durable_execution | 6 |
| elog | 82 |
| ext | 3 |
| public | 10 |
| sso | 30 |
| workflow_runtime | 10 |
| Total | 396 |

The snapshot includes 5,133 columns and 536 foreign-key declarations.
505 relationships can be drawn; 31 targets are absent from the imported source,
including external auth tables and some procedurally created tables. The report
lists each unresolved target. Names are
schema-qualified; `sso.users` and another schema's `users` stay distinct.
The Schema dropdown uses database schemas, not Serverpod module names.

`serverpod_lens_flutter/tool/import_elog_schema.py` uses SQLGlot 30.21.0 to read
CREATE TABLE/TYPE/INDEX declarations, ADD COLUMN and foreign-key ALTER clauses.
It preserves declared column types, defaults, primary keys, uniqueness and
foreign-key actions. The public schema's dynamic CREATE TABLE literals substitute
their declared schema. This reads declarations; it does not execute migrations,
PL/pgSQL functions, triggers or RLS policies.

Partial-index predicates are preserved and excluded from global uniqueness
inference. Some ALTER transformations and procedural DDL are not fully modeled. Unsupported declarations are listed in
[`schema_graph.import-report.json`](../serverpod_lens_flutter/assets/schema_graph.import-report.json).
Do not treat this source snapshot as a lossless or live database introspection result.

The old 122 recreated Serverpod models remain backend adapter fixtures under
`serverpod_lens_server/lib/src/elog_schema/`. They are not the default viewer dataset
and do not preserve every original SQL detail. The server dump command writes a
separate file, so it cannot replace the imported SQL graph accidentally.

Refresh instructions are in the [README](../README.md).
