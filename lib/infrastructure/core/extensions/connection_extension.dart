import 'package:socket_io_client/socket_io_client.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

extension ConnectionX on Connection {
  Socket createSocket() {
    final options = OptionBuilder()
        .setTransports(['websocket'])
        .setTimeout(3000)
        .setReconnectionDelay(5000)
        .disableAutoConnect()
        .enableForceNew()
        .disableReconnection();

    if (queryParameters.isNotEmpty) {
      options.setQuery({
        for (var item in queryParameters) item['key']: item['value'],
      });
    }

    if (headers.isNotEmpty) {
      options.setExtraHeaders({
        for (var item in headers) item['key']: item['value'],
      });
    }

    if (auth.isNotEmpty) {
      options.setAuth({
        for (var item in auth) item['key']: item['value'],
      });
    }

    return io(connectionUrl, options.build());
  }
}
