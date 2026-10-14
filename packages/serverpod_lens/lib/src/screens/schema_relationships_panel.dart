import 'package:flutter/material.dart';

import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

/// Shared relationship content for the desktop inspector and mobile sheet.
class SchemaRelationshipsPanel extends StatelessWidget {
  const SchemaRelationshipsPanel({
    super.key,
    required this.graph,
    required this.members,
    required this.onSelect,
  });

  final SchemaContext graph;
  final Set<String> members;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    final internal = graph.internal(members);
    final incoming = graph.external(
      members,
      direction: RelationDirection.incoming,
    );
    final outgoing = graph.external(
      members,
      direction: RelationDirection.outgoing,
    );
    final relations = [...internal, ...incoming, ...outgoing];
    final colors = Theme.of(context).colorScheme;
    return Material(
      color: colors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 8, 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Table relationships',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '${internal.length} internal · ${incoming.length} incoming · ${outgoing.length} outgoing',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: relations.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'No foreign-key relationships in this snapshot.',
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: relations.length,
                    separatorBuilder: (_, _) =>
                        const Divider(height: 1, indent: 20, endIndent: 20),
                    itemBuilder: (_, i) {
                      final relation = relations[i];
                      final key = relation.foreignKey;
                      final destination = members.contains(relation.table)
                          ? key.refTable
                          : relation.table;
                      final missing = !graph.tables.containsKey(destination);
                      final kind =
                          members.contains(relation.table) &&
                              members.contains(key.refTable)
                          ? 'Internal'
                          : members.contains(relation.table)
                          ? 'Outgoing'
                          : 'Incoming';
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        leading: Icon(
                          missing
                              ? Icons.link_off
                              : Icons.account_tree_outlined,
                          size: 20,
                        ),
                        title: Text(
                          '${relation.table} → ${key.refTable}',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        subtitle: Text(
                          '${key.columns.join(', ')} → ${key.refColumns.join(', ')}\n$kind${missing ? ' · Target absent from snapshot' : ''}',
                        ),
                        isThreeLine: true,
                        onTap: missing ? null : () => onSelect(destination),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
