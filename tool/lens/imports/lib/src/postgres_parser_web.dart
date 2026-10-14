import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

/// A dedicated worker keeps native PostgreSQL parsing off the UI thread.
Future<Map<String, dynamic>> parsePostgres(String sql) async {
  final url = Uri.parse(web.document.baseURI)
      .resolve('assets/packages/serverpod_lens_imports/assets/sql/worker.js');
  final worker = web.Worker(
    url.toString().toJS,
    web.WorkerOptions(type: 'module'),
  );
  final response = Completer<Map<String, dynamic>>();
  worker.onmessage = ((web.MessageEvent event) {
    if (response.isCompleted) return;
    final payload = Map<String, dynamic>.from(event.data.dartify()! as Map);
    if (payload['error'] != null) {
      response.completeError(
        FormatException(
          '${payload['error']}${payload['position'] == null ? '' : ' (position ${payload['position']})'}',
        ),
      );
    } else {
      response.complete(Map<String, dynamic>.from(payload['ast'] as Map));
    }
  }).toJS;
  worker.onerror = ((web.Event event) {
    if (!response.isCompleted) {
      response.completeError(
        StateError('Could not load the bundled PostgreSQL parser.'),
      );
    }
  }).toJS;
  worker.postMessage(sql.toJS);
  try {
    return await response.future.timeout(const Duration(seconds: 30));
  } finally {
    worker.terminate();
  }
}
