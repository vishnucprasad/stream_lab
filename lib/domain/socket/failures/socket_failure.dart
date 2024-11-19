import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_failure.freezed.dart';

@freezed
class SocketFailure with _$SocketFailure {
  const factory SocketFailure.clientFailure({
    required String message,
  }) = _ClientFailure;
  const factory SocketFailure.serverFailure({
    required String message,
  }) = _ServerFailure;
}
