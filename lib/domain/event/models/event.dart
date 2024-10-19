// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/event/models/event_form_data.dart';
import 'package:stream_lab/domain/event/models/event_value_objects.dart';

part 'event.g.dart';

@HiveType(typeId: 1)
class Event extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int typeIndex;

  @HiveField(2)
  final int dataTypeIndex;

  @HiveField(3)
  final String? data;

  @HiveField(4)
  final bool isEnabled;

  Event({
    required this.name,
    required this.typeIndex,
    required this.dataTypeIndex,
    required this.data,
    required this.isEnabled,
  });

  factory Event.fromDomain(EventFormData eventFormData) {
    return Event(
      name: eventFormData.name.getOrCrash(),
      typeIndex: eventFormData.type.index,
      dataTypeIndex: eventFormData.dataType.index,
      data: eventFormData.data?.getOrCrash(),
      isEnabled: eventFormData.isEnabled,
    );
  }

  EventFormData toDomain() {
    return EventFormData(
      name: EventName(name),
      type: EventType.values[typeIndex],
      dataType: EventDataType.values[dataTypeIndex],
      data: data != null ? EventData(data!) : null,
      isEnabled: isEnabled,
    );
  }

  Event copyWith({
    String? name,
    int? typeIndex,
    int? dataTypeIndex,
    String? data,
    bool? isEnabled,
  }) {
    return Event(
      name: name ?? this.name,
      typeIndex: typeIndex ?? this.typeIndex,
      dataTypeIndex: dataTypeIndex ?? this.dataTypeIndex,
      data: data ?? this.data,
      isEnabled: isEnabled ?? this.isEnabled,
    );
  }

  @override
  String toString() {
    return 'Event(name: $name, typeIndex: $typeIndex, dataTypeIndex: $dataTypeIndex, data: $data, isEnabled: $isEnabled)';
  }
}
