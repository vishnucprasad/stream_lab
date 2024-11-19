import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/socket/failures/socket_failure.dart';

abstract class ISocketRepository {
  void connect(Connection connection);
  Stream<void> get onConnectStream;
  Stream<SocketFailure> get onConnectErrorStream;
  Stream<void> get onDisconnectStream;
  void disconnect();
}
