/// How the tables are arranged on the canvas.
enum LensLayout {
  /// Left-to-right layers by foreign-key depth (default).
  layered,

  /// A simple packed grid.
  grid,
}

/// User-tunable lens settings. View settings (animations, minimap) update live
/// through the notifier; layout changes reposition nodes.
class LensSettings {
  const LensSettings({
    this.connectionAnimations = true,
    this.animateAllEdges = false,
    this.showColumnTypes = true,
    this.showGrid = false,
    this.showMinimap = true,
    this.layout = LensLayout.layered,
  });

  /// Whether the marching-ants signal animates on the selected node's edges.
  final bool connectionAnimations;

  /// Animate every connector (not just the selected node's).
  final bool animateAllEdges;

  /// Show the column type next to each column name in table cards.
  final bool showColumnTypes;

  /// Show the canvas grid.
  final bool showGrid;

  /// Show the minimap in the corner.
  final bool showMinimap;

  /// Layout used to arrange the tables.
  final LensLayout layout;

  LensSettings copyWith({
    bool? connectionAnimations,
    bool? animateAllEdges,
    bool? showColumnTypes,
    bool? showGrid,
    bool? showMinimap,
    LensLayout? layout,
  }) => LensSettings(
    connectionAnimations: connectionAnimations ?? this.connectionAnimations,
    animateAllEdges: animateAllEdges ?? this.animateAllEdges,
    showColumnTypes: showColumnTypes ?? this.showColumnTypes,
    showGrid: showGrid ?? this.showGrid,
    showMinimap: showMinimap ?? this.showMinimap,
    layout: layout ?? this.layout,
  );
}
