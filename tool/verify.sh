#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
flutter_bin="${FLUTTER_BIN:-flutter}"
dart_bin="${DART_BIN:-dart}"
cd "$project_root"
"$dart_bin" analyze --fatal-infos
"$dart_bin" format --output=none --set-exit-if-changed tool/check_publication.dart tool/publication_policy.dart tool/build_cloud_release.dart tool/cloud_release.dart tool/test examples/large_schema/server/tool/check_release_build.dart packages/serverpod_lens/lib packages/serverpod_lens/test packages/serverpod_lens/tool/benchmark.dart packages/serverpod_lens_schema/lib packages/serverpod_lens_schema/test packages/serverpod_lens_schema/example tool/lens/lib tool/lens/bin tool/lens/test tool/lens/viewer/lib tool/lens/imports/lib tool/lens/imports/test examples/large_schema/flutter/lib examples/large_schema/flutter/test examples/large_schema/server/lib/src/schema examples/large_schema/server/lib/src/endpoints examples/large_schema/server/test examples/shop/server/bin examples/shop/server/lib/server.dart examples/shop/server/test/shop_lens_test.dart examples/shop/server/test/feature_matrix_test.dart

"$dart_bin" test tool/test

for package in packages/serverpod_lens_schema tool/lens examples/large_schema/server examples/shop/server; do
  (cd "$project_root/$package" && "$dart_bin" test --reporter expanded)
done
for package in packages/serverpod_lens tool/lens/imports examples/large_schema/flutter; do
  (cd "$project_root/$package" && "$flutter_bin" test --no-pub --concurrency=1)
done
