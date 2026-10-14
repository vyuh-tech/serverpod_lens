# Optional Cloud demo and judge access

## Current hosted demo

- App: https://serverpod-lens.serverpod.space/
- API: https://serverpod-lens.api.serverpod.space/
- Deployed source: `ef75cb9` (the earlier UI release).
- Judge username: `test`; supply its password separately.

The new release is local and awaits explicit deployment authorization. Serverpod
Cloud hosts both the backend and compiled Flutter frontend; Cloudflare is not
required.

## Development and access

Run `serverpod start` from `examples/large_schema/server` for the optional connected demo. The connected app uses
`http://localhost:8092`, the API uses 8080, and the packaged web app uses 8082.
Built-in email/JWT authentication manages registration, login and password reset.
Development verification codes appear in server logs.

New accounts require an operator grant. From the server package:

```sh
dart run bin/grant_schema_access.dart <account-uuid>
```

Sign out and back in afterward. The command preserves existing scopes; there is
no public grant endpoint. The demo account is provisioned only when the operator
sets `LENS_DEMO_PASSWORD`. Startup never resets an existing password or regrants
access. Keep all credentials out of source, videos and deployment archives.

## Release preparation

1. Run `tool/verify.sh` from the workspace root.
2. Build the connected frontend using the entitled Vyuh registry account and the
   server's `flutter_build` script.
3. Inspect the Cloud upload archive and confirm it includes `web/app` and the pure
   Dart schema and backend packages, with no local database, password files or registry tokens.
4. The configured `scloud.yaml` pre-deploy hook writes the public API URL through
   `tool/write_flutter_config.dart` into `web/app/assets/assets/config.json`.
5. Deploy only after authorization, then check app and API at the public URLs.

Keep Cloud-managed JWT/password hash secrets; do not replace them with development
values. Cloud supplies the managed database and email configuration. Production
email delivery and operator grants need verification in that environment.

## Judge walkthrough after deployment

Sign in with the read-only judge account. Expand a schema and choose a table;
follow its connections, inspect fields/indexes/source, and open All schemas to
navigate the complete map. Check Settings and manual Refresh. Sign out and verify
an ungranted account cannot see the schema. Check desktop and phone layouts and
browser errors at the actual hosted URL.

Record the public demo, pin the submitted source revision and supply judge access
with the final submission. Keep the tested build available during judging.

Local Lens uses `serverpod run lens` and has no authentication or Cloud dependency.
The relocated Docker build context must include its shared Dart packages; do not
upload the entire Flutter workspace or local CLI build caches.
