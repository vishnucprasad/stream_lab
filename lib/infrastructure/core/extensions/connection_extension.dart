import 'package:socket_io_client/socket_io_client.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

extension ConnectionX on Connection {
  Socket createSocket() {
    final options = OptionBuilder()
        .setTransports(['websocket'])
        .setTimeout(3000)
        .setReconnectionDelay(5000)
        .disableAutoConnect()
        .build();

    return io(connectionUrl, options);
  }
}
