# Security review — 2026-10-14

## Scope and results

Reviewed authored viewer/import, host/auth and backend code, public lockfile
packages, ignored credential files and read-only endpoint boundaries. This is a
source and regression review; it is not a penetration test or a guarantee that
no undiscovered vulnerabilities exist. No external scanner report was supplied.

## Fixed findings

- **Unbounded ZIP expansion:** metadata is checked before inflation; compressed
  input is limited to 20 MiB, relevant expanded entries to 8 MiB each and 32 MiB
  total, and archives to 10,000 entries. Actual decompression writes are bounded
  too, so lying size headers cannot bypass the limit.
- **Unsafe/ambiguous schema archive names:** traversal, absolute/control-character
  paths, duplicates, linked and encrypted schema entries are rejected. No archive
  files are extracted to the filesystem.
- **Unbounded text imports:** JSON is limited to 8 MiB of text; YAML to 1 MiB per
  file and 32 MiB total. The optional import adapter checks bounded input sizes. SQL retains
  its 2-million-character limit and worker timeout; SQL is parsed, never executed.
- **Source URL validation:** the shared relative model-path validator rejects
  traversal and control characters. Repository source opening requires an HTTPS
  base URL without embedded credentials and encodes every path segment.

## Verified boundaries

- Serverpod built-in email authentication and JWT lifecycle; no custom password
  hashing, public scope-grant endpoint or embedded demo password in the app.
- Signed-out schema access is denied; signed-in users need the exact project read
  scope. Arbitrary project IDs and filesystem paths cannot select another target.
- Auth failures remove protected graph/source state. Network failures preserve
  the last valid graph with an explicit error. Sign-out revokes the refresh token.
- New registration grants no schema scope. Operator grants remain separate.
- Source indexing stays under the host's authored model directory, skips symlinks
  and limits file size. Delivery filters paths/sources to the authorized target.
- View preferences are scoped by account and contain view geometry, not credentials
  or model source bodies. Native schema editing remains blocked.
- Local password configuration is ignored by Git. No recordings or debug
  artifacts were added to the repo.

## Dependencies

`python tool/audit_dependencies.py` queries the locked public versions using the
[OSV batch API](https://google.github.io/osv.dev/post-v1-querybatch/).
The latest workspace scan queried 268 locked public package versions and returned no advisories. Private Vyuh packages, SDK
components, OS/browser packages and libraries outside these lockfiles are not
covered. A zero-result advisory lookup does not prove absence of vulnerabilities.

## Remaining limits

Cloud email delivery, production headers/TLS configuration and production behavior
of this release await an authorized deployment. Browser/device coverage beyond
local Chromium and widget checks remains open. The demo account is deliberately
shared and read-only; it is not a personal production account. Backend target
integration is tested against Serverpod 4.0.4; newer contracts need the same tests.

## Local CLI review

The local viewer has no authentication by design and binds only to IPv4 loopback.
HTTP clients cannot select another project or a filesystem path. Tests reject
cross-origin requests, forged Host headers, write methods and static symlinks
outside the web root. The CLI reads generated metadata without starting Serverpod
or connecting to its database. Source indexing prunes generated folders, recognizes
Serverpod's three model filename forms and never follows link entries. Only an
operator-selected project is compiled; the CLI is not a remote project executor.
The optional Cloud demonstration retains Serverpod login and project scopes.

## Follow-up architecture audit

The inline database credential was removed from the tracked VS Code task, and IDE
launch paths were corrected. Older Git commits still contain the removed value;
these changes do not replace a credential in any running/shared database. That
replacement remains an operator task if the credential is still in use.

Snapshot validation/request lifetime is now shared. The local native-target read
is fresh on every manual refresh, preventing the reproduced cache failures.
Diagnostics retain generic HTTP errors and report sanitized local failure details.
The optional SQL parser is excluded from the native viewer's clean release output.
See the [architecture audit](PLAN.md#architecture-audit--2026-10-14).
