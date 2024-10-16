part of 'connection_form_bloc.dart';

@freezed
class ConnectionFormEvent with _$ConnectionFormEvent {
  const factory ConnectionFormEvent.initialize() = _Initialize;
  const factory ConnectionFormEvent.connectionNameChanged({
    required String connectionName,
  }) = _ConnectionNameChanged;
  const factory ConnectionFormEvent.connectionUrlChanged({
    required String connectionUrl,
  }) = _ConnectionUrlChanged;
  const factory ConnectionFormEvent.connectionSelected({
    required Connection connection,
  }) = _ConnectionSelected;
  const factory ConnectionFormEvent.newConnectionButtonPressed() =
      _NewConnectionButtonPressed;
  const factory ConnectionFormEvent.addEvent({
    required EventType type,
  }) = _AddEvent;
  const factory ConnectionFormEvent.saveButtonPressed() = _SaveButtonPressed;
}
