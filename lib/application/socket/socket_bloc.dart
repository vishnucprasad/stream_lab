import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/socket/i_socket_repository.dart';

part 'socket_event.dart';
part 'socket_state.dart';
part 'socket_bloc.freezed.dart';

@injectable
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  final ISocketRepository _socketRepository;
  late StreamSubscription _connectSubscription;
  late StreamSubscription _disconnectSubscription;

  SocketBloc(this._socketRepository) : super(SocketState.initial()) {
    on<SocketEvent>((event, emit) {
      event.map(
        connectButtonPressed: (e) {
          emit(state.copyWith(
            isConnecting: true,
          ));

          _socketRepository.connect(e.connection);

          _connectSubscription = _socketRepository.onConnectStream.listen(
            (_) => add(const SocketEvent.onConnected()),
          );

          _disconnectSubscription = _socketRepository.onDisconnectStream.listen(
            (_) => add(const SocketEvent.onDisConnected()),
          );
        },
        disconnectButtonPresssed: (_) {
          _socketRepository.disconnect();
        },
        onConnected: (_) => emit(state.copyWith(
          isConnecting: false,
          isConnected: true,
        )),
        onDisConnected: (_) => emit(state.copyWith(
          isConnecting: false,
          isConnected: false,
        )),
      );
    });
  }

  @override
  Future<void> close() {
    _connectSubscription.cancel();
    _disconnectSubscription.cancel();
    return super.close();
  }
}
