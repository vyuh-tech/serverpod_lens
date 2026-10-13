# Connected host deployment and judge access

The connected Flutter app is separate from the offline import demo. Deploy the
Serverpod backend and its compiled host frontend together; the protected schema
endpoint and built-in email/JWT authentication are required for this flow.

**Serverpod Cloud is optional.** The supplied hackathon rules allow a website,
functioning demo or test build with working judge access. Another Serverpod host
or a self-contained runnable test build can satisfy that requirement. No payment
method is needed merely to meet the rules. The Cloud steps below apply only if
the entrant chooses that hosting option.

## Current status

13 October 2026: deployed on Serverpod Cloud in Europe with managed PostgreSQL.
Cloud reports 1/1 instances ready. Source revision: `a167107`; deployment:
`94a6c66c-0255-4d5d-aade-f3546ed98322`.

- Web app: https://serverpod-lens.serverpod.space/
- API: https://serverpod-lens.api.serverpod.space/
- Demo username: `test`; supply the password separately.

The host accepts the demo username `test` as an alias for the operator-provisioned
identity `test@serverpod-lens.invalid`. It still authenticates through Serverpod's
built-in email/password provider. A Cloud secret named `LENS_DEMO_PASSWORD`
enables account creation at startup with only the project's schema-read scope.
The password is not in source or the Flutter build. Existing accounts are neither
reset nor regranted on restart. The reserved email is a demo identity, not a
mailbox; normal email signup and password reset remain available for real users.
The bootstrap secret remains configured for this demonstration deployment.
Startup preserves the existing identity. Deliver the demo password separately to judges.

## Local connected app

From `serverpod_lens_server`, run `serverpod start`. The companion host app uses
port 8092; API 8080 and packaged web app 8082. New accounts are denied schema access
until an operator grants `schema:read:serverpod_lens`:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

This command uses the configured database credentials. Run it only as the project
owner. It preserves existing scopes. Sign out and back in afterward to get a JWT
with the new scope. There is no client-accessible grant endpoint. Two independent
local test accounts were used to verify authorized and denied access; their
credentials are not in the repository.

## Cloud deployment

Once the Cloud project exists, use its actual ID from the server package:

```sh
serverpod cloud project link <project-id>
serverpod run flutter_build
serverpod cloud deploy --wet-run --output /tmp/lens-deployment.zip
# Inspect the archive, then commit the source revision to be submitted.
serverpod cloud deploy
serverpod cloud status
```

Build the Flutter app locally with the required Vyuh registry entitlement. Cloud
uploads its static output plus the server and pure Dart schema package. Inspect
`serverpod_lens_server/web/app` inside the archive. Do not upload development
passwords, pub registry credentials, embedded databases, or test account secrets.
The deployment CLI creates `.scloudignore` and supplies production configuration.
The `scloud.yaml` pre-deploy hook writes the public API address with
`tool/write_flutter_config.dart` to `web/app/assets/assets/config.json`. This is
where Flutter loads the asset key `assets/config.json`. It runs after your web
build and before uploading. Update the hook URL if deploying another project.
The file contains only the public API address. Never package a localhost address
in a production build. `RuntimeConfigRoute` also exposes configuration at
`/assets/config.json` for direct consumers; the Flutter demo uses its packaged asset.

Cloud currently provisions fresh platform-managed values for these authentication
passwords; verify their status with `serverpod cloud password list`. Do not copy
development values or unnecessarily override the managed production secrets:

- `jwtHmacSha512PrivateKey`
- `jwtRefreshTokenHashPepper`
- `emailSecretHashPepper`

Check `serverpod cloud password set --help` for the installed CLI, and avoid
putting secrets into saved shell history. Database credentials and Cloud email
configuration are managed by Cloud. Use the built-in signup flow for an owner/
judge account, then use an authenticated operator database connection with the
grant command configured for that environment. This production grant and email
flow still need verification after account setup.

## Judge walkthrough

Before submitting, replace placeholders in BuilderBase with the real tested web
URL and separately supplied judge credentials. Do not publish an owner password.

1. Open the deployed web URL in a clean browser. Select **Sign in** if the form
   initially shows sign-up, and use the supplied read-only judge account.
2. Confirm **Current target** and the host schema map appear. The fixture currently
   has 156 unique tables, including project, Serverpod and auth modules.
3. Search a table or column, select a table and follow incoming/outgoing relations.
4. Open settings; enable relationship labels and toggle snapping guides.
5. Refresh the host schema. An unchanged revision keeps the current map intact.
6. Sign out. The map must disappear. A separate ungranted account must show
   **Access not enabled**, never the protected graph.

Verify refresh after a page reload, stale-network retry, desktop and phone widths,
console errors and correct HTTPS API configuration at the actual deployed URL.
Keep the tested build available through 20 October 2026 at 17:00 CEST / 20:30 IST.
Pin the submitted commit and avoid replacing that build during judging.

The source is the generated current target, not live records or database drift.
A changed target resets exploration context; preferences survive. Email delivery,
Cloud rollout and the final judge login are not established by a local test.
