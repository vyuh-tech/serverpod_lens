import 'package:flutter_test/flutter_test.dart';

import 'support/connection_checks.dart';

void main() {
  for (final entry in connectionChecks.entries) {
    test(entry.key, entry.value);
  }
}
