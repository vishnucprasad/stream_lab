import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/i_connection_repository.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

part 'connection_event.dart';
part 'connection_state.dart';
part 'connection_bloc.freezed.dart';

@injectable
class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  final IConnectionRepository _connectionRepository;
  ConnectionBloc(this._connectionRepository)
      : super(ConnectionState.initial()) {
    on<ConnectionEvent>((event, emit) async {
      await event.map(
        loadConnections: (_) async {
          emit(state.copyWith(
            isLoading: true,
            failureOrSuccessOption: none(),
          ));

          final option = await _connectionRepository.getAllConnections();

          emit(
            option.fold(
              (l) => state.copyWith(
                isLoading: false,
                failureOrSuccessOption: some(left(l)),
              ),
              (r) => state.copyWith(
                isLoading: false,
                connections: r,
                failureOrSuccessOption: some(right(unit)),
              ),
            ),
          );
        },
      );
    });
  }
}
