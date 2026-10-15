# Large-schema example

A fictional university and campus-management project with 156 resolved database
tables and 122 authored models. Students, courses, enrolments, exams, library
loans, housing, research, and billing form one connected example.

Models live under `server/lib/src/campus/`. Folder names describe subject areas;
Serverpod's generated database target remains the authority for database schemas.
The viewer's separate test fixture uses nine database schemas to exercise
navigation and relationships across schema boundaries.

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

From the repository root, with registry access configured:

```sh
dart run tool/build_cloud_release.dart
```

The tool builds Flutter using the published Lens **0.1.0** releases from
`https://pub.vyuh.tech`. It checks their archive hashes and bundles the downloaded
schema package in the backend workspace because
[Cloud does not support custom package registries](https://docs.serverpod.dev/cloud/reference/private-dependencies).
Local Lens package source and registry credentials are excluded from the build.

Change to the prepared server directory printed by the tool, then run:

```sh
serverpod cloud deploy --wet-run
serverpod cloud deploy
```

Deployment hooks verify the bundled schema, package authored models under
`assets/lens-models`, and configure the Cloud API address. The build's package
versions and archive hashes are recorded in `/lens-build.json`. Deployments to
the existing `serverpod-lens` project retain the demo URL. Remove the temporary
build directory when the deployment is complete.

The demo account is provisioned when `LENS_DEMO_PASSWORD` is configured on the
server. Existing accounts are left unchanged on restart.

## Tests

From `server/`, run `dart test`. Tests use managed embedded PostgreSQL.
From `flutter/`, run `flutter test`.

The fixture models exercise schema extraction and navigation. Generated server
and client files belong to this example and are maintained by Serverpod.
