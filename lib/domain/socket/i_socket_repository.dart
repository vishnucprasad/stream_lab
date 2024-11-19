import 'package:stream_lab/domain/connection/models/connection.dart';

abstract class ISocketRepository {
  void connect(Connection connection);
  Stream<void> get onConnectStream;
  Stream<void> get onDisconnectStream;
  void disconnect();
}
