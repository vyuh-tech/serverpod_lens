import 'package:flutter/foundation.dart';
import 'package:vyuh_diagram_core/vyuh_diagram_core.dart';

import 'lens_settings.dart';

/// Thin change-broadcaster over the diagram's own view options.
///
/// The **source of truth is the `DiagramController`**: [LensSettings] is
/// installed as the options of [PodLensViewExtension] and read/written through
/// `controller.options<T>()` / `controller.setOptions(...)`. This class only
/// lets Flutter widgets react to option changes, because the diagram's own
/// observability is not exposed as a Flutter widget in the open packages.
final class LensState extends ChangeNotifier {
  DiagramController? _controller;
  LensSettings _initial = const LensSettings();

  /// The current options as held by the diagram.
  LensSettings get value => _controller?.options<LensSettings>() ?? _initial;

  /// Binds to the diagram's controller once it exists.
  void attach(DiagramController controller) {
    _controller = controller;
    _initial = controller.options<LensSettings>();
    notifyListeners();
  }

  /// Writes new options into the diagram, then notifies listeners.
  void update(LensSettings settings) {
    _initial = settings;
    _controller?.setOptions(settings);
    notifyListeners();
  }
}
