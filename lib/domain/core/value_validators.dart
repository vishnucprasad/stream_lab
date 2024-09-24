import 'package:dartz/dartz.dart';
import 'package:stream_lab/domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(const ValueFailure.empty());
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  }
  return left(ValueFailure.exceedingLength(
    failedValue: input,
    maxLength: maxLength,
  ));
}

Either<ValueFailure<String>, String> validateURL(
  String input,
) {
  const urlRegex =
      r'^(https?:\/\/)?((localhost:\d{2,5})|(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d{2,5})?)|([\da-z\.-]+\.[a-z\.]{2,6}))([\/\w \.-]*)*\/?$';
  if (RegExp(urlRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidURL(failedValue: input));
}
