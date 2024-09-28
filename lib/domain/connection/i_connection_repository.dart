import 'package:dartz/dartz.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

abstract class IConnectionRepository {
  Future<Either<ConnectionFailure, Unit>> createConnection({
    required Connection connection,
  });
}
