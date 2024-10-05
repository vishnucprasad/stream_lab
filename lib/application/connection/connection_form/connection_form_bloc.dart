import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/i_connection_repository.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/domain/connection/models/connection_form_data.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';

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
        connectionNameChanged: (e) async => emit(state.copyWith(
          connectionFormData: state.connectionFormData.copyWith(
            connectionName: ConnectionName(e.connectionName),
          ),
          failureOrSucessOption: none(),
        )),
        connectionUrlChanged: (e) async => emit(state.copyWith(
          connectionFormData: state.connectionFormData.copyWith(
            connectionUrl: ConnectionURL(e.connectionUrl),
          ),
          failureOrSucessOption: none(),
        )),
        connectionSelected: (e) async {
          emit(state.copyWith(
            isLoading: true,
            isSubmitting: false,
            isSaved: true,
            connectionKey: e.connection.key,
            connectionFormData: e.connection.toDomain(),
            showValidationError: false,
            failureOrSucessOption: none(),
          ));
        },
        saveButtonPressed: (_) async {
          Either<ConnectionFailure, Unit>? failureOrSuccess;

          emit(state.copyWith(
            isSubmitting: true,
            showValidationError: false,
            failureOrSucessOption: none(),
          ));

          if (state.connectionFormData.failureOption.isNone()) {
            failureOrSuccess = await _connectionRepository.createConnection(
              connection: Connection.fromDomain(
                state.connectionFormData,
              ),
            );
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
