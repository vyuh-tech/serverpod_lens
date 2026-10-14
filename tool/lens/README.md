# Lens local launcher

Open a Serverpod project's schema locally without starting its server, logging in,
or deploying to Cloud. The command reads the current generated `Protocol`, maps
it through `serverpod_lens_schema`, and serves the shared Flutter viewer.
It never reads application records or connects to the project database.

## In this repository

```sh
flutter pub get
cd examples/shop/server
serverpod run lens
```

Both examples declare this supported Serverpod script:

```yaml
serverpod:
  scripts:
    lens: dart run serverpod_lens_cli:serverpod_lens --project .
```

A literal `serverpod lens` command needs upstream CLI integration. Lens uses
[`serverpod run`](https://docs.serverpod.dev/tools/run-scripts) today, without
replacing Serverpod or adding a shell alias that intercepts its commands.

From the repository root you can also run:

```sh
dart run serverpod_lens_cli:serverpod_lens --project examples/shop/server
```

The command prints `http://127.0.0.1:<port>/`. The first run compiles the tooling
viewer using Flutter and your Vyuh registry entitlement. Later launches reuse
it while viewer/package source, dependency lockfiles and the Dart version match
the content stamp. `--rebuild` forces a build, including after Flutter-only SDK changes. `--flutter-bin` chooses the executable.
`--web-dir` supplies an existing **launcher viewer** build, not the authenticated
demo build. `--port 0` chooses a free port. Ctrl+C stops only Lens.

Generate a new Serverpod project before using Lens. After changing models, let
Serverpod regeneration finish and click Refresh. No automatic schema polling is
installed. Every manual refresh rereads the current native target; simultaneous
refreshes share that read. The launcher does not invoke Serverpod generation or startup.

## Safety and distribution

The viewer is bound only to IPv4 loopback. A fixed launch selects one project;
HTTP callers cannot choose files or another project. Cross-origin/rebinding
requests, writes and links escaping the fixed web directory are rejected.
Local viewing intentionally has no login; do not expose it through a public proxy.
The optional Cloud example uses Serverpod authentication separately.

This is an internal MIT workspace tool, not a public product package. Run it from this
checkout today. Standalone registry installation and a bundled/versioned viewer
release remain packaging work; licensed viewer dependencies still prevent a
normal pub.dev viewer release. The package does not install credentials or change
Serverpod's global CLI.
