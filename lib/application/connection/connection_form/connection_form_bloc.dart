import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/i_connection_repository.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/connection/models/connection_form_data.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';
import 'package:stream_lab/domain/event/models/event_form_data.dart';

part 'connection_form_event.dart';
part 'connection_form_state.dart';
part 'connection_form_bloc.freezed.dart';

@injectable
class ConnectionFormBloc
    extends Bloc<ConnectionFormEvent, ConnectionFormState> {
  final IConnectionRepository _connectionRepository;
  ConnectionFormBloc(this._connectionRepository)
      : super(ConnectionFormState.initial()) {
    on<ConnectionFormEvent>((event, emit) async {
      await event.map(
        initialize: (_) async => emit(ConnectionFormState.initial()),
        connectionNameChanged: (e) async => emit(state.copyWith(
          isSaved: false,
          connectionFormData: state.connectionFormData?.copyWith(
            connectionName: ConnectionName(e.connectionName),
          ),
          failureOrSucessOption: none(),
        )),
        connectionUrlChanged: (e) async => emit(state.copyWith(
          isSaved: false,
          connectionFormData: state.connectionFormData?.copyWith(
            connectionUrl: ConnectionURL(e.connectionUrl),
          ),
          failureOrSucessOption: none(),
        )),
        connectionSelected: (e) async => emit(state.copyWith(
          isSubmitting: false,
          isSaved: true,
          showValidationError: false,
          connectionKey: e.connection.key,
          connectionFormData: e.connection.toDomain(),
          emitterIndex: null,
          listenerIndex: null,
          emitterFormData: null,
          listenerFormData: null,
          failureOrSucessOption: none(),
        )),
        newConnectionButtonPressed: (_) async => emit(state.copyWith(
          isSubmitting: false,
          isSaved: false,
          showValidationError: false,
          connectionKey: null,
          connectionFormData: ConnectionFormData.empty(),
          emitterIndex: null,
          listenerIndex: null,
          emitterFormData: null,
          listenerFormData: null,
          failureOrSucessOption: none(),
        )),
        addEvent: (e) async {
          if (e.type == EventType.emitter) {
            emit(state.copyWith(
              isSaved: false,
              emitterIndex: state.connectionFormData?.eventEmitters.length,
              emitterFormData: EventFormData.empty().copyWith(type: e.type),
              connectionFormData: state.connectionFormData?.copyWith(
                eventEmitters: [
                  ...state.connectionFormData?.eventEmitters ?? [],
                  EventFormData.empty().copyWith(type: e.type),
                ],
              ),
              showValidationError: false,
              failureOrSucessOption: none(),
            ));
          } else {
            emit(state.copyWith(
              isSaved: false,
              listenerIndex: state.connectionFormData?.eventListeners.length,
              listenerFormData: EventFormData.empty().copyWith(type: e.type),
              connectionFormData: state.connectionFormData?.copyWith(
                eventListeners: [
                  ...state.connectionFormData?.eventListeners ?? [],
                  EventFormData.empty().copyWith(type: e.type),
                ],
              ),
              showValidationError: false,
              failureOrSucessOption: none(),
            ));
          }
        },
        emitterSelected: (e) async => emit(state.copyWith(
          showValidationError: false,
          emitterIndex: e.emitterIndex,
          emitterFormData:
              state.connectionFormData?.eventEmitters[e.emitterIndex],
          failureOrSucessOption: none(),
        )),
        saveButtonPressed: (_) async {
          Either<ConnectionFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(
            isSubmitting: true,
            showValidationError: false,
            failureOrSucessOption: none(),
          ));

          if (state.connectionFormData != null &&
              state.connectionFormData!.failureOption.isNone()) {
            if (state.connectionKey == null) {
              final option = await _connectionRepository.createConnection(
                connection: Connection.fromDomain(
                  state.connectionFormData!,
                ),
              );

              if (option.isRight()) {
                emit(state.copyWith(connectionKey: option.getOrElse(() => 0)));
              }

              failureOrSuccess = option.fold(
                (l) => left(l),
                (r) => right(unit),
              );
            } else {
              failureOrSuccess = await _connectionRepository.updateConnection(
                key: state.connectionKey,
                connection: Connection.fromDomain(
                  state.connectionFormData!,
                ),
              );
            }
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            isSaved: failureOrSuccess?.isRight() ?? false,
            failureOrSucessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
