# Large Serverpod schema example

The retained sample Serverpod project resolves 156 tables, including recreated
backend fixtures and framework/auth tables. It demonstrates full-schema navigation
and the same shared adapter used by the shop example.

```sh
# From the repository root:
flutter pub get
cd examples/large_schema/server
serverpod run lens
```

The local Lens viewer has no login and does not need the application server.

`server/`, `client/` and `flutter/` also form the optional connected Cloud demo.
That workflow uses Serverpod's built-in email/JWT authentication and a project
read scope because it shares schema/source information with other users.
See [connected demo setup](server/README.md). Cloud is not required for local use.

## Update the hosted demo

The connected example replaces the existing `serverpod-lens` Cloud deployment.
Build its Flutter app before deploying from the server directory:

```sh
# From the repository root, after installing workspace dependencies:
cd examples/large_schema/server
serverpod run flutter_build
serverpod cloud deploy
```

The deployment hook writes the Cloud API address into the built app. Serverpod
Cloud packages the server and its schema dependency from the workspace; the
Flutter viewer is served as prebuilt web assets. Authentication belongs to this
shared demo, and the local `serverpod run lens` workflow remains login-free.

Demo: https://serverpod-lens.serverpod.space/

The database fixtures are example code, not part of the reusable Lens packages.
Generated server/client code is relocated intact and remains owned by Serverpod.

The recreated models originate from the earlier external SQL fixture import. The
external source project is never modified by Lens. These examples are provided to
exercise extraction/navigation; real users supply their own Serverpod target.
