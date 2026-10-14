import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// Host-scoped persistence for view state; schema data and credentials stay out.
abstract interface class SchemaViewStore {
  Future<Map<String, dynamic>?> read(String key);
  Future<void> write(String key, Map<String, dynamic> value);
}

final class PreferencesSchemaViewStore implements SchemaViewStore {
  const PreferencesSchemaViewStore();
  @override
  Future<Map<String, dynamic>?> read(String key) async {
    final preferences = await SharedPreferences.getInstance();
    final encoded = preferences.getString('lens.view.v1/$key');
    if (encoded == null) return null;
    final value = jsonDecode(encoded);
    return value is Map<String, dynamic> ? value : null;
  }

  @override
  Future<void> write(String key, Map<String, dynamic> value) async {
    final encoded = jsonEncode(value);
    final preferences = await SharedPreferences.getInstance();
    if (!await preferences.setString('lens.view.v1/$key', encoded)) {
      throw StateError('View storage unavailable');
    }
  }
}

final class MemorySchemaViewStore implements SchemaViewStore {
  final _values = <String, String>{};
  @override
  Future<Map<String, dynamic>?> read(String key) async => _values[key] == null
      ? null
      : jsonDecode(_values[key]!) as Map<String, dynamic>;
  @override
  Future<void> write(String key, Map<String, dynamic> value) async {
    _values[key] = jsonEncode(value);
  }
}
