import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_lab/core/hive_config.dart';
import 'package:stream_lab/domain/connection/failures/connection_failure.dart';
import 'package:stream_lab/domain/connection/i_connection_repository.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';

@LazySingleton(as: IConnectionRepository)
class ConnectionRespository implements IConnectionRepository {
  late Box<Connection> connectionBox;

  ConnectionRespository() {
    connectionBox = Hive.box<Connection>(HiveBoxes.connections.name);
  }

  @override
  Future<Either<ConnectionFailure, Unit>> createConnection({
    required Connection connection,
  }) async {
    try {
      if (isDuplicateConnectionName(connection)) {
        return left(const ConnectionFailure.duplicateConnectionName());
      }

      await connectionBox.add(connection);
      return right(unit);
    } catch (_) {
      return left(const ConnectionFailure.clientFailure(
        messsage: 'Something went wrong, please try again.',
      ));
    }
  }

  @override
  Future<Either<ConnectionFailure, List<Connection>>>
      getAllConnections() async {
    try {
      return right(connectionBox.values.toList());
    } catch (_) {
      return left(const ConnectionFailure.clientFailure(
        messsage: 'Something went wrong, please try again.',
      ));
    }
  }

  bool isDuplicateConnectionName(Connection connection) {
    return connectionBox.values.any(
      (value) =>
          value.connectionName.toLowerCase() ==
              connection.connectionName.toLowerCase() &&
          value.key != connection.key,
    );
  }
}
