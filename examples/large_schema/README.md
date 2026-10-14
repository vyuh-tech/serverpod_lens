# Large-schema example

A Serverpod project with 156 resolved database tables and 122 authored model
sources. It supplies the local Lens viewer and the connected Cloud demo.

## Local schema viewer

From the repository root, after configuring Vyuh registry access:

```sh
flutter pub get
cd examples/large_schema/server
serverpod run lens
```

Open the printed loopback URL. This command reads the generated schema without
starting the application server or connecting to its database.

## Connected application

`server/`, `client/`, and `flutter/` form the authenticated application.
From `server/`, run:

```sh
serverpod start
```

Serverpod manages the development database, generation, and Flutter app.
Open **http://localhost:8092**.

The application uses built-in email/JWT authentication and the
`schema:read:serverpod_lens` scope. New accounts need an operator to grant access:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

Sign out and back in after granting the scope. Development email verification
codes appear in server logs.

## Cloud demo

[Open the hosted application](https://serverpod-lens.serverpod.space/).
Username: `test`. Password: `test123!`.

Build and deploy from `server/`:

```sh
serverpod run flutter_build
serverpod cloud deploy
```

The deployment hooks package authored models under `assets/lens-models` and
configure the web build's Cloud API address. Deployments to the existing
`serverpod-lens` Cloud project retain the demo URL.

The demo account is provisioned when `LENS_DEMO_PASSWORD` is configured on the
server. Existing accounts are left unchanged on restart.

## Tests

From `server/`, run `dart test`. Tests use managed embedded PostgreSQL.
From `flutter/`, run `flutter test`.

The fixture models exercise schema extraction and navigation. Generated server
and client files belong to this example and are maintained by Serverpod.
