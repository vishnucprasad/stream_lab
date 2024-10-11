import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';
import 'package:stream_lab/domain/core/value_failure.dart';
import 'package:stream_lab/domain/event/models/event_form_data.dart';

part 'connection_form_data.freezed.dart';

@freezed
class ConnectionFormData with _$ConnectionFormData {
  const ConnectionFormData._();
  const factory ConnectionFormData({
    required ConnectionName connectionName,
    required ConnectionURL connectionUrl,
    required List<EventFormData> eventEmitters,
    required List<EventFormData> eventListeners,
  }) = _ConnectionFormData;

  factory ConnectionFormData.empty() {
    return ConnectionFormData(
      connectionName: ConnectionName("New Connection"),
      connectionUrl: ConnectionURL(""),
      eventEmitters: [],
      eventListeners: [],
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return connectionName.failureOrUnit
        .andThen(connectionUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
