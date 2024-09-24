import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_lab/domain/connection/models/connection_value_objects.dart';
import 'package:stream_lab/domain/core/value_failure.dart';

part 'connection_form_data.freezed.dart';

@freezed
class ConnectionFormData with _$ConnectionFormData {
  const ConnectionFormData._();
  const factory ConnectionFormData({
    required ConnectionName connectionName,
    required ConnectionURL connectionUrl,
  }) = _ConnectionFormData;

  factory ConnectionFormData.empty() {
    return ConnectionFormData(
      connectionName: ConnectionName("New Connection"),
      connectionUrl: ConnectionURL(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return connectionName.failureOrUnit
        .andThen(connectionUrl.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
