import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/event/models/event.dart';
import 'package:stream_lab/domain/socket/failures/socket_failure.dart';
import 'package:stream_lab/domain/socket/i_socket_repository.dart';
import 'package:stream_lab/infrastructure/core/extensions/connection_extension.dart';

@LazySingleton(as: ISocketRepository)
class SocketRepository implements ISocketRepository {
  late IO.Socket _socket;

  late StreamController<void> _onConnectController;
  late StreamController<SocketFailure> _onConnectErrorController;
  late StreamController<void> _onDisconnectController;
  late StreamController<SocketFailure> _onErrorController;

  @override
  void connect(Connection connection) {
    _onConnectController = StreamController<void>.broadcast();
    _onConnectErrorController = StreamController<SocketFailure>.broadcast();
    _onDisconnectController = StreamController<void>.broadcast();
    _onErrorController = StreamController<SocketFailure>.broadcast();

    _socket = connection.createSocket();
    _socket.connect();

    _socket.onConnect((_) {
      _onConnectController.add(null);
    });

    _socket.onConnectError((e) {
      _onConnectErrorController.add(SocketFailure.clientFailure(
        message: "${e['type']}: ${e['msg']}",
      ));
    });

    _socket.onDisconnect((_) {
      _onDisconnectController.add(null);
    });

    _socket.onError((e) {
      _onErrorController.add(SocketFailure.clientFailure(
        message: "${e['type']}: ${e['msg']}",
      ));
    });
  }

  @override
  void emitEvent(Event event) {
    _socket.emit(event.name, event.data);
  }

  @override
  Stream<void> get onConnectStream => _onConnectController.stream;

  @override
  Stream<SocketFailure> get onConnectErrorStream =>
      _onConnectErrorController.stream;

  @override
  Stream<void> get onDisconnectStream => _onDisconnectController.stream;

  @override
  Stream<SocketFailure> get onErrorStream => _onErrorController.stream;

  @override
  void disconnect() {
    _socket.dispose();
    dispose();
  }

  void dispose() {
    _onConnectController.close();
    _onConnectErrorController.close();
    _onDisconnectController.close();
  }
}
