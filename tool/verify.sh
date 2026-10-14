#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
flutter_bin="${FLUTTER_BIN:-flutter}"
dart_bin="${DART_BIN:-dart}"
cd "$project_root"
"$dart_bin" analyze --fatal-infos
"$dart_bin" format --output=none --set-exit-if-changed packages/serverpod_lens/lib packages/serverpod_lens/test packages/serverpod_lens/tool/benchmark.dart packages/serverpod_lens_schema/lib packages/serverpod_lens_schema/test packages/serverpod_lens_schema/example packages/serverpod_lens_backend/lib packages/serverpod_lens_backend/test packages/serverpod_lens_cli/lib packages/serverpod_lens_cli/bin packages/serverpod_lens_cli/test packages/serverpod_lens_cli/viewer/lib examples/large_schema/flutter/lib examples/large_schema/flutter/test examples/large_schema/server/lib/src/schema examples/large_schema/server/lib/src/endpoints examples/large_schema/server/test examples/shop/server/bin examples/shop/server/lib/server.dart examples/shop/server/test/shop_lens_test.dart

for package in packages/serverpod_lens_schema packages/serverpod_lens_backend packages/serverpod_lens_cli examples/large_schema/server examples/shop/server; do
  (cd "$project_root/$package" && "$dart_bin" test)
done
for package in packages/serverpod_lens examples/large_schema/flutter; do
  (cd "$project_root/$package" && "$flutter_bin" test --no-pub --concurrency=1)
done
