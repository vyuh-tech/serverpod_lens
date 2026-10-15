import 'dart:async';

import 'package:flutter/material.dart';

import 'lens_theme.dart';

import 'package:vyuh_diagram_extension_snap_guides/vyuh_diagram_extension_snap_guides.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vyuh_diagram_extension_minimap/vyuh_diagram_extension_minimap.dart';
import 'package:vyuh_diagram_flutter/vyuh_diagram_flutter.dart';

import '../schema/schema_view_interactions.dart';

enum _SettingsCategory {
  connections('Connections'),
  animation('Animation'),
  canvas('Canvas'),
  appearance('Appearance');

  const _SettingsCategory(this.label);
  final String label;
}

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
  _SettingsCategory _category = _SettingsCategory.connections;
  late ({
    SchemaConnectionStyle style,
    double width,
    double radius,
    double extension,
    bool dashed,
  })
  _lastAppearance;

  void _rememberAppearance() => _lastAppearance = (
    style: preferences.connectionStyle,
    width: preferences.strokeWidth,
    radius: preferences.cornerRadius,
    extension: preferences.portExtension,
    dashed: preferences.dashedConnections,
  );

  @override
  void initState() {
    super.initState();
    _rememberAppearance();
  }

  void _connections() {
    try {
      applySchemaConnections(controller, preferences);
      _rememberAppearance();
      if (_error != null) setState(() => _error = null);
    } catch (error) {
      preferences.connectionStyle = _lastAppearance.style;
      preferences.strokeWidth = _lastAppearance.width;
      preferences.cornerRadius = _lastAppearance.radius;
      preferences.portExtension = _lastAppearance.extension;
      preferences.dashedConnections = _lastAppearance.dashed;
      setState(() => _error = 'Could not update connections: $error');
    }
  }

  Widget _section(String title) => Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 12),
    child: Text(title, style: Theme.of(context).textTheme.titleSmall),
  );

  Widget _slider(
    String title,
    String Function(double) format,
    double current,
    double min,
    double max,
    ValueChanged<double> update, {
    bool enabled = true,
    VoidCallback? commit,
    int? divisions,
  }) => _SettingsSlider(
    key: ValueKey(title),
    title: title,
    format: format,
    value: current,
    min: min,
    max: max,
    enabled: enabled,
    divisions: divisions,
    onCommitted: (value) {
      update(value);
      commit?.call();
    },
  );

  List<Widget> _appearanceControls() {
    return [
      if (LensThemeScope.maybeOf(context) case final theme?) ...[
        _section('Appearance'),
        DropdownButtonFormField<ThemeMode>(
          initialValue: theme.value,
          decoration: const InputDecoration(
            labelText: 'Color theme',
            border: OutlineInputBorder(),
          ),
          items: [
            for (final mode in ThemeMode.values)
              DropdownMenuItem(value: mode, child: Text(lensThemeLabel(mode))),
          ],
          onChanged: (mode) {
            if (mode != null) unawaited(theme.choose(mode));
          },
        ),
      ],
      if (LensThemeScope.maybeOf(context) == null)
        const Text('Appearance follows the host application theme.'),
    ];
  }

  List<Widget> _connectionControls() {
    return [
      _section('Connections'),
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Show relationship labels'),
        subtitle: const Text(
          'Cardinality (1 and N) and composite column mappings',
        ),
        value: preferences.showRelationshipLabels,
        onChanged: (value) {
          try {
            setSchemaRelationshipLabels(controller, preferences, value);
            setState(() => _error = null);
          } catch (error) {
            setState(() => _error = 'Could not update labels: $error');
          }
        },
      ),
      const SizedBox(height: 16),
      DropdownButtonFormField<SchemaConnectionStyle>(
        isExpanded: true,
        key: ValueKey(preferences.connectionStyle),
        initialValue: preferences.connectionStyle,
        decoration: const InputDecoration(
          labelText: 'Connection style',
          border: OutlineInputBorder(),
        ),
        items: [
          for (final style in SchemaConnectionStyle.values)
            DropdownMenuItem(
              value: style,
              child: Text(style.label, overflow: TextOverflow.ellipsis),
            ),
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
        (value) => '${value.toStringAsFixed(1)} px',
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
      if (preferences.connectionStyle == SchemaConnectionStyle.rounded)
        _slider(
          'Corner radius',
          (value) => '${value.round()} px',
          preferences.cornerRadius,
          0,
          32,
          (value) => preferences.cornerRadius = value,
          commit: _connections,
        ),
      if (preferences.connectionStyle.hasCorners)
        _slider(
          'Port lead length',
          (value) => '${value.round()} px',
          preferences.portExtension,
          0,
          80,
          (value) => preferences.portExtension = value,
          commit: _connections,
        ),
    ];
  }

  List<Widget> _animationControls() {
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
    return [
      _section('Selected relationships'),
      const Text('Animate connections touching the tables you select.'),
      const SizedBox(height: 16),
      DropdownButtonFormField<SchemaAnimation>(
        isExpanded: true,
        initialValue: animation,
        decoration: const InputDecoration(
          labelText: 'Animation',
          border: OutlineInputBorder(),
        ),
        items: [
          for (final type in SchemaAnimation.values)
            DropdownMenuItem(
              value: type,
              child: Text(type.label, overflow: TextOverflow.ellipsis),
            ),
        ],
        onChanged: (value) {
          if (value != null) preferences.animation = value;
        },
      ),
      const SizedBox(height: 16),
      _slider(
        'Animation speed',
        (value) => '${value.toStringAsFixed(2)}×',
        speed,
        .1,
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
          (value) => '${value.round()}',
          density.toDouble(),
          3,
          32,
          (value) => preferences.density = value.round(),
          divisions: 29,
        ),
      if (flows)
        _slider(
          switch (animation) {
            SchemaAnimation.dashes => 'Dash length',
            SchemaAnimation.arrows => 'Arrow size',
            _ => 'Particle radius',
          },
          (value) =>
              '${(animation == SchemaAnimation.dashes ? value * 8 : value).toStringAsFixed(1)} px',
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
          (value) => '${value.toStringAsFixed(1)} px',
          width,
          .5,
          8,
          (value) => preferences.animationWidth = value,
        ),
      if (animation != SchemaAnimation.off)
        _slider(
          'Animation opacity',
          (value) => '${(value * 100).round()}%',
          opacity,
          .1,
          1,
          (value) => preferences.animationOpacity = value,
        ),
    ];
  }

  List<Widget> _canvasControls() {
    final guides = controller.options<SnapGuidesOptions>();
    final grid = controller.options<GridOptions>();
    final minimap = controller.options<MinimapOptions>();
    final navigation = controller.options<NavigationOptions>();
    return [
      _section('Snapping and guides'),
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Snap to nearby tables'),
        subtitle: const Text('Show guides and align tables as you drag'),
        value: guides.enabled,
        onChanged: (value) {
          preferences.snapGuides = value;
          controller.setOptions(guides.copyWith(enabled: value));
        },
      ),
      _slider(
        'Snap distance',
        (value) => '${value.round()} px',
        guides.tolerance,
        2,
        16,
        (value) {
          preferences.snapTolerance = value;
          controller.setOptions(guides.copyWith(tolerance: value));
        },
        enabled: guides.enabled,
      ),
      _section('Grid'),
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
        (value) => '${value.round()} px',
        grid.size,
        GridOptions.minimumSize,
        GridOptions.maximumSize,
        (value) {
          final next = grid.copyWith(size: value);
          preferences.gridSize = next.size;
          controller.setOptions(next);
        },
        divisions:
            ((GridOptions.maximumSize - GridOptions.minimumSize) /
                    GridOptions.sizeStep)
                .round(),
      ),
      _section('Minimap'),
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Show minimap'),
        value: minimap.visible,
        onChanged: (value) {
          preferences.minimap = value;
          controller.setOptions(
            minimap.copyWith(visible: value, initiallyExpanded: true),
          );
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
                    policy: DiagramMinimapPolicy(showConnections: value),
                  ),
                );
              }
            : null,
      ),
      _section('Navigation'),
      SwitchListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('Pan when dragging near edges'),
        value: navigation.edgePanEnabled,
        onChanged: (value) {
          preferences.edgePan = value;
          controller.setOptions(navigation.copyWith(edgePanEnabled: value));
        },
      ),
    ];
  }

  Widget _controls() {
    final controls = switch (_category) {
      _SettingsCategory.appearance => _appearanceControls(),
      _SettingsCategory.connections => _connectionControls(),
      _SettingsCategory.animation => _animationControls(),
      _SettingsCategory.canvas => _canvasControls(),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...controls,
        if (_error != null)
          Text(
            _error!,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: SizedBox(
      width: 440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('View settings'),
          const SizedBox(height: 20),
          Builder(
            builder: (context) {
              if (MediaQuery.sizeOf(context).width < 500 ||
                  MediaQuery.textScalerOf(context).scale(14) > 20) {
                return DropdownButtonFormField<_SettingsCategory>(
                  isExpanded: true,
                  initialValue: _category,
                  decoration: const InputDecoration(
                    labelText: 'Settings category',
                    border: OutlineInputBorder(),
                  ),
                  items: [
                    for (final category in _SettingsCategory.values)
                      DropdownMenuItem(
                        value: category,
                        child: Text(
                          category.label,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (category) {
                    if (category != null) setState(() => _category = category);
                  },
                );
              }
              return SegmentedButton<_SettingsCategory>(
                showSelectedIcon: false,
                segments: [
                  for (final category in _SettingsCategory.values)
                    ButtonSegment(value: category, label: Text(category.label)),
                ],
                selected: {_category},
                onSelectionChanged: (selection) =>
                    setState(() => _category = selection.single),
              );
            },
          ),
        ],
      ),
    ),
    content: SizedBox(
      width: 440,
      child: SingleChildScrollView(
        key: ValueKey(_category),
        child: switch (_category) {
          _SettingsCategory.animation ||
          _SettingsCategory.canvas => Observer(builder: (_) => _controls()),
          _ => _controls(),
        },
      ),
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Done'),
      ),
    ],
  );
}

/// Pointer updates only rebuild this control. Native diagram changes commit
/// once at the end of a drag instead of replaying a transaction per sample.
class _SettingsSlider extends StatefulWidget {
  const _SettingsSlider({
    super.key,
    required this.title,
    required this.format,
    required this.value,
    required this.min,
    required this.max,
    required this.enabled,
    required this.onCommitted,
    this.divisions,
  });
  final String title;
  final String Function(double) format;
  final double value, min, max;
  final bool enabled;
  final ValueChanged<double> onCommitted;
  final int? divisions;

  @override
  State<_SettingsSlider> createState() => _SettingsSliderState();
}

class _SettingsSliderState extends State<_SettingsSlider> {
  late double _value = widget.value;
  late double _committed = widget.value;
  bool _dragging = false;

  @override
  void didUpdateWidget(covariant _SettingsSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_dragging || !widget.enabled) {
      _value = widget.value;
      _committed = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        children: [
          Expanded(child: Text(widget.title)),
          Text(widget.format(_value)),
        ],
      ),
      Semantics(
        label: widget.title,
        child: Slider(
          value: _value.clamp(widget.min, widget.max),
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
          label: widget.format(_value),
          semanticFormatterCallback: widget.format,
          onChanged: widget.enabled
              ? (value) => setState(() {
                  _dragging = true;
                  _value = value;
                })
              : null,
          onChangeEnd: widget.enabled
              ? (value) {
                  _dragging = false;
                  if (value != _committed) {
                    _committed = value;
                    widget.onCommitted(value);
                  }
                }
              : null,
        ),
      ),
    ],
  );
}
