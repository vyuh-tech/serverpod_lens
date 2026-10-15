import 'dart:convert';

import 'package:yaml/yaml.dart';

/// Optional authored labels and declared object structures, never a DB compiler.
/// Native target columns, types, nullability and constraints remain authoritative.
final class SchemaModelCatalog {
  SchemaModelCatalog.fromSources(Iterable<String> sources) {
    final ambiguous = <String>{};
    for (final source in sources) {
      if (source.length > 256 * 1024) continue;
      try {
        final decoded = loadYaml(source);
        if (decoded is! YamlMap) continue;
        final model = jsonDecode(jsonEncode(decoded)) as Map<String, dynamic>;
        final name = model['class'] ?? model['enum'] ?? model['exception'];
        if (name is! String || ambiguous.contains(name)) continue;
        if (_models.containsKey(name)) {
          _models.remove(name);
          ambiguous.add(name);
        } else {
          _models[name] = model;
        }
      } catch (_) {
        // Partial/unsupported authored metadata must not block a valid target.
      }
    }
  }

  static List<String> enumValues(Object? values) => values is List
      ? [
          for (final value in values)
            if (value is String)
              value
            else if (value is Map &&
                value.length == 1 &&
                value.keys.single is String)
              value.keys.single as String,
        ]
      : const [];

  final _models = <String, Map<String, dynamic>>{};

  /// External namespaces are not guessed from local names.
  static Set<String> references(String type) => {
    for (final match in RegExp(
      r'(?:[A-Za-z_]\w*:)*[A-Za-z_]\w*',
    ).allMatches(type))
      if (!match[0]!.contains(':') || match[0]!.startsWith('protocol:'))
        match[0]!.replaceFirst(RegExp(r'^protocol:'), ''),
  };

  Map<String, String> _fields(String name, [Set<String> seen = const {}]) {
    if (seen.contains(name)) return {};
    final model = _models[name];
    if (model == null) return {};
    final parent = model['extends'];
    return {
      if (parent is String) ..._fields(parent, {...seen, name}),
      if (model['fields'] case final Map fields)
        for (final entry in fields.entries)
          if (entry.key is String && entry.value is String)
            entry.key as String: entry.value as String,
    };
  }

  /// Only native columns and their reachable model declarations are enriched.
  Map<String, dynamic> enrichTable(
    Map<String, dynamic> native, {
    String? source,
  }) {
    final name = native['dartName'];
    final model = _models[name];
    if (name is! String || model == null || source == null) return native;
    // Modules may reuse local names. Require this table's actual authored owner.
    try {
      final own = loadYaml(source);
      if (own is! YamlMap || own['class'] != name || own['table'] is! String) {
        return native;
      }
      final tableName = own['table'] as String;
      final authoredIdentity = tableName.contains('.')
          ? tableName
          : "${own['schema'] ?? 'public'}.$tableName";
      final nativeName = native['name'] as String;
      final nativeIdentity = nativeName.contains('.')
          ? nativeName
          : "${native['schema'] ?? 'public'}.$nativeName";
      if (authoredIdentity != nativeIdentity) return native;
    } catch (_) {
      return native;
    }
    final aliases = <String, String>{};
    final scopes = <String, String>{};
    for (final entry in _fields(name).entries) {
      final parts = splitDeclaration(entry.value);
      if (parts.skip(1).contains('!persist')) continue;
      final alias = parts
          .skip(1)
          .map((part) => RegExp(r'^column\s*=\s*(\w+)$').firstMatch(part))
          .whereType<RegExpMatch>()
          .firstOrNull;
      final scope = parts
          .skip(1)
          .map((part) => RegExp(r'^scope\s*=\s*(\w+)$').firstMatch(part))
          .whereType<RegExpMatch>()
          .firstOrNull;
      if (scope != null) scopes[alias?[1] ?? entry.key] = scope[1]!;
      if (alias == null) continue;
      final relation = parts
          .skip(1)
          .where((part) => part.startsWith('relation'))
          .firstOrNull;
      // Symbolic object relations are not persisted columns. Serverpod only
      // permits their aliases on the actual (possibly explicitly named) ID field.
      if (relation != null && !RegExp(r'\bparent\s*=').hasMatch(relation)) {
        continue;
      }
      aliases[alias[1]!] = entry.key;
    }
    final reachable = <String, dynamic>{};
    final pending = <String>[];
    final fields = <String, dynamic>{};
    for (final value in native['columns'] as List? ?? const []) {
      final column = Map<String, dynamic>.from(value as Map);
      final columnName = column['name'] as String;
      if (column['fieldName'] == null && aliases.containsKey(columnName)) {
        fields[columnName] = {'fieldName': aliases[columnName]};
      }
      if (scopes.containsKey(columnName)) {
        fields[columnName] = {
          ...?fields[columnName] as Map<String, dynamic>?,
          'scope': scopes[columnName],
        };
      }
      pending.addAll(references(column['dartType'] as String? ?? ''));
    }
    while (pending.isNotEmpty) {
      final type = pending.removeLast();
      final declaration = _models[type];
      if (declaration == null || reachable.containsKey(type)) continue;
      if (declaration.containsKey('enum')) {
        reachable[type] = {
          'kind': 'enum',
          'serialization': declaration['serialized'] ?? 'byName',
          'values': declaration['values'] is List
              ? jsonDecode(jsonEncode(declaration['values']))
              : [],
          if (declaration['properties'] != null)
            'properties': jsonDecode(jsonEncode(declaration['properties'])),
        };
      } else {
        final structure = {
          for (final entry in _fields(type).entries)
            entry.key: splitDeclaration(entry.value).first,
        };
        final variants = [
          for (final entry in _models.entries)
            if (entry.value['extends'] == type) entry.key,
        ]..sort();
        reachable[type] = {
          'kind': 'class',
          'fields': structure,
          if (declaration['sealed'] == true) 'sealed': true,
          if (declaration['extends'] is String)
            'extends': declaration['extends'],
          if (variants.isNotEmpty) 'variants': variants,
        };
        pending.addAll(variants);
        if (declaration['extends'] case final String parent) {
          pending.add(parent);
        }
        for (final field in structure.values) {
          pending.addAll(references(field));
        }
      }
    }
    final metadata = {
      if (model['extends'] != null) 'extends': model['extends'],
      if (fields.isNotEmpty) 'fields': fields,
      if (reachable.isNotEmpty) 'models': reachable,
    };
    return metadata.isEmpty ? native : {...native, 'lensModel': metadata};
  }
}

/// Split field options without splitting generic, record or quoted values.
List<String> splitDeclaration(String source) {
  final parts = <String>[];
  var depth = 0;
  var start = 0;
  String? quote;
  var escaped = false;
  for (var i = 0; i < source.length; i++) {
    final char = source[i];
    if (quote != null) {
      if (escaped) {
        escaped = false;
      } else if (char == r'\') {
        escaped = true;
      } else if (char == quote) {
        quote = null;
      }
      continue;
    }
    if (char == '"' || char == "'") {
      quote = char;
    } else if ('<([{'.contains(char)) {
      depth++;
    } else if ('>)]}'.contains(char)) {
      depth--;
    } else if (char == ',' && depth == 0) {
      parts.add(source.substring(start, i).trim());
      start = i + 1;
    }
  }
  parts.add(source.substring(start).trim());
  return parts;
}
