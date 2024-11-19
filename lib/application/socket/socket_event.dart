part of 'socket_bloc.dart';

@freezed
class SocketEvent with _$SocketEvent {
  const factory SocketEvent.connectButtonPressed({
    required Connection connection,
  }) = _ConnectButtonPressed;
  const factory SocketEvent.disconnectButtonPresssed() =
      _DisconnectButtonPresssed;
  const factory SocketEvent.onConnected() = _OnConnected;
  const factory SocketEvent.onDisConnected() = _OnDisConnected;
}
