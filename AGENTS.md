# Flutter & Serverpod project

## What serverpod_lens is

serverpod_lens is a **schema visualizer for Serverpod**. It reads a Serverpod
project's schema and renders it as an interactive map (tables as nodes, columns
as rows, foreign keys as edges) using [Vyuh Diagram](https://diagram.vyuh.tech).
The goal is a tool good enough for the Serverpod team to adopt. See `docs/PLAN.md`
for the vision, architecture, and roadmap, and `docs/dogfood-elog.md` for the
dogfood dataset.

Current pipeline:

```
server migrations/<v>/definition_project.json
  └─ SchemaExtractor (serverpod_lens_server/lib/src/schema/schema_extractor.dart)
       └─ SchemaGraph  (serverpod_lens_server/lib/src/models/schema/*.spy.yaml)
            └─ SchemaDiagram (serverpod_lens_flutter/lib/schema/schema_diagram.dart)
                 └─ DiagramCanvas (serverpod_lens_flutter/lib/screens/schema_map_screen.dart)
```

- `serverpod_lens_server/bin/dump_schema.dart` writes the graph to
  `serverpod_lens_flutter/assets/schema_graph.json`.
- `serverpod_lens_flutter/tool/export_svg.dart` renders a headless SVG to `docs/`.
- Dogfood: `serverpod_lens_server/lib/src/elog_schema/**` holds **122 Serverpod models**
  recreated from the flutter_elog Postgres schema (read-only source). Do not treat
  those as hand-authored; they mirror elog's tables/columns/FKs.
- Vyuh's automatic graph layout lives in a commercial extension, so
  `SchemaDiagram` implements its own layered layout.

This project is a Flutter app (frontend) backed by a Serverpod server (backend). Always build the app's backend with Serverpod.
Build for multiple users, use Serverpod's built-in authentication, which is already set up in `lib/server.dart`.

The user starts the server and Flutter app with `serverpod start`. There is no need to check if the server is running: make the changes and call the `serverpod` MCP tools as needed. If the server is not running, an informative error message will be received from the MCP server. Then STOP and ask the user to start it. NEVER start the server yourself. The Flutter app is started along with it, or can be launched from the MCP tool `spawn_flutter_app`.

While running, `serverpod start` watches for file changes to run incremental code generation and hot reload both the server and the Flutter app.

Calling `serverpod generate` directly is not needed, but might be useful to troubleshoot when an incremental generation fails.

ALWAYS use the MCP server instead of the command line. Use the MCP server to:

- `create_migration` and `apply_migrations` for database (after you change data models).
- `create_repair_migration` if the database has drifted out of sync with the migrations.
- `tail_server_logs` to read logs from the server.
- `tail_flutter_logs` to read the raw stdout/stderr of the Flutter app.
- `hot_reload` / `hot_restart` to reload or restart the server and the Flutter app. ALWAYS call `hot_restart` after doing changes in the Flutter app that may not work with normal hot reload (which is automatically applied).
- `spawn_flutter_app` to start a Flutter app declared under `serverpod: flutter_apps:` in the server `pubspec.yaml`.
- `get_flutter_app_dtd` (Dart tooling daemon) for connecting to the app through the `dart` MCP.

NEVER edit generated code. The server's `lib/src/generated/` directory and the whole `serverpod_lens_client` package are rewritten by the code generator. Change the `.spy.yaml` models, the endpoints, or `lib/server.dart` instead.

Migrations are a narrow exception: the `migration.sql` of a generated migration MAY be edited by hand when the generated SQL would lose data — to add a data transformation, or to reach a destructive change through non-destructive steps. Never touch the other files in the migration directory, and keep the schema the SQL ends up with identical to `definition.sql` — new databases are created from that file and never run `migration.sql`.

Only when the server cannot be started at all, fall back to the CLI in the server package:

- `serverpod generate` to regenerate the client and the generated server code.
- `serverpod create-migration` after changing a model with a `table` (add `--force` for destructive changes). It only writes the migration; `serverpod start` applies pending migrations when it boots the server.

Tests need no Docker. `config/test.yaml` sets `database.dataPath`, so Serverpod starts and manages the test database (an embedded PostgreSQL) itself, and the project's `docker-compose.yaml` is not used for it. Just run `dart test` in the server package.

Checklist after doing changes, in this order:

- `dart analyze` (CLI)
- `dart format` (CLI)
- `create_migration` and `apply_migrations` (MCP - only if necessary)
- Do `serverpod` MCP `hot_restart` if required (hot reload is done automatically). Will also hot restart Flutter app
- Run tests, if applicable (`dart test` in the server package)
- Check `serverpod` MCP `tail_server_logs` and `tail_flutter_logs` for any issues.

If the user asks you to test the app:

1. Use `get_flutter_app_dtd` (`serverpod` MCP) to get the Flutter app's DTD
2. Pass the DTD to `connect_dart_tooling_daemon` (`dart` MCP) to connect to the app
3. Use `flutter_driver` (`dart` MCP) to navigate through the app

The app is launched from `serverpod_lens_flutter/lib/driver.dart`, which starts the Flutter driver extension with text entry emulation turned off so the app stays usable by hand. To let the driver type, set `enableTextEntryEmulation: true` there and `hot_restart` the app.
