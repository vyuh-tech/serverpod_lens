import 'package:flutter/material.dart';
import 'package:serverpod_auth_idp_flutter/serverpod_auth_idp_flutter.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

/// A demo username alias over Serverpod's built-in email/password authentication.
class DemoSignIn extends StatefulWidget {
  const DemoSignIn({super.key, required this.client});
  final api.Client client;

  @override
  State<DemoSignIn> createState() => _DemoSignInState();
}

class _DemoSignInState extends State<DemoSignIn> {
  final _username = TextEditingController(text: 'test');
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late final _emailAuth = EmailAuthController(client: widget.client)
    ..addListener(_authChanged);
  EmailFlowScreen? _flow;
  bool _showPassword = false;
  bool _loading = false;

  void _authChanged() {
    if (mounted) {
      setState(() {
        if (_emailAuth.currentScreen == EmailFlowScreen.login) _flow = null;
      });
    }
  }

  void _openFlow(EmailFlowScreen screen) {
    _emailAuth.navigateTo(screen);
    setState(() => _flow = screen);
  }

  String? _error;

  Future<void> _signIn() async {
    if (_loading || !_formKey.currentState!.validate()) return;
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final username = _username.text.trim();
      final result = await widget.client.emailIdp.login(
        email: username == 'test' ? 'test@serverpod-lens.invalid' : username,
        password: _password.text,
      );
      if (!mounted) return;
      await widget.client.auth.updateSignedInUser(result);
    } catch (_) {
      if (mounted) {
        setState(
          () => _error = 'Could not sign in. Check your login and connection.',
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _emailAuth.removeListener(_authChanged);
    _emailAuth.dispose();
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (_flow != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: _emailAuth.isLoading
                  ? null
                  : () => setState(() => _flow = null),
              icon: const Icon(Icons.arrow_back, size: 18),
              label: const Text('Back to sign in'),
            ),
          ),
          const SizedBox(height: 16),
          EmailSignInWidget(controller: _emailAuth),
          if (_emailAuth.currentScreen ==
              EmailFlowScreen.startRegistration) ...[
            const SizedBox(height: 20),
            Text(
              'Creating an account does not grant project access. Your project owner can give you access to a schema.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      );
    }
    return Form(
      key: _formKey,
      child: AutofillGroup(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome back',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: -.7,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Sign in to explore your schema.',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              controller: _username,
              enabled: !_loading,
              autofillHints: const [AutofillHints.username],
              textInputAction: TextInputAction.next,
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'Enter your username or email.'
                  : null,
              decoration: const InputDecoration(labelText: 'Username or email'),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _password,
              enabled: !_loading,
              obscureText: !_showPassword,
              autofillHints: const [AutofillHints.password],
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _signIn(),
              validator: (value) => value == null || value.isEmpty
                  ? 'Enter your password.'
                  : null,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  tooltip: _showPassword ? 'Hide password' : 'Show password',
                  onPressed: () =>
                      setState(() => _showPassword = !_showPassword),
                  icon: Icon(
                    _showPassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: _loading
                    ? null
                    : () => _openFlow(EmailFlowScreen.requestPasswordReset),
                child: const Text('Forgot password?'),
              ),
            ),
            if (_error != null) ...[
              const SizedBox(height: 8),
              Semantics(
                liveRegion: true,
                child: Text(
                  _error!,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              ),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 12),
            FilledButton(
              onPressed: _loading ? null : _signIn,
              child: Text(_loading ? 'Signing in…' : 'Sign in'),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New to Lens?'),
                TextButton(
                  onPressed: _loading
                      ? null
                      : () => _openFlow(EmailFlowScreen.startRegistration),
                  child: const Text('Create an account'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.travel_explore,
                    size: 20,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Trying the demo? Use the test account with the password shared by the project owner.',
                      style: theme.textTheme.bodySmall?.copyWith(
                        height: 1.5,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
