import 'package:flutter/material.dart';

/// Contextual navigation controls. Arranging uses native layout, not groups.
class SchemaExplorationBar extends StatelessWidget {
  const SchemaExplorationBar({
    super.key,
    required this.hops,
    required this.enabled,
    required this.onHopsChanged,
    required this.onArrange,
  });

  final int hops;
  final bool enabled;
  final ValueChanged<int> onHopsChanged;
  final VoidCallback onArrange;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      color: Theme.of(context).colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            SegmentedButton<int>(
              showSelectedIcon: false,
              segments: const [
                ButtonSegment(
                  value: 1,
                  label: Text('1 hop'),
                  tooltip: 'Directly connected tables',
                ),
                ButtonSegment(
                  value: 2,
                  label: Text('2 hops'),
                  tooltip: 'Include connections through one more table',
                ),
              ],
              selected: {hops},
              onSelectionChanged: enabled
                  ? (selection) => onHopsChanged(selection.single)
                  : null,
            ),
            Tooltip(
              message: 'Arrange the highlighted tables and fit them in view',
              child: TextButton.icon(
                onPressed: enabled ? onArrange : null,
                icon: const Icon(Icons.auto_awesome_mosaic_outlined, size: 18),
                label: const Text('Bring together'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
