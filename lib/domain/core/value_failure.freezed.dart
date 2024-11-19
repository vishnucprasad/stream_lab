// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(T failedValue) invalid,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) invalidURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(T failedValue)? invalid,
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue)? invalidURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(T failedValue)? invalid,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? invalidURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidURL<T> value) invalidURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidURL<T> value)? invalidURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidURL<T> value)? invalidURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl<T> implements _Empty<T> {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'ValueFailure<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(T failedValue) invalid,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) invalidURL,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(T failedValue)? invalid,
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue)? invalidURL,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(T failedValue)? invalid,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? invalidURL,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidURL<T> value) invalidURL,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidURL<T> value)? invalidURL,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidURL<T> value)? invalidURL,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty() = _$EmptyImpl<T>;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<T, $Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl<T> value, $Res Function(_$InvalidImpl<T>) then) =
      __$$InvalidImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidImpl<T>>
    implements _$$InvalidImplCopyWith<T, $Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl<T> _value, $Res Function(_$InvalidImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidImpl<T> implements _Invalid<T> {
  const _$InvalidImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalid(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      __$$InvalidImplCopyWithImpl<T, _$InvalidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(T failedValue) invalid,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) invalidURL,
  }) {
    return invalid(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(T failedValue)? invalid,
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue)? invalidURL,
  }) {
    return invalid?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(T failedValue)? invalid,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? invalidURL,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidURL<T> value) invalidURL,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidURL<T> value)? invalidURL,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidURL<T> value)? invalidURL,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid<T> implements ValueFailure<T> {
  const factory _Invalid({required final T failedValue}) = _$InvalidImpl<T>;

  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: null == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements _ExceedingLength<T> {
  const _$ExceedingLengthImpl(
      {required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), maxLength);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(T failedValue) invalid,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) invalidURL,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(T failedValue)? invalid,
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue)? invalidURL,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(T failedValue)? invalid,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? invalidURL,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidURL<T> value) invalidURL,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidURL<T> value)? invalidURL,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidURL<T> value)? invalidURL,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required final T failedValue,
      required final int maxLength}) = _$ExceedingLengthImpl<T>;

  T get failedValue;
  int get maxLength;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidURLImplCopyWith<T, $Res> {
  factory _$$InvalidURLImplCopyWith(
          _$InvalidURLImpl<T> value, $Res Function(_$InvalidURLImpl<T>) then) =
      __$$InvalidURLImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidURLImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidURLImpl<T>>
    implements _$$InvalidURLImplCopyWith<T, $Res> {
  __$$InvalidURLImplCopyWithImpl(
      _$InvalidURLImpl<T> _value, $Res Function(_$InvalidURLImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidURLImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidURLImpl<T> implements _InvalidURL<T> {
  const _$InvalidURLImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidURL(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidURLImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidURLImplCopyWith<T, _$InvalidURLImpl<T>> get copyWith =>
      __$$InvalidURLImplCopyWithImpl<T, _$InvalidURLImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(T failedValue) invalid,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) invalidURL,
  }) {
    return invalidURL(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(T failedValue)? invalid,
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue)? invalidURL,
  }) {
    return invalidURL?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(T failedValue)? invalid,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? invalidURL,
    required TResult orElse(),
  }) {
    if (invalidURL != null) {
      return invalidURL(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidURL<T> value) invalidURL,
  }) {
    return invalidURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_InvalidURL<T> value)? invalidURL,
  }) {
    return invalidURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidURL<T> value)? invalidURL,
    required TResult orElse(),
  }) {
    if (invalidURL != null) {
      return invalidURL(this);
    }
    return orElse();
  }
}

abstract class _InvalidURL<T> implements ValueFailure<T> {
  const factory _InvalidURL({required final T failedValue}) =
      _$InvalidURLImpl<T>;

  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidURLImplCopyWith<T, _$InvalidURLImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
