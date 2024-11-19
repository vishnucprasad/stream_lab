// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_action_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppActionState {
  bool get isMainDividerHovered => throw _privateConstructorUsedError;
  bool get isSubdividerHovered => throw _privateConstructorUsedError;

  /// Create a copy of AppActionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppActionStateCopyWith<AppActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppActionStateCopyWith<$Res> {
  factory $AppActionStateCopyWith(
          AppActionState value, $Res Function(AppActionState) then) =
      _$AppActionStateCopyWithImpl<$Res, AppActionState>;
  @useResult
  $Res call({bool isMainDividerHovered, bool isSubdividerHovered});
}

/// @nodoc
class _$AppActionStateCopyWithImpl<$Res, $Val extends AppActionState>
    implements $AppActionStateCopyWith<$Res> {
  _$AppActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppActionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMainDividerHovered = null,
    Object? isSubdividerHovered = null,
  }) {
    return _then(_value.copyWith(
      isMainDividerHovered: null == isMainDividerHovered
          ? _value.isMainDividerHovered
          : isMainDividerHovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubdividerHovered: null == isSubdividerHovered
          ? _value.isSubdividerHovered
          : isSubdividerHovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppActionStateImplCopyWith<$Res>
    implements $AppActionStateCopyWith<$Res> {
  factory _$$AppActionStateImplCopyWith(_$AppActionStateImpl value,
          $Res Function(_$AppActionStateImpl) then) =
      __$$AppActionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMainDividerHovered, bool isSubdividerHovered});
}

/// @nodoc
class __$$AppActionStateImplCopyWithImpl<$Res>
    extends _$AppActionStateCopyWithImpl<$Res, _$AppActionStateImpl>
    implements _$$AppActionStateImplCopyWith<$Res> {
  __$$AppActionStateImplCopyWithImpl(
      _$AppActionStateImpl _value, $Res Function(_$AppActionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppActionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMainDividerHovered = null,
    Object? isSubdividerHovered = null,
  }) {
    return _then(_$AppActionStateImpl(
      isMainDividerHovered: null == isMainDividerHovered
          ? _value.isMainDividerHovered
          : isMainDividerHovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubdividerHovered: null == isSubdividerHovered
          ? _value.isSubdividerHovered
          : isSubdividerHovered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppActionStateImpl implements _AppActionState {
  const _$AppActionStateImpl(
      {required this.isMainDividerHovered, required this.isSubdividerHovered});

  @override
  final bool isMainDividerHovered;
  @override
  final bool isSubdividerHovered;

  @override
  String toString() {
    return 'AppActionState(isMainDividerHovered: $isMainDividerHovered, isSubdividerHovered: $isSubdividerHovered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppActionStateImpl &&
            (identical(other.isMainDividerHovered, isMainDividerHovered) ||
                other.isMainDividerHovered == isMainDividerHovered) &&
            (identical(other.isSubdividerHovered, isSubdividerHovered) ||
                other.isSubdividerHovered == isSubdividerHovered));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isMainDividerHovered, isSubdividerHovered);

  /// Create a copy of AppActionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppActionStateImplCopyWith<_$AppActionStateImpl> get copyWith =>
      __$$AppActionStateImplCopyWithImpl<_$AppActionStateImpl>(
          this, _$identity);
}

abstract class _AppActionState implements AppActionState {
  const factory _AppActionState(
      {required final bool isMainDividerHovered,
      required final bool isSubdividerHovered}) = _$AppActionStateImpl;

  @override
  bool get isMainDividerHovered;
  @override
  bool get isSubdividerHovered;

  /// Create a copy of AppActionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppActionStateImplCopyWith<_$AppActionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
