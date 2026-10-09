# Dogfood: the flutter_elog schema

The end goal of serverpod_lens is to visualize a **Serverpod** project's schema. The
`flutter_elog` project is only a **test run**: a large, real-world schema we use
to prove the feature works against something non-trivial.

## Why elog is unusual

`flutter_elog` (`~/Projects/caliber/flutter_elog`) is a Vyuh + Supabase/Postgres
stack — **not** Serverpod. Its schema lives in Postgres DDL:

- `supabase/schemas/00_public/**` — shared entity/draft/workflow tables
- `supabase/schemas/01_sso/**` — users, companies, roles, tenancy
- `supabase/schemas/02_elog/**` — the ELOG product schema

So we **read that DDL read-only** and recreate it as real Serverpod models inside
`serverpod_lens_server`. serverpod_lens then visualizes *its own* Serverpod schema.

## Scope and result

Scope: `00_public` + `01_sso` + `02_elog`.

| Source schema | Tables | Notes |
|---------------|-------:|-------|
| `02_elog`     |     82 | product schema |
| `01_sso`      |     30 | users/tenancy |
| `00_public`   |     10 | dynamic-DDL subset |
| **Total**     | **122** | 1,397 columns, 216 foreign keys |

## How it was produced

1. **Parse** the DDL with `sqlglot` (Postgres dialect), splitting statements
   with a dollar-quote/string-aware scanner so plpgsql bodies don't abort a file.
   `00_public` builds tables through `format('CREATE TABLE ... %I.<table> ...')`,
   so those string literals are extracted and `%I` substituted with `public`.
2. **Emit** one Serverpod `.spy.yaml` per table under
   `serverpod_lens_server/lib/src/elog_schema/<schema>/`.
3. **Generate + migrate** with `serverpod generate` and
   `serverpod create-migration`.

The parse/convert tooling lives outside the repo (a throwaway Python script in
`/tmp`) since it is a one-time data load, not part of the product.

## Mapping decisions

| Postgres | Serverpod | Note |
|----------|-----------|------|
| `uuid` PK | `id: UuidValue?, defaultPersist=random` | faithful UUID ids |
| table without a single `id` PK | synthesized `id: UuidValue` + original PK columns kept as fields | Serverpod requires an `id` PK |
| `text`/`varchar(n)` | `String` | |
| `bool` | `bool` | |
| `int`/`smallint` | `int` | |
| `bigint` | `BigInt` | |
| `jsonb`/`json` | `String` | stored as text |
| `timestamptz`/`date` | `DateTime` | |
| `numeric`/`decimal` | `double` | precision-lossy; noted |
| `text[]`, `uuid[]` | `List<...>` | |
| pg enum types | `String` | enums not yet modeled |
| table names | `<schema>_<table>` | Serverpod is single-schema; disambiguates `sso_users` vs `elog_roles` |
| FK (single column → parent `id`) | id-side `relation(parent=<table>)` | edges land in `definition.json` |
| composite FK / FK → non-id column | kept as a plain column | 4 cases; no Serverpod equivalent |

## Deliberately dropped (Phase 1)

- Column defaults (other than the `id`) — not needed to visualize structure.
- RLS policies, triggers, functions, views.
- Enum types (rendered as `String` for now).
- Indexes were captured in the extractor model but not emitted into the models.

## Reproduction

```sh
cd serverpod_lens_server
serverpod generate
serverpod create-migration
dart run bin/dump_schema.dart        # writes ../serverpod_lens_flutter/assets/schema_graph.json
cd ../serverpod_lens_flutter
flutter test test/schema_diagram_test.dart   # 122 nodes / 216 edges
dart run tool/export_svg.dart                # writes ../docs/schema_map.svg
```
