// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pluto_grid/pluto_grid.dart';

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

  @HiveField(6)
  final List<Map<String, dynamic>> queryParameters;

  @HiveField(7)
  final List<Map<String, dynamic>> headers;

  @HiveField(8)
  final List<Map<String, dynamic>> auth;

  Connection({
    required this.connectionName,
    required this.connectionUrl,
    required this.eventEmitters,
    required this.eventListeners,
    required this.connectionStatusIndex,
    required this.queryParameters,
    required this.headers,
    required this.auth,
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
      queryParameters: connectionFormData.queryParameters
          .map((element) => element.toJson())
          .toList(),
      headers: connectionFormData.headers
          .map((element) => element.toJson())
          .toList(),
      auth: connectionFormData.auth.map((element) => element.toJson()).toList(),
    );
  }

  ConnectionFormData toDomain() {
    return ConnectionFormData(
      connectionName: ConnectionName(connectionName),
      connectionUrl: ConnectionURL(connectionUrl),
      eventEmitters: eventEmitters.map((event) => event.toDomain()).toList(),
      eventListeners: eventListeners.map((event) => event.toDomain()).toList(),
      connectionStatus: ConnectionStatus.values[connectionStatusIndex],
      queryParameters:
          queryParameters.map((element) => PlutoRow.fromJson(element)).toList(),
      headers: headers.map((element) => PlutoRow.fromJson(element)).toList(),
      auth: auth.map((element) => PlutoRow.fromJson(element)).toList(),
    );
  }

  Connection copyWith({
    String? connectionName,
    String? connectionUrl,
    List<Event>? eventEmitters,
    List<Event>? eventListeners,
    int? connectionStatusIndex,
    List<Map<String, dynamic>>? queryParameters,
    List<Map<String, dynamic>>? headers,
    List<Map<String, dynamic>>? auth,
  }) {
    return Connection(
      connectionName: connectionName ?? this.connectionName,
      connectionUrl: connectionUrl ?? this.connectionUrl,
      eventEmitters: eventEmitters ?? this.eventEmitters,
      eventListeners: eventListeners ?? this.eventListeners,
      connectionStatusIndex:
          connectionStatusIndex ?? this.connectionStatusIndex,
      queryParameters: queryParameters ?? this.queryParameters,
      headers: headers ?? this.headers,
      auth: auth ?? this.auth,
    );
  }

  @override
  String toString() {
    return 'Connection(connectionName: $connectionName, connectionUrl: $connectionUrl, eventEmitters: $eventEmitters, eventListeners: $eventListeners, connectionStatusIndex: $connectionStatusIndex, queryParameters: $queryParameters, headers: $headers, auth: $auth)';
  }
}
