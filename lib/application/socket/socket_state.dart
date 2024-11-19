part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState {
  const factory SocketState({
    required bool isConnecting,
    required bool isConnected,
  }) = _SocketState;

  factory SocketState.initial() {
    return const SocketState(
      isConnecting: false,
      isConnected: false,
    );
  }
}
