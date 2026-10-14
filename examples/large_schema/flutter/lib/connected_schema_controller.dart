import 'package:serverpod_lens/serverpod_lens.dart';
import 'package:serverpod_lens_client/serverpod_lens_client.dart' as api;

typedef SnapshotLoader = Future<api.SchemaSnapshot> Function(String? revision);

/// Thin generated-transport/auth adapter over the shared snapshot controller.
class ConnectedSchemaController extends SchemaSnapshotController {
  ConnectedSchemaController(
    SnapshotLoader load, {
    String projectId = 'serverpod_lens',
  }) : super(
         load: (revision) async =>
             LensSchemaSnapshot.fromJson((await load(revision)).toJson()),
         projectId: projectId,
         isAccessDenied: (failure) =>
             failure is api.SchemaAccessException ||
             failure is api.ServerpodClientUnauthorized ||
             failure is api.ServerpodClientForbidden,
       );

  String? get error {
    if (failure == null) return null;
    if (accessDenied) {
      return 'This account does not have access to this project. Ask the project owner to enable schema access, then sign in again.';
    }
    return graph == null
        ? 'Could not load the host schema. Check the connection and try again.'
        : 'Connection interrupted. Showing the last loaded schema; retry to check for changes.';
  }
}
