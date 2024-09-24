import 'package:dartz/dartz.dart';
import 'package:stream_lab/domain/core/value_failure.dart';
import 'package:stream_lab/domain/core/value_object.dart';
import 'package:stream_lab/domain/core/value_validators.dart';

class ConnectionName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ConnectionName(String input) {
    return ConnectionName._(validateStringNotEmpty(input));
  }
  const ConnectionName._(this.value);
}

class ConnectionURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ConnectionURL(String input) {
    return ConnectionURL._(validateURL(input));
  }
  const ConnectionURL._(this.value);
}
