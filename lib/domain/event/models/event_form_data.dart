import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/core/value_failure.dart';
import 'package:stream_lab/domain/event/models/event_value_objects.dart';

part 'event_form_data.freezed.dart';

@freezed
class EventFormData with _$EventFormData {
  const EventFormData._();
  const factory EventFormData({
    required EventName name,
    required EventType type,
    required EventDataType dataType,
    required EventData? data,
    required bool isEnabled,
  }) = _EventFormData;

  factory EventFormData.empty() {
    return EventFormData(
      name: EventName('NEW_EVENT'),
      type: EventType.listener,
      dataType: EventDataType.text,
      data: null,
      isEnabled: true,
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(data == null ? right(unit) : data!.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
