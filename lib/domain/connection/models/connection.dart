// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

import 'package:stream_lab/domain/connection/models/connection_form_data.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';

part 'connection.g.dart';

@HiveType(typeId: 0)
class Connection extends HiveObject {
  @HiveField(0)
  final String connectionName;

  @HiveField(1)
  final String connectionUrl;

  Connection({
    required this.connectionName,
    required this.connectionUrl,
  });

  factory Connection.fromDomain(ConnectionFormData connectionFormData) {
    return Connection(
      connectionName: connectionFormData.connectionName.getOrCrash(),
      connectionUrl: connectionFormData.connectionUrl.getOrCrash(),
    );
  }

  ConnectionFormData toDomain() {
    return ConnectionFormData(
      connectionName: ConnectionName(connectionName),
      connectionUrl: ConnectionURL(connectionUrl),
    );
  }

  Connection copyWith({
    String? connectionName,
    String? connectionUrl,
  }) {
    return Connection(
      connectionName: connectionName ?? this.connectionName,
      connectionUrl: connectionUrl ?? this.connectionUrl,
    );
  }

  @override
  String toString() {
    return 'Connection(connectionName: $connectionName, connectionUrl: $connectionUrl)';
  }
}
