// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventFormData {
  EventName get name => throw _privateConstructorUsedError;
  EventType get type => throw _privateConstructorUsedError;
  EventDataType get dataType => throw _privateConstructorUsedError;
  EventData? get data => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventFormDataCopyWith<EventFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormDataCopyWith<$Res> {
  factory $EventFormDataCopyWith(
          EventFormData value, $Res Function(EventFormData) then) =
      _$EventFormDataCopyWithImpl<$Res, EventFormData>;
  @useResult
  $Res call(
      {EventName name,
      EventType type,
      EventDataType dataType,
      EventData? data,
      bool isEnabled});
}

/// @nodoc
class _$EventFormDataCopyWithImpl<$Res, $Val extends EventFormData>
    implements $EventFormDataCopyWith<$Res> {
  _$EventFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? dataType = null,
    Object? data = freezed,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as EventName,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as EventDataType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventData?,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFormDataImplCopyWith<$Res>
    implements $EventFormDataCopyWith<$Res> {
  factory _$$EventFormDataImplCopyWith(
          _$EventFormDataImpl value, $Res Function(_$EventFormDataImpl) then) =
      __$$EventFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventName name,
      EventType type,
      EventDataType dataType,
      EventData? data,
      bool isEnabled});
}

/// @nodoc
class __$$EventFormDataImplCopyWithImpl<$Res>
    extends _$EventFormDataCopyWithImpl<$Res, _$EventFormDataImpl>
    implements _$$EventFormDataImplCopyWith<$Res> {
  __$$EventFormDataImplCopyWithImpl(
      _$EventFormDataImpl _value, $Res Function(_$EventFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? dataType = null,
    Object? data = freezed,
    Object? isEnabled = null,
  }) {
    return _then(_$EventFormDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as EventName,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as EventDataType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventData?,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EventFormDataImpl extends _EventFormData {
  const _$EventFormDataImpl(
      {required this.name,
      required this.type,
      required this.dataType,
      required this.data,
      required this.isEnabled})
      : super._();

  @override
  final EventName name;
  @override
  final EventType type;
  @override
  final EventDataType dataType;
  @override
  final EventData? data;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'EventFormData(name: $name, type: $type, dataType: $dataType, data: $data, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFormDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, dataType, data, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFormDataImplCopyWith<_$EventFormDataImpl> get copyWith =>
      __$$EventFormDataImplCopyWithImpl<_$EventFormDataImpl>(this, _$identity);
}

abstract class _EventFormData extends EventFormData {
  const factory _EventFormData(
      {required final EventName name,
      required final EventType type,
      required final EventDataType dataType,
      required final EventData? data,
      required final bool isEnabled}) = _$EventFormDataImpl;
  const _EventFormData._() : super._();

  @override
  EventName get name;
  @override
  EventType get type;
  @override
  EventDataType get dataType;
  @override
  EventData? get data;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$EventFormDataImplCopyWith<_$EventFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
