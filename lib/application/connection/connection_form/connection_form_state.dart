part of 'connection_form_bloc.dart';

@freezed
class ConnectionFormState with _$ConnectionFormState {
  const factory ConnectionFormState({
    required bool isSubmitting,
    required bool showValidationError,
    required ConnectionFormData connectionFormData,
    required Option<Either<ConnectionFailure, Unit>> failureOrSucessOption,
  }) = _ConnectionFormState;

  factory ConnectionFormState.initial() {
    return ConnectionFormState(
      isSubmitting: false,
      showValidationError: false,
      connectionFormData: ConnectionFormData.empty(),
      failureOrSucessOption: none(),
    );
  }
}
