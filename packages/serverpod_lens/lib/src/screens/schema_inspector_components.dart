import 'dart:convert';

import 'package:flutter/material.dart';

class SchemaDetailBadge extends StatelessWidget {
  const SchemaDetailBadge(this.text, {super.key, this.keyField = false});
  final String text;
  final bool keyField;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: keyField
            ? colors.secondaryContainer
            : colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: keyField
              ? colors.onSecondaryContainer
              : colors.onSurfaceVariant,
        ),
      ),
    );
  }
}

class SchemaCodeCard extends StatelessWidget {
  const SchemaCodeCard({
    super.key,
    required this.title,
    required this.language,
    required this.code,
  });
  final String title, language, code;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLow,
        border: Border.all(color: colors.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                SchemaDetailBadge(language),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(12),
            child: SelectableText(
              code,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.7,
                color: colors.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Unknown database attributes remain inspectable without crowding each card.
class SchemaMetadataDetails extends StatelessWidget {
  const SchemaMetadataDetails({
    super.key,
    required this.metadata,
    this.exclude = const {},
    this.title = 'Database metadata',
  });
  final Map<String, dynamic> metadata;
  final Set<String> exclude;
  final String title;
  @override
  Widget build(BuildContext context) {
    final extra = {
      for (final entry in metadata.entries)
        if (!exclude.contains(entry.key) &&
            entry.key != '__className__' &&
            entry.value != null)
          entry.key: entry.value,
    };
    if (extra.isEmpty) return const SizedBox.shrink();
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(title, style: Theme.of(context).textTheme.labelLarge),
      children: [
        SchemaCodeCard(
          title: title,
          language: 'JSON',
          code: const JsonEncoder.withIndent('  ').convert(extra),
        ),
      ],
    );
  }
}
