part of 'connection_bloc.dart';

@freezed
class ConnectionState with _$ConnectionState {
  const factory ConnectionState({
    required bool isLoading,
    required List<Connection> connections,
    required Option<Either<ConnectionFailure, Unit>> failureOrSuccessOption,
  }) = _ConnectionState;

  factory ConnectionState.initial() {
    return ConnectionState(
      isLoading: false,
      connections: [],
      failureOrSuccessOption: none(),
    );
  }
}
