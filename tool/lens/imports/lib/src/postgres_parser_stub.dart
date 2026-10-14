Future<Map<String, dynamic>> parsePostgres(String sql) async =>
    throw UnsupportedError(
      'Built-in SQL parsing requires Flutter web. A native host can supply a PostgreSQL AST to PostgresSchemaImporter.fromAst.',
    );
