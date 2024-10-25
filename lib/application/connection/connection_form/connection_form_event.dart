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
  const factory ConnectionFormEvent.emitterSelected({
    required int emitterIndex,
  }) = _EmitterSelected;
  const factory ConnectionFormEvent.listenerSelected({
    required int listenerIndex,
  }) = _ListenerSelected;
  const factory ConnectionFormEvent.unSelectListener() = _UnSelectListener;
  const factory ConnectionFormEvent.emitterNameChanged({
    required String name,
  }) = _EmitterNameChanged;
  const factory ConnectionFormEvent.emitterDataTypeChanged({
    required EventDataType dataType,
  }) = _EmitterDataTypeChanged;
  const factory ConnectionFormEvent.emitterDataChanged({
    required String data,
  }) = _EmitterDataChanged;
  const factory ConnectionFormEvent.listenerNameChanged({
    required String name,
  }) = _ListenerNameChanged;
  const factory ConnectionFormEvent.listenerSwitchToggled({
    required bool value,
    required int listenerIndex,
  }) = _ListenerSwitchToggled;
  const factory ConnectionFormEvent.addQueryParameter() = _AddQueryParameter;
  const factory ConnectionFormEvent.queryRowChanged({
    required int rowIndex,
    required PlutoRow row,
  }) = _QueryRowChanged;
  const factory ConnectionFormEvent.queryRowChecked({
    required int rowIndex,
    required PlutoRow row,
  }) = _QueryRowChecked;
  const factory ConnectionFormEvent.queryAllRowsChecked({
    required bool isChecked,
  }) = _QueryAllRowsChecked;
  const factory ConnectionFormEvent.saveButtonPressed() = _SaveButtonPressed;
}
