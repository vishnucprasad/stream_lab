part of 'connection_bloc.dart';

@freezed
class ConnectionEvent with _$ConnectionEvent {
  const factory ConnectionEvent.loadConnections() = _LoadConnections;
  const factory ConnectionEvent.deleteConnection({
    required dynamic key,
  }) = _DeleteConnection;
  const factory ConnectionEvent.duplicateConnection({
    required Connection connection,
  }) = _DuplicateConnection;
}
