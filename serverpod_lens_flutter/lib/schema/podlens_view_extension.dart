import 'package:vyuh_diagram_core/vyuh_diagram_core.dart' show DiagramExtension;

import 'lens_settings.dart';

/// Owns the serverpod_lens view options so the diagram (not the widget layer) holds
/// them as typed state, readable with `controller.options<LensSettings>()`.
final class PodLensViewExtension extends DiagramExtension {
  const PodLensViewExtension()
    : super(id: 'podlens.view', options: const LensSettings());
}
