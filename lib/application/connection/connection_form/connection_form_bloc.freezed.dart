// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFormEventCopyWith<$Res> {
  factory $ConnectionFormEventCopyWith(
          ConnectionFormEvent value, $Res Function(ConnectionFormEvent) then) =
      _$ConnectionFormEventCopyWithImpl<$Res, ConnectionFormEvent>;
}

/// @nodoc
class _$ConnectionFormEventCopyWithImpl<$Res, $Val extends ConnectionFormEvent>
    implements $ConnectionFormEventCopyWith<$Res> {
  _$ConnectionFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectionNameChangedImplCopyWith<$Res> {
  factory _$$ConnectionNameChangedImplCopyWith(
          _$ConnectionNameChangedImpl value,
          $Res Function(_$ConnectionNameChangedImpl) then) =
      __$$ConnectionNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String connectionName});
}

/// @nodoc
class __$$ConnectionNameChangedImplCopyWithImpl<$Res>
    extends _$ConnectionFormEventCopyWithImpl<$Res, _$ConnectionNameChangedImpl>
    implements _$$ConnectionNameChangedImplCopyWith<$Res> {
  __$$ConnectionNameChangedImplCopyWithImpl(_$ConnectionNameChangedImpl _value,
      $Res Function(_$ConnectionNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionName = null,
  }) {
    return _then(_$ConnectionNameChangedImpl(
      connectionName: null == connectionName
          ? _value.connectionName
          : connectionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionNameChangedImpl implements _ConnectionNameChanged {
  const _$ConnectionNameChangedImpl({required this.connectionName});

  @override
  final String connectionName;

  @override
  String toString() {
    return 'ConnectionFormEvent.connectionNameChanged(connectionName: $connectionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionNameChangedImpl &&
            (identical(other.connectionName, connectionName) ||
                other.connectionName == connectionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionNameChangedImplCopyWith<_$ConnectionNameChangedImpl>
      get copyWith => __$$ConnectionNameChangedImplCopyWithImpl<
          _$ConnectionNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) {
    return connectionNameChanged(connectionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) {
    return connectionNameChanged?.call(connectionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionNameChanged != null) {
      return connectionNameChanged(connectionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return connectionNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return connectionNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionNameChanged != null) {
      return connectionNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectionNameChanged implements ConnectionFormEvent {
  const factory _ConnectionNameChanged({required final String connectionName}) =
      _$ConnectionNameChangedImpl;

  String get connectionName;
  @JsonKey(ignore: true)
  _$$ConnectionNameChangedImplCopyWith<_$ConnectionNameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionUrlChangedImplCopyWith<$Res> {
  factory _$$ConnectionUrlChangedImplCopyWith(_$ConnectionUrlChangedImpl value,
          $Res Function(_$ConnectionUrlChangedImpl) then) =
      __$$ConnectionUrlChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String connectionUrl});
}

/// @nodoc
class __$$ConnectionUrlChangedImplCopyWithImpl<$Res>
    extends _$ConnectionFormEventCopyWithImpl<$Res, _$ConnectionUrlChangedImpl>
    implements _$$ConnectionUrlChangedImplCopyWith<$Res> {
  __$$ConnectionUrlChangedImplCopyWithImpl(_$ConnectionUrlChangedImpl _value,
      $Res Function(_$ConnectionUrlChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionUrl = null,
  }) {
    return _then(_$ConnectionUrlChangedImpl(
      connectionUrl: null == connectionUrl
          ? _value.connectionUrl
          : connectionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionUrlChangedImpl implements _ConnectionUrlChanged {
  const _$ConnectionUrlChangedImpl({required this.connectionUrl});

  @override
  final String connectionUrl;

  @override
  String toString() {
    return 'ConnectionFormEvent.connectionUrlChanged(connectionUrl: $connectionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionUrlChangedImpl &&
            (identical(other.connectionUrl, connectionUrl) ||
                other.connectionUrl == connectionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionUrlChangedImplCopyWith<_$ConnectionUrlChangedImpl>
      get copyWith =>
          __$$ConnectionUrlChangedImplCopyWithImpl<_$ConnectionUrlChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) {
    return connectionUrlChanged(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) {
    return connectionUrlChanged?.call(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionUrlChanged != null) {
      return connectionUrlChanged(connectionUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return connectionUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return connectionUrlChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionUrlChanged != null) {
      return connectionUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectionUrlChanged implements ConnectionFormEvent {
  const factory _ConnectionUrlChanged({required final String connectionUrl}) =
      _$ConnectionUrlChangedImpl;

  String get connectionUrl;
  @JsonKey(ignore: true)
  _$$ConnectionUrlChangedImplCopyWith<_$ConnectionUrlChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionSelectedImplCopyWith<$Res> {
  factory _$$ConnectionSelectedImplCopyWith(_$ConnectionSelectedImpl value,
          $Res Function(_$ConnectionSelectedImpl) then) =
      __$$ConnectionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Connection connection});
}

/// @nodoc
class __$$ConnectionSelectedImplCopyWithImpl<$Res>
    extends _$ConnectionFormEventCopyWithImpl<$Res, _$ConnectionSelectedImpl>
    implements _$$ConnectionSelectedImplCopyWith<$Res> {
  __$$ConnectionSelectedImplCopyWithImpl(_$ConnectionSelectedImpl _value,
      $Res Function(_$ConnectionSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$ConnectionSelectedImpl(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as Connection,
    ));
  }
}

/// @nodoc

class _$ConnectionSelectedImpl implements _ConnectionSelected {
  const _$ConnectionSelectedImpl({required this.connection});

  @override
  final Connection connection;

  @override
  String toString() {
    return 'ConnectionFormEvent.connectionSelected(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionSelectedImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionSelectedImplCopyWith<_$ConnectionSelectedImpl> get copyWith =>
      __$$ConnectionSelectedImplCopyWithImpl<_$ConnectionSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) {
    return connectionSelected(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) {
    return connectionSelected?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionSelected != null) {
      return connectionSelected(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return connectionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return connectionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (connectionSelected != null) {
      return connectionSelected(this);
    }
    return orElse();
  }
}

abstract class _ConnectionSelected implements ConnectionFormEvent {
  const factory _ConnectionSelected({required final Connection connection}) =
      _$ConnectionSelectedImpl;

  Connection get connection;
  @JsonKey(ignore: true)
  _$$ConnectionSelectedImplCopyWith<_$ConnectionSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewConnectionButtonPressedImplCopyWith<$Res> {
  factory _$$NewConnectionButtonPressedImplCopyWith(
          _$NewConnectionButtonPressedImpl value,
          $Res Function(_$NewConnectionButtonPressedImpl) then) =
      __$$NewConnectionButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewConnectionButtonPressedImplCopyWithImpl<$Res>
    extends _$ConnectionFormEventCopyWithImpl<$Res,
        _$NewConnectionButtonPressedImpl>
    implements _$$NewConnectionButtonPressedImplCopyWith<$Res> {
  __$$NewConnectionButtonPressedImplCopyWithImpl(
      _$NewConnectionButtonPressedImpl _value,
      $Res Function(_$NewConnectionButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewConnectionButtonPressedImpl implements _NewConnectionButtonPressed {
  const _$NewConnectionButtonPressedImpl();

  @override
  String toString() {
    return 'ConnectionFormEvent.newConnectionButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewConnectionButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) {
    return newConnectionButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) {
    return newConnectionButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (newConnectionButtonPressed != null) {
      return newConnectionButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return newConnectionButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return newConnectionButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (newConnectionButtonPressed != null) {
      return newConnectionButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _NewConnectionButtonPressed implements ConnectionFormEvent {
  const factory _NewConnectionButtonPressed() =
      _$NewConnectionButtonPressedImpl;
}

/// @nodoc
abstract class _$$SaveButtonPressedImplCopyWith<$Res> {
  factory _$$SaveButtonPressedImplCopyWith(_$SaveButtonPressedImpl value,
          $Res Function(_$SaveButtonPressedImpl) then) =
      __$$SaveButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveButtonPressedImplCopyWithImpl<$Res>
    extends _$ConnectionFormEventCopyWithImpl<$Res, _$SaveButtonPressedImpl>
    implements _$$SaveButtonPressedImplCopyWith<$Res> {
  __$$SaveButtonPressedImplCopyWithImpl(_$SaveButtonPressedImpl _value,
      $Res Function(_$SaveButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveButtonPressedImpl implements _SaveButtonPressed {
  const _$SaveButtonPressedImpl();

  @override
  String toString() {
    return 'ConnectionFormEvent.saveButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String connectionName) connectionNameChanged,
    required TResult Function(String connectionUrl) connectionUrlChanged,
    required TResult Function(Connection connection) connectionSelected,
    required TResult Function() newConnectionButtonPressed,
    required TResult Function() saveButtonPressed,
  }) {
    return saveButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String connectionName)? connectionNameChanged,
    TResult? Function(String connectionUrl)? connectionUrlChanged,
    TResult? Function(Connection connection)? connectionSelected,
    TResult? Function()? newConnectionButtonPressed,
    TResult? Function()? saveButtonPressed,
  }) {
    return saveButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String connectionName)? connectionNameChanged,
    TResult Function(String connectionUrl)? connectionUrlChanged,
    TResult Function(Connection connection)? connectionSelected,
    TResult Function()? newConnectionButtonPressed,
    TResult Function()? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (saveButtonPressed != null) {
      return saveButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionNameChanged value)
        connectionNameChanged,
    required TResult Function(_ConnectionUrlChanged value) connectionUrlChanged,
    required TResult Function(_ConnectionSelected value) connectionSelected,
    required TResult Function(_NewConnectionButtonPressed value)
        newConnectionButtonPressed,
    required TResult Function(_SaveButtonPressed value) saveButtonPressed,
  }) {
    return saveButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult? Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult? Function(_ConnectionSelected value)? connectionSelected,
    TResult? Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult? Function(_SaveButtonPressed value)? saveButtonPressed,
  }) {
    return saveButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionNameChanged value)? connectionNameChanged,
    TResult Function(_ConnectionUrlChanged value)? connectionUrlChanged,
    TResult Function(_ConnectionSelected value)? connectionSelected,
    TResult Function(_NewConnectionButtonPressed value)?
        newConnectionButtonPressed,
    TResult Function(_SaveButtonPressed value)? saveButtonPressed,
    required TResult orElse(),
  }) {
    if (saveButtonPressed != null) {
      return saveButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveButtonPressed implements ConnectionFormEvent {
  const factory _SaveButtonPressed() = _$SaveButtonPressedImpl;
}

/// @nodoc
mixin _$ConnectionFormState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  dynamic get connectionKey => throw _privateConstructorUsedError;
  ConnectionFormData get connectionFormData =>
      throw _privateConstructorUsedError;
  Option<Either<ConnectionFailure, Unit>> get failureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionFormStateCopyWith<ConnectionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFormStateCopyWith<$Res> {
  factory $ConnectionFormStateCopyWith(
          ConnectionFormState value, $Res Function(ConnectionFormState) then) =
      _$ConnectionFormStateCopyWithImpl<$Res, ConnectionFormState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showValidationError,
      bool isSaved,
      dynamic connectionKey,
      ConnectionFormData connectionFormData,
      Option<Either<ConnectionFailure, Unit>> failureOrSucessOption});

  $ConnectionFormDataCopyWith<$Res> get connectionFormData;
}

/// @nodoc
class _$ConnectionFormStateCopyWithImpl<$Res, $Val extends ConnectionFormState>
    implements $ConnectionFormStateCopyWith<$Res> {
  _$ConnectionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showValidationError = null,
    Object? isSaved = null,
    Object? connectionKey = freezed,
    Object? connectionFormData = null,
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
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionKey: freezed == connectionKey
          ? _value.connectionKey
          : connectionKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      connectionFormData: null == connectionFormData
          ? _value.connectionFormData
          : connectionFormData // ignore: cast_nullable_to_non_nullable
              as ConnectionFormData,
      failureOrSucessOption: null == failureOrSucessOption
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectionFormDataCopyWith<$Res> get connectionFormData {
    return $ConnectionFormDataCopyWith<$Res>(_value.connectionFormData,
        (value) {
      return _then(_value.copyWith(connectionFormData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectionFormStateImplCopyWith<$Res>
    implements $ConnectionFormStateCopyWith<$Res> {
  factory _$$ConnectionFormStateImplCopyWith(_$ConnectionFormStateImpl value,
          $Res Function(_$ConnectionFormStateImpl) then) =
      __$$ConnectionFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showValidationError,
      bool isSaved,
      dynamic connectionKey,
      ConnectionFormData connectionFormData,
      Option<Either<ConnectionFailure, Unit>> failureOrSucessOption});

  @override
  $ConnectionFormDataCopyWith<$Res> get connectionFormData;
}

/// @nodoc
class __$$ConnectionFormStateImplCopyWithImpl<$Res>
    extends _$ConnectionFormStateCopyWithImpl<$Res, _$ConnectionFormStateImpl>
    implements _$$ConnectionFormStateImplCopyWith<$Res> {
  __$$ConnectionFormStateImplCopyWithImpl(_$ConnectionFormStateImpl _value,
      $Res Function(_$ConnectionFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showValidationError = null,
    Object? isSaved = null,
    Object? connectionKey = freezed,
    Object? connectionFormData = null,
    Object? failureOrSucessOption = null,
  }) {
    return _then(_$ConnectionFormStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionKey: freezed == connectionKey
          ? _value.connectionKey
          : connectionKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      connectionFormData: null == connectionFormData
          ? _value.connectionFormData
          : connectionFormData // ignore: cast_nullable_to_non_nullable
              as ConnectionFormData,
      failureOrSucessOption: null == failureOrSucessOption
          ? _value.failureOrSucessOption
          : failureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ConnectionFormStateImpl implements _ConnectionFormState {
  const _$ConnectionFormStateImpl(
      {required this.isSubmitting,
      required this.showValidationError,
      required this.isSaved,
      required this.connectionKey,
      required this.connectionFormData,
      required this.failureOrSucessOption});

  @override
  final bool isSubmitting;
  @override
  final bool showValidationError;
  @override
  final bool isSaved;
  @override
  final dynamic connectionKey;
  @override
  final ConnectionFormData connectionFormData;
  @override
  final Option<Either<ConnectionFailure, Unit>> failureOrSucessOption;

  @override
  String toString() {
    return 'ConnectionFormState(isSubmitting: $isSubmitting, showValidationError: $showValidationError, isSaved: $isSaved, connectionKey: $connectionKey, connectionFormData: $connectionFormData, failureOrSucessOption: $failureOrSucessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFormStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            const DeepCollectionEquality()
                .equals(other.connectionKey, connectionKey) &&
            (identical(other.connectionFormData, connectionFormData) ||
                other.connectionFormData == connectionFormData) &&
            (identical(other.failureOrSucessOption, failureOrSucessOption) ||
                other.failureOrSucessOption == failureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      showValidationError,
      isSaved,
      const DeepCollectionEquality().hash(connectionKey),
      connectionFormData,
      failureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFormStateImplCopyWith<_$ConnectionFormStateImpl> get copyWith =>
      __$$ConnectionFormStateImplCopyWithImpl<_$ConnectionFormStateImpl>(
          this, _$identity);
}

abstract class _ConnectionFormState implements ConnectionFormState {
  const factory _ConnectionFormState(
      {required final bool isSubmitting,
      required final bool showValidationError,
      required final bool isSaved,
      required final dynamic connectionKey,
      required final ConnectionFormData connectionFormData,
      required final Option<Either<ConnectionFailure, Unit>>
          failureOrSucessOption}) = _$ConnectionFormStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get showValidationError;
  @override
  bool get isSaved;
  @override
  dynamic get connectionKey;
  @override
  ConnectionFormData get connectionFormData;
  @override
  Option<Either<ConnectionFailure, Unit>> get failureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionFormStateImplCopyWith<_$ConnectionFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
