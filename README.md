# Serverpod Lens

A read-only schema explorer for Serverpod. Find tables and columns, follow foreign
keys, and focus on the relationships that matter in a large project.

Lens works alongside Serverpod infrastructure: the backend supplies its resolved
schema and enforces access; the Flutter host manages sessions and refresh; the
reusable viewer displays a plain Dart graph using Vyuh Diagram.

![Serverpod Lens schema explorer](docs/schema-map.png)

## Architecture

The diagram shows schema data flowing through the connected host and the optional
offline demo. The backend and offline import adapters use the same definition
reader; generated transport models stay outside the viewer.

```mermaid
flowchart TB
    subgraph backend["Serverpod backend · serverpod_lens_server"]
        direction LR
        target["Generated current target<br/>Project + framework + auth tables"]
        source["HostSchemaSource<br/>Normalize tables · hash revision"]
        endpoint["schema.snapshot<br/>Built-in auth + project read scope"]
        target --> source --> endpoint
    end

    subgraph shared["Shared contract · serverpod_lens_schema"]
        reader["SchemaDefinitionReader<br/>Resolved definition → graph data"]
        graph["SchemaGraph<br/>Plain Dart tables, columns and foreign keys"]
    end

    subgraph host["Connected Flutter host · serverpod_lens_host_flutter"]
        client["Generated Serverpod client<br/>Authenticated snapshot transport"]
        connection["ConnectedSchemaController<br/>Refresh · revision · stale / denied state"]
        client --> connection
    end

    subgraph offline["Optional offline demo · serverpod_lens_flutter"]
        inputs["Migration JSON / ZIP · YAML · PostgreSQL SQL"]
    end

    subgraph viewer["Reusable Flutter viewer · serverpod_lens"]
        imports["Import adapters<br/>Parsing + partial-import diagnostics"]
        queries["SchemaCatalog + SchemaContext<br/>Search · filters · relationships · groups"]
        screen["SchemaViewer<br/>Exploration UI + view preferences"]
        mapping["SchemaDiagram<br/>Graph → native tables, ports and connectors"]
        canvas["Vyuh Diagram<br/>Rendering · layout · pan / zoom · minimap"]
        queries --> screen --> mapping --> canvas
    end

    source -->|"resolved definition"| reader
    reader -->|"backend DTO bridge"| endpoint
    endpoint -->|"snapshot or unchanged revision"| client
    connection -->|"DTO → plain model"| graph
    inputs --> imports
    imports -->|"migration definition"| reader
    reader -->|"offline model bridge"| graph
    imports -->|"YAML / SQL graph"| graph
    graph --> queries

    classDef server fill:#e8f0fe,stroke:#4285f4,color:#15345b
    classDef model fill:#e8f5e9,stroke:#43a047,color:#173d20
    classDef flutter fill:#e0f7fa,stroke:#0097a7,color:#004d55
    classDef demo fill:#fff3e0,stroke:#fb8c00,color:#663c00
    classDef diagram fill:#f3e5f5,stroke:#8e24aa,color:#49205a
    class target,source,endpoint server
    class reader,graph model
    class client,connection,queries,screen flutter
    class inputs,imports demo
    class mapping,canvas diagram
```

## Responsibilities

| Package | Owns |
| --- | --- |
| `serverpod_lens_schema` | Plain Dart graph model and shared Serverpod definition reader; no Flutter or Serverpod runtime dependency |
| `serverpod_lens` | Import adapters, schema queries, diagram mapping and `SchemaViewer`; no generated client or backend connection |
| `serverpod_lens_server` | Built-in authentication, project authorization, target extraction and revision-based schema delivery |
| `serverpod_lens_client` | Generated transport models and endpoint client |
| `serverpod_lens_host_flutter` | Sign-in, client initialization, refresh and connection state; converts transport data to the plain graph |
| `serverpod_lens_flutter` | Offline file picking, SQL input, bundled sample and app theme |

Vyuh supplies native table rendering, connectors, layout and canvas gestures.
Lens maps schema meaning onto those primitives. Moving tables changes the view;
it never changes models or the database.

The separation supports both connected and offline hosts today. Further cleanup
would make the fixture's project ID/read scope configurable, separate optional
import dependencies from the viewer, and move diagram decoration out of the
`SchemaContext` traversal file.

## Embed the viewer

Pass a graph from your host, or convert a complete Serverpod migration definition:

```dart
import 'package:serverpod_lens/serverpod_lens.dart';

final graph = SchemaExtractor.fromDefinitionJson(
  resolvedDefinitionJson,
  source: 'My Serverpod project',
);

SchemaViewer(graph: graph)
```

For a connected host, obtain the target through its protected Serverpod endpoint
and pass the decoded graph to the same widget. The included endpoint exposes its
own project's generated target. Connecting another project requires an adapter
in that project's backend; importing a ZIP opens an offline snapshot.

An unchanged refresh keeps the graph and exploration state. A changed graph
rebuilds the map and resets search, selection, groups and camera while retaining
view preferences. Temporary network failures show a labelled stale snapshot;
access denial and sign-out remove protected content.

## Run with Serverpod

Requires Flutter 3.47+, Dart 3.13+ and access to Vyuh's commercial extensions.
Configure the publisher-issued registry token, then install workspace dependencies:

```sh
dart pub token add https://pub.vyuh.tech
flutter pub get
cd serverpod_lens_server
serverpod start
```

Serverpod manages the development database, code generation and connected Flutter
app. Open `http://localhost:8092` and create an account using built-in email auth.
Development verification codes appear in the server logs. New accounts need an
operator grant before viewing the schema. From the server package, the owner runs:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

Sign out and back in to receive the project scope. For the independent offline
demo, run `flutter run -d chrome` from `serverpod_lens_flutter` instead.

## Current scope

Search tables and columns, filter database schemas, follow incoming/outgoing
relationships, expand to two hops and create session groups. Native layout,
relationship labels, snapping, minimap and light/dark modes are available.
Offline imports support migration JSON/ZIP, partial YAML inference and PostgreSQL
SQL parsed locally on web. Import diagnostics disclose incomplete coverage.

Connected delivery currently targets Serverpod 4.0.4 and refreshes manually.
The source is the generated schema target, not the live database catalog. Table
details, migration comparison and upstream Serverpod tooling integration remain
planned. The workspace packages are not yet published.

## Further reading

- [Architecture and integration plan](docs/PLAN.md)
- [Feature plan and remaining work](docs/FEATURE_PLAN.md) · [Roadmap](docs/ROADMAP.md)
- [Deployment and judge access](docs/DEPLOYMENT.md)
- [Verification results](docs/VERIFICATION.md)
- [Sample dataset provenance](docs/elog-schema.md)

Vyuh extensions require their own license/entitlement. PostgreSQL parser notices
ship in `serverpod_lens/assets/sql/`. No project license has been declared.
