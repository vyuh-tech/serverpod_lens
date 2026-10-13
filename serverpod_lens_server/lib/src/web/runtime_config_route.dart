import 'package:serverpod/serverpod.dart';

/// Supplies deployment-specific client configuration without rebuilding Flutter.
class RuntimeConfigRoute extends WidgetRoute {
  RuntimeConfigRoute() : super(path: '/assets/config.json');

  @override
  Future<WebWidget> build(Session session, Request request) async {
    final api = session.serverpod.config.apiServer;
    return JsonWidget(
      object: {
        'apiUrl': Uri(
          scheme: api.publicScheme,
          host: api.publicHost,
          port: api.publicPort,
          path: '/',
        ).toString(),
      },
    );
  }
}
