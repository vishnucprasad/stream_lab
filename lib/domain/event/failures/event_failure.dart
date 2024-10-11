import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_failure.freezed.dart';

@freezed
class EventFailure with _$EventFailure {
  const factory EventFailure.clientFailure({
    required String message,
  }) = _ClientFailure;
  const factory EventFailure.serverFailure({
    required String message,
  }) = _ServerFailure;
}
