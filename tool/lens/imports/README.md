# Optional schema imports

Adapters for ZIP archives, YAML models, and PostgreSQL SQL/AST imports. This
workspace package is separate from the local viewer's generated-target reader.

The SQL parser's worker/WASM assets and license notices live here. YAML imports
infer a partial schema; use Serverpod's resolved definitions for the generated
database schema.

```sh
# From this folder:
flutter test
# Optional parser source tests (dependencies use the pinned npm lockfile):
cd tool
npm ci
npm test
```

This package is internal workspace tooling.
