import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/models/connection_form_data.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';

part 'connection_form_event.dart';
part 'connection_form_state.dart';
part 'connection_form_bloc.freezed.dart';

@injectable
class ConnectionFormBloc
    extends Bloc<ConnectionFormEvent, ConnectionFormState> {
  ConnectionFormBloc() : super(ConnectionFormState.initial()) {
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
        saveButtonPressed: (_) async {
          Either<ConnectionFailure, Unit>? failureOrSuccess;

          if (state.connectionFormData.failureOption.isNone()) {
            // Logic for saving connection data goes here
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            failureOrSucessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
