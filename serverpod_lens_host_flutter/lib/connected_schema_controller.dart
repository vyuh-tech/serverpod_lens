import 'package:flutter/foundation.dart';
import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

typedef SnapshotLoader = Future<api.SchemaSnapshot> Function(String? revision);

/// Owns refresh, stale data and request lifetime for one authenticated account.
class ConnectedSchemaController extends ChangeNotifier {
  ConnectedSchemaController(this._load);

  final SnapshotLoader _load;
  SchemaGraph? graph;
  String? revision;
  DateTime? checkedAt;
  String? error;
  bool accessDenied = false;
  bool loading = false;
  bool _disposed = false;

  Future<void> refresh() async {
    if (loading || _disposed) return;
    loading = true;
    error = null;
    notifyListeners();
    try {
      final result = await _load(revision);
      if (_disposed) return;
      if (result.projectId != 'serverpod_lens' ||
          result.sourceKind != 'currentTarget' ||
          result.revision.isEmpty ||
          (result.graph == null &&
              (graph == null || revision != result.revision))) {
        throw const FormatException('Invalid schema snapshot');
      }
      // Keep the identical graph on unchanged refreshes: the viewer retains its
      // camera, search, groups and positions instead of rebuilding the canvas.
      if (result.graph != null && revision != result.revision) {
        graph = SchemaGraph.fromJson(result.graph!.toJson());
      }
      revision = result.revision;
      checkedAt = result.checkedAt;
      accessDenied = false;
    } catch (failure) {
      if (_disposed) return;
      accessDenied =
          failure is api.SchemaAccessException ||
          failure is api.ServerpodClientUnauthorized ||
          failure is api.ServerpodClientForbidden;
      if (accessDenied) {
        graph = null;
        revision = null;
        checkedAt = null;
        error = 'This account does not have access to this project. Ask the project owner to enable schema access, then sign in again.';
      } else {
        error = graph == null
            ? 'Could not load the host schema. Check the connection and try again.'
            : 'Connection interrupted. Showing the last loaded schema; retry to check for changes.';
      }
    } finally {
      if (!_disposed) {
        loading = false;
        notifyListeners();
      }
    }
  }

  @override
  void dispose() {
    _disposed = true;
    graph = null;
    revision = null;
    super.dispose();
  }
}
