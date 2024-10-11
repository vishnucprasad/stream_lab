part of 'event_form_bloc.dart';

@freezed
class EventFormState with _$EventFormState {
  const factory EventFormState({
    required bool isSubmitting,
    required bool showValidationError,
    required dynamic eventKey,
    required EventFormData eventFormData,
    required Option<Either<EventFailure, Unit>> failureOrSucessOption,
  }) = _EventFormState;

  factory EventFormState.initial() {
    return EventFormState(
      isSubmitting: false,
      showValidationError: false,
      eventKey: null,
      eventFormData: EventFormData.empty(),
      failureOrSucessOption: none(),
    );
  }
}
