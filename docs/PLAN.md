# Architecture

Lens visualizes the database schema produced by the user's Serverpod project.
The bundled SQL dataset and recreated backend models are demonstration fixtures.

## Data and ownership

- `serverpod_lens_schema`: plain Dart graph and resolved-definition reader.
- `serverpod_lens_server`: sample host target, built-in auth and project read scope.
- `serverpod_lens_client`: generated transport, kept outside the reusable viewer.
- `serverpod_lens_host_flutter`: sessions, initial/manual refresh and DTO conversion.
- `serverpod_lens`: indexed navigation, saved view geometry, inspector and mapping.
- `serverpod_lens_flutter`: optional offline imports and sample app.

The host supplies a graph; the viewer never reads an arbitrary server path or
queries application records. Complete target metadata remains available in the
inspector. Source adapters disclose partial YAML/SQL inference.

## Navigation and rendering

The schema → table tree opens one table. References explicitly expands neighbors;
All schemas opens the complete graph. Canvas selection inspects without moving
or zooming the camera. View geometry is scoped by host/account.

Vyuh owns native table rendering, row ports, connectors, layout, pan/zoom, snapping
and minimap. Lens supplies semantic mapping and screen UI. Native admission rules
block schema editing while allowing view movement and appearance changes.

## Boundaries

Generated definitions are authoritative; the live database catalog and migration
comparison are outside this release. Compatibility is checked against Serverpod
4.0.4. Installation inside upstream Serverpod development tools remains future work.

See the [README](../README.md), [verification](VERIFICATION.md) and
[security review](SECURITY_REVIEW.md) for current behavior and evidence.
