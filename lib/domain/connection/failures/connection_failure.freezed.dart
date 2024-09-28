// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messsage) clientFailure,
    required TResult Function(String messsage) serverFailure,
    required TResult Function() duplicateConnectionName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messsage)? clientFailure,
    TResult? Function(String messsage)? serverFailure,
    TResult? Function()? duplicateConnectionName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messsage)? clientFailure,
    TResult Function(String messsage)? serverFailure,
    TResult Function()? duplicateConnectionName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicateConnectionName value)
        duplicateConnectionName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_DuplicateConnectionName value)? duplicateConnectionName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicateConnectionName value)? duplicateConnectionName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFailureCopyWith<$Res> {
  factory $ConnectionFailureCopyWith(
          ConnectionFailure value, $Res Function(ConnectionFailure) then) =
      _$ConnectionFailureCopyWithImpl<$Res, ConnectionFailure>;
}

/// @nodoc
class _$ConnectionFailureCopyWithImpl<$Res, $Val extends ConnectionFailure>
    implements $ConnectionFailureCopyWith<$Res> {
  _$ConnectionFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messsage});
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messsage = null,
  }) {
    return _then(_$ClientFailureImpl(
      messsage: null == messsage
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientFailureImpl implements _ClientFailure {
  const _$ClientFailureImpl({required this.messsage});

  @override
  final String messsage;

  @override
  String toString() {
    return 'ConnectionFailure.clientFailure(messsage: $messsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientFailureImpl &&
            (identical(other.messsage, messsage) ||
                other.messsage == messsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      __$$ClientFailureImplCopyWithImpl<_$ClientFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messsage) clientFailure,
    required TResult Function(String messsage) serverFailure,
    required TResult Function() duplicateConnectionName,
  }) {
    return clientFailure(messsage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messsage)? clientFailure,
    TResult? Function(String messsage)? serverFailure,
    TResult? Function()? duplicateConnectionName,
  }) {
    return clientFailure?.call(messsage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messsage)? clientFailure,
    TResult Function(String messsage)? serverFailure,
    TResult Function()? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(messsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicateConnectionName value)
        duplicateConnectionName,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_DuplicateConnectionName value)? duplicateConnectionName,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicateConnectionName value)? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements ConnectionFailure {
  const factory _ClientFailure({required final String messsage}) =
      _$ClientFailureImpl;

  String get messsage;
  @JsonKey(ignore: true)
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messsage});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messsage = null,
  }) {
    return _then(_$ServerFailureImpl(
      messsage: null == messsage
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl({required this.messsage});

  @override
  final String messsage;

  @override
  String toString() {
    return 'ConnectionFailure.serverFailure(messsage: $messsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.messsage, messsage) ||
                other.messsage == messsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messsage) clientFailure,
    required TResult Function(String messsage) serverFailure,
    required TResult Function() duplicateConnectionName,
  }) {
    return serverFailure(messsage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messsage)? clientFailure,
    TResult? Function(String messsage)? serverFailure,
    TResult? Function()? duplicateConnectionName,
  }) {
    return serverFailure?.call(messsage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messsage)? clientFailure,
    TResult Function(String messsage)? serverFailure,
    TResult Function()? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(messsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicateConnectionName value)
        duplicateConnectionName,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_DuplicateConnectionName value)? duplicateConnectionName,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicateConnectionName value)? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements ConnectionFailure {
  const factory _ServerFailure({required final String messsage}) =
      _$ServerFailureImpl;

  String get messsage;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuplicateConnectionNameImplCopyWith<$Res> {
  factory _$$DuplicateConnectionNameImplCopyWith(
          _$DuplicateConnectionNameImpl value,
          $Res Function(_$DuplicateConnectionNameImpl) then) =
      __$$DuplicateConnectionNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DuplicateConnectionNameImplCopyWithImpl<$Res>
    extends _$ConnectionFailureCopyWithImpl<$Res, _$DuplicateConnectionNameImpl>
    implements _$$DuplicateConnectionNameImplCopyWith<$Res> {
  __$$DuplicateConnectionNameImplCopyWithImpl(
      _$DuplicateConnectionNameImpl _value,
      $Res Function(_$DuplicateConnectionNameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DuplicateConnectionNameImpl implements _DuplicateConnectionName {
  const _$DuplicateConnectionNameImpl();

  @override
  String toString() {
    return 'ConnectionFailure.duplicateConnectionName()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateConnectionNameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messsage) clientFailure,
    required TResult Function(String messsage) serverFailure,
    required TResult Function() duplicateConnectionName,
  }) {
    return duplicateConnectionName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messsage)? clientFailure,
    TResult? Function(String messsage)? serverFailure,
    TResult? Function()? duplicateConnectionName,
  }) {
    return duplicateConnectionName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messsage)? clientFailure,
    TResult Function(String messsage)? serverFailure,
    TResult Function()? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (duplicateConnectionName != null) {
      return duplicateConnectionName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_DuplicateConnectionName value)
        duplicateConnectionName,
  }) {
    return duplicateConnectionName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_DuplicateConnectionName value)? duplicateConnectionName,
  }) {
    return duplicateConnectionName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_DuplicateConnectionName value)? duplicateConnectionName,
    required TResult orElse(),
  }) {
    if (duplicateConnectionName != null) {
      return duplicateConnectionName(this);
    }
    return orElse();
  }
}

abstract class _DuplicateConnectionName implements ConnectionFailure {
  const factory _DuplicateConnectionName() = _$DuplicateConnectionNameImpl;
}
