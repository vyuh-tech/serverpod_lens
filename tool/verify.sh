#!/usr/bin/env bash
set -euo pipefail
project_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
flutter_bin="${FLUTTER_BIN:-flutter}"
dart_bin="${DART_BIN:-dart}"
cd "$project_root"
"$dart_bin" analyze --fatal-infos
"$dart_bin" format --output=none --set-exit-if-changed serverpod_lens/lib serverpod_lens/test serverpod_lens_schema/lib serverpod_lens_schema/test serverpod_lens_host_flutter/lib serverpod_lens_host_flutter/test serverpod_lens_flutter/lib serverpod_lens_flutter/test serverpod_lens_server/lib/src/schema serverpod_lens_server/lib/src/endpoints serverpod_lens_server/test
for package in serverpod_lens_schema serverpod_lens_server; do
  (cd "$project_root/$package" && "$dart_bin" test)
done
for package in serverpod_lens serverpod_lens_host_flutter serverpod_lens_flutter; do
  (cd "$project_root/$package" && "$flutter_bin" test --no-pub --concurrency=1)
done
