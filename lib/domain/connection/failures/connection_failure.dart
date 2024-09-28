import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_failure.freezed.dart';

@freezed
class ConnectionFailure with _$ConnectionFailure {
  const factory ConnectionFailure.clientFailure({
    required String messsage,
  }) = _ClientFailure;
  const factory ConnectionFailure.serverFailure({
    required String messsage,
  }) = _ServerFailure;
  const factory ConnectionFailure.duplicateConnectionName() =
      _DuplicateConnectionName;
}
