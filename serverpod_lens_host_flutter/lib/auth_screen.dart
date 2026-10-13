import 'package:flutter/material.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

import 'demo_sign_in.dart';

/// Responsive presentation around Serverpod's authentication flows.
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, required this.client});
  final api.Client client;

  @override
  Widget build(BuildContext context) {
    final base = Theme.of(context);
    final colors = base.colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: colors.outlineVariant),
    );
    return Theme(
      data: base.copyWith(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: colors.surface,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          border: border,
          enabledBorder: border,
          focusedBorder: border.copyWith(
            borderSide: BorderSide(color: colors.primary, width: 2),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final wide = constraints.maxWidth >= 1000;
            final form = SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: wide ? 64 : 24,
                  vertical: 36,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: (constraints.maxHeight - 72).clamp(
                      0,
                      double.infinity,
                    ),
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const _Brand(),
                          const SizedBox(height: 48),
                          DemoSignIn(client: client),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.lock_outline,
                                size: 14,
                                color: colors.onSurfaceVariant,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Secured by Serverpod',
                                style: base.textTheme.bodySmall?.copyWith(
                                  color: colors.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
            return Row(
              children: [
                if (wide) const Expanded(child: _SchemaWelcome()),
                Expanded(child: form),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Brand extends StatelessWidget {
  const _Brand();
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.account_tree_outlined,
          size: 22,
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
      const SizedBox(width: 12),
      const Text(
        'Serverpod Lens',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w600,
          letterSpacing: -.4,
        ),
      ),
    ],
  );
}

class _SchemaWelcome extends StatelessWidget {
  const _SchemaWelcome();
  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xff101e20), Color(0xff17382f), Color(0xff102824)],
      ),
    ),
    child: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(56),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff376352)),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Text(
                  'A clearer view of your backend',
                  style: TextStyle(color: Color(0xffb0e2c9), fontSize: 12),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'See the structure.\nFind the connection.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  height: 1.15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.4,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your Serverpod schema, mapped out. Explore tables, follow relationships, and see how everything fits together.',
                style: TextStyle(
                  color: Color(0xffafc6be),
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 44),
              const ExcludeSemantics(child: _SchemaPreview()),
              const SizedBox(height: 36),
              const Row(
                children: [
                  Icon(
                    Icons.visibility_outlined,
                    size: 16,
                    color: Color(0xff91b6a6),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Explore freely. Your schema stays read-only.',
                      style: TextStyle(color: Color(0xffafc6be), fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

/// An illustrative schema sample, separate from the interactive viewer.
class _SchemaPreview extends StatelessWidget {
  const _SchemaPreview();
  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: _PreviewTable(
          name: 'users',
          rows: ['id    uuid', 'name    text', 'email    text'],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Icon(Icons.south_east, color: Color(0xff71b897), size: 30),
      ),
      const Align(
        alignment: Alignment.centerRight,
        child: _PreviewTable(
          name: 'projects',
          rows: ['id    uuid', 'ownerId    users.id', 'name    text'],
        ),
      ),
    ],
  );
}

class _PreviewTable extends StatelessWidget {
  const _PreviewTable({required this.name, required this.rows});
  final String name;
  final List<String> rows;
  @override
  Widget build(BuildContext context) => Container(
    width: 248,
    decoration: BoxDecoration(
      color: const Color(0xff172c28),
      border: Border.all(color: const Color(0xff3c6556)),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x22000000),
          blurRadius: 24,
          offset: Offset(0, 12),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              const Icon(
                Icons.table_chart_outlined,
                color: Color(0xffa3d9bb),
                size: 17,
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xffedf8f2),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1, color: Color(0xff355247)),
        Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final row in rows)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    row,
                    style: const TextStyle(
                      color: Color(0xff9eb9ac),
                      fontSize: 12,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
