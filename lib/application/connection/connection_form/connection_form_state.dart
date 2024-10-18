part of 'connection_form_bloc.dart';

@freezed
class ConnectionFormState with _$ConnectionFormState {
  const factory ConnectionFormState({
    required bool isSubmitting,
    required bool showValidationError,
    required bool isSaved,
    required dynamic connectionKey,
    required int? emitterIndex,
    required int? listenerIndex,
    required ConnectionFormData? connectionFormData,
    required Option<Either<ConnectionFailure, Unit>> failureOrSucessOption,
  }) = _ConnectionFormState;

  factory ConnectionFormState.initial() {
    return ConnectionFormState(
      isSubmitting: false,
      showValidationError: false,
      isSaved: false,
      connectionKey: null,
      emitterIndex: null,
      listenerIndex: null,
      connectionFormData: null,
      failureOrSucessOption: none(),
    );
  }
}
