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
    this.showCardinality = true,
    this.focusMode = true,
    this.hoverHighlight = true,
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

  /// Show 1/N cardinality markers on the selected node's edges.
  final bool showCardinality;

  /// Dim everything except the selected node and its neighbours.
  final bool focusMode;

  /// Highlight a table (and its edges) on hover.
  final bool hoverHighlight;

  /// Layout used to arrange the tables.
  final LensLayout layout;

  LensSettings copyWith({
    bool? connectionAnimations,
    bool? animateAllEdges,
    bool? showColumnTypes,
    bool? showGrid,
    bool? showMinimap,
    bool? showCardinality,
    bool? focusMode,
    bool? hoverHighlight,
    LensLayout? layout,
  }) => LensSettings(
    connectionAnimations: connectionAnimations ?? this.connectionAnimations,
    animateAllEdges: animateAllEdges ?? this.animateAllEdges,
    showColumnTypes: showColumnTypes ?? this.showColumnTypes,
    showGrid: showGrid ?? this.showGrid,
    showMinimap: showMinimap ?? this.showMinimap,
    showCardinality: showCardinality ?? this.showCardinality,
    focusMode: focusMode ?? this.focusMode,
    hoverHighlight: hoverHighlight ?? this.hoverHighlight,
    layout: layout ?? this.layout,
  );
}
