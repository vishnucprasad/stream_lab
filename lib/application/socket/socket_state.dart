part of 'socket_bloc.dart';

@freezed
class SocketState with _$SocketState {
  const factory SocketState({
    required bool isConnecting,
    required bool isConnected,
    required Option<SocketFailure> failure,
  }) = _SocketState;

  factory SocketState.initial() {
    return SocketState(
      isConnecting: false,
      isConnected: false,
      failure: none(),
    );
  }
}
