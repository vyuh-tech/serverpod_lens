# Hosted demo

## Live large-schema example

- App: https://serverpod-lens.serverpod.space/
- API: https://serverpod-lens.api.serverpod.space/
- Deployed source: `44fd46c`.
- Demo username: `test`; its password is supplied with the submission.

The latest build replaces the earlier deployment in the existing `serverpod-lens`
Cloud project. Deploying subsequent builds to that project keeps the same URL.
Serverpod Cloud hosts both the server and compiled Flutter app.

## Deploy an update

Install workspace dependencies with the entitled Vyuh registry account, then:

```sh
cd examples/large_schema/server
serverpod run flutter_build
serverpod cloud deploy
```

The pre-deploy hooks rebuild the authored-model payload and write the Cloud API
address into the Flutter assets. Cloud includes only the server and its shared
schema dependency from the workspace. Its compiled runtime retains sources in
`assets/lens-models`; the existing reader preserves their original `lib/` paths.

Inspect an upload without changing the hosted application:

```sh
serverpod cloud deploy --wet-run --output /tmp/lens-deployment.zip
```

Local database files, passwords and registry credentials must stay out of uploads.
Cloud supplies its own runtime configuration; keep its existing signing and
password-hashing secrets when updating the app.

## Access and checks

The shared demo uses Serverpod email/JWT authentication and a project read scope.
Creating an account does not grant schema access. The demo-account provisioner
only runs when `LENS_DEMO_PASSWORD` is configured; it never resets an existing
password or regrants access.

The deployed example is verified for login, 156-table snapshots, schema navigation,
Fields, Relationships and original model Source. See [verification](VERIFICATION.md).
Production signup email delivery is outside this pass. The repository is private;
reviewers need repository access for GitHub source links.

Cloud is only for the shared demonstration. Local `serverpod run lens` needs no
login, database, running application server or Cloud account.
