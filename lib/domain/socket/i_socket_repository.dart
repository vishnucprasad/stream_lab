import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/event/models/event.dart';
import 'package:stream_lab/domain/socket/failures/socket_failure.dart';

abstract class ISocketRepository {
  void connect(Connection connection);
  void emitEvent(Event event);
  void listenAllActiveEvents(List<Event> eventListeners);
  Stream<void> get onConnectStream;
  Stream<SocketFailure> get onConnectErrorStream;
  Stream<void> get onDisconnectStream;
  Stream<SocketFailure> get onErrorStream;
  Stream<Event> get onEventStream;
  void disconnect();
}
