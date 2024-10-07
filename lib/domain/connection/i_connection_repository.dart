import 'package:dartz/dartz.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

abstract class IConnectionRepository {
  Future<Either<ConnectionFailure, Unit>> createConnection({
    required Connection connection,
  });
  Future<Either<ConnectionFailure, List<Connection>>> getAllConnections();
  Future<Either<ConnectionFailure, Unit>> duplicateConnection({
    required Connection connection,
  });
  Future<Either<ConnectionFailure, Unit>> deleteConnection({
    required dynamic key,
  });
}
