import 'package:stream_lab/domain/core/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const errorMessage =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$errorMessage Failure was: $valueFailure');
  }
}
