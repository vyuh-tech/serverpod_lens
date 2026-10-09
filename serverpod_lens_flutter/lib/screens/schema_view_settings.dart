import 'package:flutter/material.dart';
import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/schema_view_interactions.dart';

class SchemaViewSettings extends StatefulWidget {
  const SchemaViewSettings({
    super.key,
    required this.controller,
    required this.preferences,
  });
  final DiagramController controller;
  final SchemaViewPreferences preferences;
  @override
  State<SchemaViewSettings> createState() => _SchemaViewSettingsState();
}

class _SchemaViewSettingsState extends State<SchemaViewSettings> {
  SchemaViewPreferences get preferences => widget.preferences;
  DiagramController get controller => widget.controller;
  String? _error;

  void _connections() {
    try {
      applySchemaConnections(controller, preferences);
      setState(() => _error = null);
    } catch (error) {
      setState(() => _error = 'Could not update connections: $error');
    }
  }

  Widget _section(String title) => Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 12),
    child: Text(title, style: Theme.of(context).textTheme.titleSmall),
  );

  Widget _slider(
    String title,
    String value,
    double current,
    double min,
    double max,
    ValueChanged<double> update, {
    bool enabled = true,
    VoidCallback? commit,
  }) => Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(title)),
          Text(value),
        ],
      ),
      Slider(
        value: current,
        min: min,
        max: max,
        onChanged: enabled ? (value) => setState(() => update(value)) : null,
        onChangeEnd: commit == null ? null : (_) => commit(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('View settings'),
    content: SizedBox(
      width: 440,
      child: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            final animation = preferences.animation;
            final speed = preferences.speed;
            final reverse = preferences.reverse;
            final density = preferences.density;
            final flows =
                animation == SchemaAnimation.particles ||
                animation == SchemaAnimation.dashes ||
                animation == SchemaAnimation.arrows;
            final size = preferences.particleSize;
            final width = preferences.animationWidth;
            final opacity = preferences.animationOpacity;
            final guides = controller.options<SnapGuidesOptions>();
            final grid = controller.options<GridOptions>();
            final minimap = controller.options<MinimapOptions>();
            final navigation = controller.options<NavigationOptions>();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _section('Selected relationships'),
                DropdownButtonFormField<SchemaAnimation>(
                  initialValue: animation,
                  decoration: const InputDecoration(
                    labelText: 'Animation',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    for (final type in SchemaAnimation.values)
                      DropdownMenuItem(value: type, child: Text(type.label)),
                  ],
                  onChanged: (value) {
                    if (value != null) preferences.animation = value;
                  },
                ),
                const SizedBox(height: 16),
                _slider(
                  'Animation speed',
                  '${speed.toStringAsFixed(2)}×',
                  speed,
                  .25,
                  3,
                  (value) => preferences.speed = value,
                  enabled: animation != SchemaAnimation.off,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Reverse flow'),
                  value: reverse,
                  onChanged:
                      animation == SchemaAnimation.particles ||
                          animation == SchemaAnimation.dashes ||
                          animation == SchemaAnimation.arrows
                      ? (value) => preferences.reverse = value
                      : null,
                ),
                if (animation == SchemaAnimation.particles ||
                    animation == SchemaAnimation.dashes ||
                    animation == SchemaAnimation.arrows)
                  _slider(
                    'Trail density',
                    '$density',
                    density.toDouble(),
                    3,
                    32,
                    (value) => preferences.density = value.round(),
                  ),
                if (flows)
                  _slider(
                    switch (animation) {
                      SchemaAnimation.dashes => 'Dash length',
                      SchemaAnimation.arrows => 'Arrow size',
                      _ => 'Particle radius',
                    },
                    '${(animation == SchemaAnimation.dashes ? size * 8 : size).toStringAsFixed(1)} px',
                    size,
                    .5,
                    12,
                    (value) => preferences.particleSize = value,
                  ),
                if (animation == SchemaAnimation.dashes ||
                    animation == SchemaAnimation.pulse ||
                    animation == SchemaAnimation.blink)
                  _slider(
                    'Animation stroke width',
                    '${width.toStringAsFixed(1)} px',
                    width,
                    .5,
                    8,
                    (value) => preferences.animationWidth = value,
                  ),
                if (animation != SchemaAnimation.off)
                  _slider(
                    'Animation opacity',
                    '${(opacity * 100).round()}%',
                    opacity,
                    .1,
                    1,
                    (value) => preferences.animationOpacity = value,
                  ),
                _section('Connections'),
                DropdownButtonFormField<SchemaConnectionStyle>(
                  initialValue: preferences.connectionStyle,
                  decoration: const InputDecoration(
                    labelText: 'Connection style',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    for (final style in SchemaConnectionStyle.values)
                      DropdownMenuItem(value: style, child: Text(style.label)),
                  ],
                  onChanged: (value) {
                    if (value == null) return;
                    setState(() => preferences.connectionStyle = value);
                    _connections();
                  },
                ),
                const SizedBox(height: 16),
                _slider(
                  'Line width',
                  '${preferences.strokeWidth.toStringAsFixed(1)} px',
                  preferences.strokeWidth,
                  1,
                  5,
                  (value) => preferences.strokeWidth = value,
                  commit: _connections,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Dashed lines'),
                  value: preferences.dashedConnections,
                  onChanged: (value) {
                    setState(() => preferences.dashedConnections = value);
                    _connections();
                  },
                ),
                if (preferences.connectionStyle ==
                    SchemaConnectionStyle.rounded)
                  _slider(
                    'Corner radius',
                    '${preferences.cornerRadius.round()} px',
                    preferences.cornerRadius,
                    0,
                    32,
                    (value) => preferences.cornerRadius = value,
                    commit: _connections,
                  ),
                if (preferences.connectionStyle.hasCorners)
                  _slider(
                    'Port lead length',
                    '${preferences.portExtension.round()} px',
                    preferences.portExtension,
                    0,
                    80,
                    (value) => preferences.portExtension = value,
                    commit: _connections,
                  ),
                if (_error != null)
                  Text(
                    _error!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                _section('Canvas'),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Alignment guides'),
                  subtitle: const Text(
                    'Align dragged nodes with nearby tables',
                  ),
                  value: guides.enabled,
                  onChanged: (value) {
                    preferences.snapGuides = value;
                    controller.setOptions(guides.copyWith(enabled: value));
                  },
                ),
                _slider(
                  'Alignment tolerance',
                  '${guides.tolerance.round()} px',
                  guides.tolerance,
                  2,
                  16,
                  (value) {
                    preferences.snapTolerance = value;
                    controller.setOptions(guides.copyWith(tolerance: value));
                  },
                  enabled: guides.enabled,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Show grid'),
                  value: grid.visible,
                  onChanged: (value) {
                    preferences.grid = value;
                    controller.setOptions(grid.copyWith(visible: value));
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Snap nodes to grid'),
                  value: grid.snap,
                  onChanged: (value) {
                    preferences.snap = value;
                    controller.setOptions(grid.copyWith(snap: value));
                  },
                ),
                _slider(
                  'Grid spacing',
                  '${grid.size.round()} px',
                  grid.size,
                  10,
                  80,
                  (value) {
                    preferences.gridSize = value;
                    controller.setOptions(grid.copyWith(size: value));
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Show minimap'),
                  value: minimap.visible,
                  onChanged: (value) {
                    preferences.minimap = value;
                    controller.setOptions(minimap.copyWith(visible: value));
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Connections in minimap'),
                  value: minimap.policy.showConnections,
                  onChanged: minimap.visible
                      ? (value) {
                          preferences.minimapConnections = value;
                          controller.setOptions(
                            minimap.copyWith(
                              policy: DiagramMinimapPolicy(
                                showConnections: value,
                              ),
                            ),
                          );
                        }
                      : null,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Pan when dragging near edges'),
                  value: navigation.edgePanEnabled,
                  onChanged: (value) {
                    preferences.edgePan = value;
                    controller.setOptions(
                      navigation.copyWith(edgePanEnabled: value),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
          controller.view.show(const ViewTarget.all(), motion: Motion.smooth);
        },
        child: const Text('Fit schema'),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Done'),
      ),
    ],
  );
}
