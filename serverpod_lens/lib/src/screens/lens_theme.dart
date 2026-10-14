import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// One app-level choice, shared by authentication and every viewer surface.
class LensThemeController extends ValueNotifier<ThemeMode> {
  LensThemeController() : super(ThemeMode.system);
  static const _key = 'lens.theme';
  bool _chosen = false;
  bool _disposed = false;
  Future<void> restore() async {
    try {
      final saved = (await SharedPreferences.getInstance()).getString(_key);
      if (_disposed || _chosen) return;
      value = ThemeMode.values.firstWhere(
        (mode) => mode.name == saved,
        orElse: () => ThemeMode.system,
      );
    } catch (_) {
      /* Theme storage is optional. */
    }
  }

  Future<void> choose(ThemeMode mode) async {
    if (_disposed) return;
    _chosen = true;
    value = mode;
    try {
      await (await SharedPreferences.getInstance()).setString(_key, mode.name);
    } catch (_) {
      /* The current session still uses the selected theme. */
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
}

class LensThemeScope extends InheritedNotifier<LensThemeController> {
  const LensThemeScope({
    super.key,
    required LensThemeController controller,
    required super.child,
  }) : super(notifier: controller);
  static LensThemeController? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LensThemeScope>()?.notifier;
}

/// Available on the sign-in screen; the viewer exposes the same choice in Settings.
class LensThemeButton extends StatelessWidget {
  const LensThemeButton({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = LensThemeScope.maybeOf(context);
    if (theme == null) return const SizedBox.shrink();
    return PopupMenuButton<ThemeMode>(
      tooltip: 'Appearance',
      initialValue: theme.value,
      icon: Icon(switch (theme.value) {
        ThemeMode.light => Icons.light_mode_outlined,
        ThemeMode.dark => Icons.dark_mode_outlined,
        _ => Icons.brightness_auto_outlined,
      }),
      onSelected: (mode) => unawaited(theme.choose(mode)),
      itemBuilder: (_) => [
        for (final mode in ThemeMode.values)
          CheckedPopupMenuItem(
            value: mode,
            checked: mode == theme.value,
            child: Text(lensThemeLabel(mode)),
          ),
      ],
    );
  }
}

String lensThemeLabel(ThemeMode mode) => switch (mode) {
  ThemeMode.system => 'System',
  ThemeMode.light => 'Light',
  ThemeMode.dark => 'Dark',
};
