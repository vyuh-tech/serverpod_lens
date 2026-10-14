# Optional schema imports

Internal adapters and regression tests for uploaded ZIP/YAML models and PostgreSQL
SQL/AST imports. Native Lens uses the configured project's generated Serverpod
target; its browser host does not import this tooling package.

The SQL parser's worker/WASM assets and license notices live here, so embedding
the core viewer does not bundle them. YAML inference is explicitly partial and
is never the authoritative native Serverpod compiler.

```sh
# From this folder:
flutter test
# Optional parser source tests (dependencies use the pinned npm lockfile):
cd tool
npm ci
npm test
```

This workspace module is unpublished and has no independent release planned.
