import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:stream_lab/core/constants.dart';
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
  late StreamController<Event> _onEventController;

  @override
  void connect(Connection connection) {
    _onConnectController = StreamController<void>.broadcast();
    _onConnectErrorController = StreamController<SocketFailure>.broadcast();
    _onDisconnectController = StreamController<void>.broadcast();
    _onErrorController = StreamController<SocketFailure>.broadcast();
    _onEventController = StreamController<Event>.broadcast();

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
  void listenAllActiveEvents(List<Event> eventListeners) {
    _socket.clearListeners();
    for (var event in eventListeners) {
      _socket.on(
        event.name,
        (data) {
          _onEventController.add(
            event.copyWith(
              typeIndex: EventType.listener.index,
              dataTypeIndex: isJson(data)
                  ? EventDataType.json.index
                  : EventDataType.text.index,
              data: data is Map || data is List ? json.encode(data) : data,
            ),
          );
        },
      );
    }
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
  Stream<Event> get onEventStream => _onEventController.stream;

  @override
  void disconnect() {
    _socket.dispose();
    dispose();
  }

  void dispose() {
    _onConnectController.close();
    _onConnectErrorController.close();
    _onDisconnectController.close();
    _onErrorController.close();
    _onEventController.close();
  }

  bool isJson(dynamic value) {
    if (value is String) {
      try {
        final decoded = json.decode(value);
        return decoded is Map || decoded is List;
      } catch (e) {
        return false;
      }
    } else if (value is Map || value is List) {
      return true;
    }
    return false;
  }
}
