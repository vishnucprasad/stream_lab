// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormEventCopyWith<$Res> {
  factory $EventFormEventCopyWith(
          EventFormEvent value, $Res Function(EventFormEvent) then) =
      _$EventFormEventCopyWithImpl<$Res, EventFormEvent>;
}

/// @nodoc
class _$EventFormEventCopyWithImpl<$Res, $Val extends EventFormEvent>
    implements $EventFormEventCopyWith<$Res> {
  _$EventFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'EventFormEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EventFormEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$EventFormState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  dynamic get eventKey => throw _privateConstructorUsedError;
  EventFormData get eventFormData => throw _privateConstructorUsedError;
  Option<Either<EventFailure, Unit>> get failureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventFormStateCopyWith<EventFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFormStateCopyWith<$Res> {
  factory $EventFormStateCopyWith(
          EventFormState value, $Res Function(EventFormState) then) =
      _$EventFormStateCopyWithImpl<$Res, EventFormState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showValidationError,
      dynamic eventKey,
      EventFormData eventFormData,
      Option<Either<EventFailure, Unit>> failureOrSucessOption});

  $EventFormDataCopyWith<$Res> get eventFormData;
}

/// @nodoc
class _$EventFormStateCopyWithImpl<$Res, $Val extends EventFormState>
    implements $EventFormStateCopyWith<$Res> {
  _$EventFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showValidationError = null,
    Object? eventKey = freezed,
    Object? eventFormData = null,
    Object? failureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      eventKey: freezed == eventKey
          ? _value.eventKey
          : eventKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventFormData: null == eventFormData
          ? _value.eventFormData
          : eventFormData // ignore: cast_nullable_to_non_nullable
              as EventFormData,
      failureOrSucessOption: null == failureOrSucessOption
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<EventFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFormDataCopyWith<$Res> get eventFormData {
    return $EventFormDataCopyWith<$Res>(_value.eventFormData, (value) {
      return _then(_value.copyWith(eventFormData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventFormStateImplCopyWith<$Res>
    implements $EventFormStateCopyWith<$Res> {
  factory _$$EventFormStateImplCopyWith(_$EventFormStateImpl value,
          $Res Function(_$EventFormStateImpl) then) =
      __$$EventFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showValidationError,
      dynamic eventKey,
      EventFormData eventFormData,
      Option<Either<EventFailure, Unit>> failureOrSucessOption});

  @override
  $EventFormDataCopyWith<$Res> get eventFormData;
}

/// @nodoc
class __$$EventFormStateImplCopyWithImpl<$Res>
    extends _$EventFormStateCopyWithImpl<$Res, _$EventFormStateImpl>
    implements _$$EventFormStateImplCopyWith<$Res> {
  __$$EventFormStateImplCopyWithImpl(
      _$EventFormStateImpl _value, $Res Function(_$EventFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showValidationError = null,
    Object? eventKey = freezed,
    Object? eventFormData = null,
    Object? failureOrSucessOption = null,
  }) {
    return _then(_$EventFormStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      eventKey: freezed == eventKey
          ? _value.eventKey
          : eventKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventFormData: null == eventFormData
          ? _value.eventFormData
          : eventFormData // ignore: cast_nullable_to_non_nullable
              as EventFormData,
      failureOrSucessOption: null == failureOrSucessOption
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<EventFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$EventFormStateImpl implements _EventFormState {
  const _$EventFormStateImpl(
      {required this.isSubmitting,
      required this.showValidationError,
      required this.eventKey,
      required this.eventFormData,
      required this.failureOrSucessOption});

  @override
  final bool isSubmitting;
  @override
  final bool showValidationError;
  @override
  final dynamic eventKey;
  @override
  final EventFormData eventFormData;
  @override
  final Option<Either<EventFailure, Unit>> failureOrSucessOption;

  @override
  String toString() {
    return 'EventFormState(isSubmitting: $isSubmitting, showValidationError: $showValidationError, eventKey: $eventKey, eventFormData: $eventFormData, failureOrSucessOption: $failureOrSucessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFormStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            const DeepCollectionEquality().equals(other.eventKey, eventKey) &&
            (identical(other.eventFormData, eventFormData) ||
                other.eventFormData == eventFormData) &&
            (identical(other.failureOrSucessOption, failureOrSucessOption) ||
                other.failureOrSucessOption == failureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      showValidationError,
      const DeepCollectionEquality().hash(eventKey),
      eventFormData,
      failureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFormStateImplCopyWith<_$EventFormStateImpl> get copyWith =>
      __$$EventFormStateImplCopyWithImpl<_$EventFormStateImpl>(
          this, _$identity);
}

abstract class _EventFormState implements EventFormState {
  const factory _EventFormState(
      {required final bool isSubmitting,
      required final bool showValidationError,
      required final dynamic eventKey,
      required final EventFormData eventFormData,
      required final Option<Either<EventFailure, Unit>>
          failureOrSucessOption}) = _$EventFormStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get showValidationError;
  @override
  dynamic get eventKey;
  @override
  EventFormData get eventFormData;
  @override
  Option<Either<EventFailure, Unit>> get failureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$EventFormStateImplCopyWith<_$EventFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
