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
  bool _loading = false;
  String? _error;

  Future<void> _signIn() async {
    if (_loading) return;
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
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AutofillGroup(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _username,
          enabled: !_loading,
          autofillHints: const [AutofillHints.username],
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(labelText: 'Username or email'),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _password,
          enabled: !_loading,
          obscureText: true,
          autofillHints: const [AutofillHints.password],
          onSubmitted: (_) => _signIn(),
          decoration: const InputDecoration(labelText: 'Password'),
        ),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(
            _error!,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        ],
        const SizedBox(height: 24),
        FilledButton(
          onPressed: _loading ? null : _signIn,
          child: Text(_loading ? 'Signing in…' : 'Sign in'),
        ),
        const SizedBox(height: 16),
        ExpansionTile(
          title: const Text('Create an account or reset your password'),
          children: [SignInWidget(client: widget.client)],
        ),
      ],
    ),
  );
}
