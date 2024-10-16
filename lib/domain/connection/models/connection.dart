// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/connection/models/connection_form_data.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';
import 'package:stream_lab/domain/event/models/event.dart';

part 'connection.g.dart';

@HiveType(typeId: 0)
class Connection extends HiveObject {
  @HiveField(0)
  final String connectionName;

  @HiveField(1)
  final String connectionUrl;

  @HiveField(2)
  final List<Event> eventEmitters;

  @HiveField(4)
  final List<Event> eventListeners;

  @HiveField(5)
  final int connectionStatusIndex;

  Connection({
    required this.connectionName,
    required this.connectionUrl,
    required this.eventEmitters,
    required this.eventListeners,
    required this.connectionStatusIndex,
  });

  factory Connection.fromDomain(ConnectionFormData connectionFormData) {
    return Connection(
      connectionName: connectionFormData.connectionName.getOrCrash(),
      connectionUrl: connectionFormData.connectionUrl.getOrCrash(),
      eventEmitters: connectionFormData.eventEmitters
          .map((event) => Event.fromDomain(event))
          .toList(),
      eventListeners: connectionFormData.eventListeners
          .map((event) => Event.fromDomain(event))
          .toList(),
      connectionStatusIndex: connectionFormData.connectionStatus.index,
    );
  }

  ConnectionFormData toDomain() {
    return ConnectionFormData(
      connectionName: ConnectionName(connectionName),
      connectionUrl: ConnectionURL(connectionUrl),
      eventEmitters: eventEmitters.map((event) => event.toDomain()).toList(),
      eventListeners: eventListeners.map((event) => event.toDomain()).toList(),
      connectionStatus: ConnectionStatus.values[connectionStatusIndex],
    );
  }

  Connection copyWith({
    String? connectionName,
    String? connectionUrl,
    List<Event>? eventEmitters,
    List<Event>? eventListeners,
    int? connectionStatusIndex,
  }) {
    return Connection(
      connectionName: connectionName ?? this.connectionName,
      connectionUrl: connectionUrl ?? this.connectionUrl,
      eventEmitters: eventEmitters ?? this.eventEmitters,
      eventListeners: eventListeners ?? this.eventListeners,
      connectionStatusIndex:
          connectionStatusIndex ?? this.connectionStatusIndex,
    );
  }

  @override
  String toString() {
    return 'Connection(connectionName: $connectionName, connectionUrl: $connectionUrl, eventEmitters: $eventEmitters, eventListeners: $eventListeners, connectionStatusIndex: $connectionStatusIndex)';
  }
}
