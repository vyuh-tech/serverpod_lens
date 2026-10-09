import 'package:flutter/material.dart';

import '../schema/schema_context.dart';

/// Context actions stay compact on phones so the map keeps its space.
class SchemaContextControls extends StatelessWidget {
  const SchemaContextControls({
    super.key,
    required this.title,
    required this.group,
    required this.focused,
    required this.direction,
    required this.hops,
    required this.tableCount,
    required this.hiddenCount,
    required this.hasPreviousView,
    required this.onFocusChanged,
    required this.onDirectionChanged,
    required this.onHopsChanged,
    required this.onShowAll,
    required this.onFit,
    required this.onBack,
    required this.onRelationships,
    required this.onCreateGroup,
    required this.onReveal,
  });

  final String title;
  final SchemaGroup? group;
  final bool focused;
  final RelationDirection direction;
  final int hops;
  final int tableCount;
  final int hiddenCount;
  final bool hasPreviousView;
  final ValueChanged<bool> onFocusChanged;
  final ValueChanged<RelationDirection> onDirectionChanged;
  final ValueChanged<int> onHopsChanged;
  final VoidCallback onShowAll;
  final VoidCallback onFit;
  final VoidCallback onBack;
  final VoidCallback onRelationships;
  final VoidCallback onCreateGroup;
  final VoidCallback onReveal;

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 700;
    final fit = IconButton(
      tooltip: 'Fit related tables',
      onPressed: onFit,
      icon: const Icon(Icons.fit_screen),
    );
    final back = IconButton(
      tooltip: 'Back to previous view',
      onPressed: onBack,
      icon: const Icon(Icons.undo),
    );
    final focus = FilterChip(
      label: const Text('Focus related'),
      selected: focused,
      onSelected: onFocusChanged,
    );
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  group == null
                      ? Icons.center_focus_strong
                      : Icons.workspaces_outline,
                  size: 18,
                  color: group == null ? null : Color(group!.color),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      if (compact)
                        Text(
                          '$tableCount tables · ${direction.label} · ${hops == 0 ? 'Members only' : '$hops hop${hops == 1 ? '' : 's'}'}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                TextButton(onPressed: onShowAll, child: const Text('Show all')),
              ],
            ),
            if (compact)
              Row(
                children: [
                  Expanded(
                    child: Align(alignment: Alignment.centerLeft, child: focus),
                  ),
                  fit,
                  if (hasPreviousView) back,
                  PopupMenuButton<String>(
                    tooltip: 'Context options',
                    onSelected: (value) {
                      if (value.startsWith('direction:')) {
                        onDirectionChanged(
                          RelationDirection.values.byName(value.substring(10)),
                        );
                      } else if (value.startsWith('hops:')) {
                        onHopsChanged(int.parse(value.substring(5)));
                      } else if (value == 'relationships') {
                        onRelationships();
                      } else {
                        onCreateGroup();
                      }
                    },
                    itemBuilder: (_) => [
                      for (final item in RelationDirection.values)
                        CheckedPopupMenuItem(
                          value: 'direction:${item.name}',
                          checked: direction == item,
                          child: Text(item.label),
                        ),
                      const PopupMenuDivider(),
                      if (group != null)
                        CheckedPopupMenuItem(
                          value: 'hops:0',
                          checked: hops == 0,
                          child: const Text('Members only'),
                        ),
                      for (final count in [1, 2])
                        CheckedPopupMenuItem(
                          value: 'hops:$count',
                          checked: hops == count,
                          child: Text('$count hop${count == 1 ? '' : 's'}'),
                        ),
                      const PopupMenuDivider(),
                      const PopupMenuItem(
                        value: 'relationships',
                        child: Text('Relationships'),
                      ),
                      const PopupMenuItem(
                        value: 'group',
                        child: Text('Group selection'),
                      ),
                    ],
                  ),
                ],
              )
            else
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  focus,
                  DropdownButton<RelationDirection>(
                    value: direction,
                    underline: const SizedBox.shrink(),
                    items: [
                      for (final item in RelationDirection.values)
                        DropdownMenuItem(value: item, child: Text(item.label)),
                    ],
                    onChanged: (value) {
                      if (value != null) onDirectionChanged(value);
                    },
                  ),
                  DropdownButton<int>(
                    value: hops,
                    underline: const SizedBox.shrink(),
                    items: [
                      if (group != null)
                        const DropdownMenuItem(
                          value: 0,
                          child: Text('Members only'),
                        ),
                      const DropdownMenuItem(value: 1, child: Text('1 hop')),
                      const DropdownMenuItem(value: 2, child: Text('2 hops')),
                    ],
                    onChanged: (value) {
                      if (value != null) onHopsChanged(value);
                    },
                  ),
                  Text(
                    '$tableCount tables in context',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  fit,
                  if (hasPreviousView) back,
                  TextButton.icon(
                    onPressed: onRelationships,
                    icon: const Icon(Icons.account_tree_outlined, size: 18),
                    label: const Text('Relationships'),
                  ),
                  TextButton.icon(
                    onPressed: onCreateGroup,
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Group selection'),
                  ),
                ],
              ),
            if (hiddenCount > 0)
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: onReveal,
                  child: Text('Reveal $hiddenCount outside schema'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
