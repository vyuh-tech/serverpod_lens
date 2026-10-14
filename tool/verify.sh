#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
flutter_bin="${FLUTTER_BIN:-flutter}"
dart_bin="${DART_BIN:-dart}"
cd "$project_root"
"$dart_bin" analyze --fatal-infos
"$dart_bin" format --output=none --set-exit-if-changed serverpod_lens/lib serverpod_lens/test serverpod_lens/tool/benchmark.dart serverpod_lens_schema/lib serverpod_lens_schema/test serverpod_lens_schema/example serverpod_lens_backend/lib serverpod_lens_backend/test serverpod_lens_cli/lib serverpod_lens_cli/bin serverpod_lens_cli/test serverpod_lens_cli/viewer/lib examples/large_schema/flutter/lib examples/large_schema/flutter/test examples/large_schema/server/lib/src/schema examples/large_schema/server/lib/src/endpoints examples/large_schema/server/test examples/shop/server/bin examples/shop/server/lib/server.dart examples/shop/server/test/shop_lens_test.dart

for package in serverpod_lens_schema serverpod_lens_backend serverpod_lens_cli examples/large_schema/server examples/shop/server; do
  (cd "$project_root/$package" && "$dart_bin" test)
done
for package in serverpod_lens examples/large_schema/flutter; do
  (cd "$project_root/$package" && "$flutter_bin" test --no-pub --concurrency=1)
done
