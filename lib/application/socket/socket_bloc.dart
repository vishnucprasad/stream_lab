import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/event/models/event.dart';
import 'package:stream_lab/domain/event/models/event_form_data.dart';
import 'package:stream_lab/domain/event/models/event_value_objects.dart';
import 'package:stream_lab/domain/socket/failures/socket_failure.dart';
import 'package:stream_lab/domain/socket/i_socket_repository.dart';

part 'socket_event.dart';
part 'socket_state.dart';
part 'socket_bloc.freezed.dart';

@injectable
class SocketBloc extends Bloc<SocketEvent, SocketState> {
  final ISocketRepository _socketRepository;
  late StreamSubscription _connectSubscription;
  late StreamSubscription _connectErrorSubscription;
  late StreamSubscription _disconnectSubscription;

  SocketBloc(this._socketRepository) : super(SocketState.initial()) {
    on<SocketEvent>((event, emit) {
      event.map(
        connectButtonPressed: (e) {
          emit(state.copyWith(
            isConnecting: true,
            failure: none(),
          ));

          _socketRepository.connect(e.connection);

          _connectSubscription = _socketRepository.onConnectStream.listen(
            (_) => add(SocketEvent.onConnected(
              connectionUrl: e.connection.connectionUrl,
            )),
          );

          _connectErrorSubscription =
              _socketRepository.onConnectErrorStream.listen(
            (f) => add(
              SocketEvent.onConnectError(failure: f),
            ),
          );

          _disconnectSubscription = _socketRepository.onDisconnectStream.listen(
            (_) => add(SocketEvent.onDisConnected(
              connectionUrl: e.connection.connectionUrl,
            )),
          );
        },
        disconnectButtonPresssed: (_) {
          _socketRepository.disconnect();
        },
        onConnected: (e) {
          emit(state.copyWith(
            isConnecting: false,
            isConnected: true,
          ));
          add(SocketEvent.onNewResponse(
            event: EventFormData.empty().copyWith(
              name: EventName('Connected'),
              type: EventType.connected,
              data: EventData("Connected to ${e.connectionUrl}"),
            ),
          ));
        },
        onConnectError: (e) => emit(state.copyWith(
          isConnecting: false,
          isConnected: false,
          failure: some(e.failure),
        )),
        onDisConnected: (e) {
          emit(state.copyWith(
            isConnecting: false,
            isConnected: false,
          ));
          add(SocketEvent.onNewResponse(
            event: EventFormData.empty().copyWith(
              name: EventName('Disconnected'),
              type: EventType.disconnected,
              data: EventData("Disconnected from ${e.connectionUrl}"),
            ),
          ));
        },
        onNewResponse: (e) => emit(state.copyWith(
          responses: [e.event, ...state.responses],
        )),
        clearAllResponses: (_) => emit(state.copyWith(
          responses: [],
        )),
      );
    });
  }

  @override
  Future<void> close() {
    _connectSubscription.cancel();
    _connectErrorSubscription.cancel();
    _disconnectSubscription.cancel();
    return super.close();
  }
}
