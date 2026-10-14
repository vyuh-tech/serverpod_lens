import 'package:flutter/foundation.dart';
import 'package:serverpod_lens_schema/serverpod_lens_schema.dart';

/// Shared request lifetime and snapshot state. Each host supplies delivery and
/// classifies access failures; authentication and error copy remain with that host.
class SchemaSnapshotController extends ChangeNotifier {
  SchemaSnapshotController({
    required this.load,
    String? projectId,
    this.isAccessDenied,
  }) : _state = LensSnapshotState(expectedProjectId: projectId);
  final Future<LensSchemaSnapshot> Function(String? revision) load;
  final LensSnapshotState _state;
  final bool Function(Object failure)? isAccessDenied;
  bool _disposed = false;
  bool _loading = false;
  bool _denied = false;
  Object? _failure;
  SchemaGraph? get graph => _state.graph;
  Map<String, String> get sourcePaths => _state.sourcePaths;
  Map<String, String> get modelSources => _state.modelSources;
  String? get revision => _state.revision;
  String? get projectId => _state.projectId ?? _state.expectedProjectId;
  DateTime? get checkedAt => _state.checkedAt;
  bool get loading => _loading;
  bool get accessDenied => _denied;
  Object? get failure => _failure;

  Future<void> refresh() async {
    if (_loading || _disposed) return;
    _loading = true;
    _failure = null;
    notifyListeners();
    try {
      final result = await load(revision);
      if (_disposed) return;
      _state.accept(result);
      _denied = false;
    } catch (error) {
      if (_disposed) return;
      _failure = error;
      _denied = isAccessDenied?.call(error) ?? false;
      if (_denied) _state.clear();
    } finally {
      if (!_disposed) {
        _loading = false;
        notifyListeners();
      }
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _state.clear();
    _failure = null;
    super.dispose();
  }
}
