#!/usr/bin/env bash
set -euo pipefail

# Linux-only socket-free runner; the regular tests remain available via Flutter.
lens_flutter_sdk="${1:?Usage: bash packages/serverpod_lens/tool/run_connection_hardening.sh /path/to/flutter}"
lens_flutter_sdk="$(realpath "$lens_flutter_sdk")"
cd "$(dirname "$0")/../../.."
lens_checks_temp="$(mktemp -d /tmp/lens-connection-checks.XXXXXX)"
trap 'rm -rf "$lens_checks_temp"' EXIT

if ! "$lens_flutter_sdk/bin/cache/dart-sdk/bin/dartaotruntime" \
  "$lens_flutter_sdk/bin/cache/artifacts/engine/linux-x64/frontend_server_aot.dart.snapshot" \
  --sdk-root "$lens_flutter_sdk/bin/cache/artifacts/engine/common/flutter_patched_sdk/" \
  --target flutter --packages .dart_tool/package_config.json \
  --output-dill "$lens_checks_temp/checks.dill" \
  packages/serverpod_lens/tool/check_connection_hardening.dart \
  > "$lens_checks_temp/compile.log" 2>&1; then
  cat "$lens_checks_temp/compile.log"
  exit 1
fi

"$lens_flutter_sdk/bin/cache/artifacts/engine/linux-x64/flutter_tester" \
  --disable-vm-service --non-interactive "$lens_checks_temp/checks.dill"
