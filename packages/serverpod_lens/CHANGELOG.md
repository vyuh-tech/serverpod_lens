## Unreleased

- Upgrade Vyuh Diagram to 3.7.2 with native shape and connector selection outlines.
- Isolate browser scrolling, searching, selection, and hover from canvas rebuilds.
- Keep settings slider previews local and apply diagram changes on release.
- Retain selection effects when animation preferences change.
- Use native web raster caching and adaptive detail for large schema overviews.
- Isolate layout and selection when a host changes accounts while reusing a graph.
- Flush pending view positions to the previous account before switching.

## 0.1.0

- Read-only Flutter schema viewer using native Vyuh Diagram tables and connectors.
- Schema and table navigation, field search, relationship inspection, and model source.
- Layouts, minimap, themes, saved view positions, and connection animations.
- Host callbacks and shared snapshot refresh controller.
