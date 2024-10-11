import 'package:dartz/dartz.dart';
import 'package:stream_lab/domain/core/value_failure.dart';
import 'package:stream_lab/domain/core/value_object.dart';
import 'package:stream_lab/domain/core/value_validators.dart';

class EventName extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EventName(String input) {
    return EventName._(validateStringNotEmpty(input));
  }
  const EventName._(this.value);
}
