import 'dart:async';

import 'package:flutter/material.dart';
import 'package:serverpod_lens/serverpod_lens.dart'
    show LensThemeController, LensThemeScope;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'screens/schema_map_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

/// Builds a theme for the given [brightness].
ThemeData _buildTheme(Brightness brightness) {
  final dark = brightness == Brightness.dark;
  final foreground = dark ? const Color(0xffeeeeee) : const Color(0xff242424);
  final surface = dark ? const Color(0xff151515) : const Color(0xfffafafa);
  final container = dark ? const Color(0xff282828) : const Color(0xffeeeeee);
  final scheme =
      ColorScheme.fromSeed(
        seedColor: const Color(0xff737373),
        brightness: brightness,
      ).copyWith(
        primary: foreground,
        onPrimary: surface,
        primaryContainer: container,
        onPrimaryContainer: foreground,
        secondary: foreground,
        onSecondary: surface,
        secondaryContainer: container,
        onSecondaryContainer: foreground,
        tertiary: foreground,
        onTertiary: surface,
        tertiaryContainer: container,
        onTertiaryContainer: foreground,
        surface: surface,
        onSurface: foreground,
        onSurfaceVariant: dark
            ? const Color(0xffb4b4b4)
            : const Color(0xff606060),
        surfaceContainerLowest: dark ? const Color(0xff101010) : Colors.white,
        surfaceContainerLow: dark
            ? const Color(0xff1b1b1b)
            : const Color(0xfff5f5f5),
        surfaceContainer: dark
            ? const Color(0xff202020)
            : const Color(0xfff0f0f0),
        surfaceContainerHigh: container,
        surfaceContainerHighest: dark
            ? const Color(0xff333333)
            : const Color(0xffe3e3e3),
        outline: dark ? const Color(0xff777777) : const Color(0xff858585),
        outlineVariant: dark
            ? const Color(0xff3d3d3d)
            : const Color(0xffd7d7d7),
        surfaceTint: Colors.transparent,
      );
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: surface,
    appBarTheme: AppBarTheme(
      backgroundColor: surface,
      surfaceTintColor: Colors.transparent,
    ),
    dividerTheme: DividerThemeData(color: scheme.outlineVariant),
    inputDecorationTheme: const InputDecorationTheme(isDense: true),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appearance = LensThemeController();
  @override
  void initState() {
    super.initState();
    unawaited(_appearance.restore());
  }

  @override
  void dispose() {
    _appearance.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LensThemeScope(
      controller: _appearance,
      child: ValueListenableBuilder<ThemeMode>(
        valueListenable: _appearance,
        builder: (_, mode, _) => MaterialApp(
          title: 'Serverpod Lens',
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          debugShowCheckedModeBanner: false,
          theme: _buildTheme(Brightness.light),
          darkTheme: _buildTheme(Brightness.dark),
          themeMode: mode,
          home: const SchemaMapScreen(),
        ),
      ),
    );
  }
}
