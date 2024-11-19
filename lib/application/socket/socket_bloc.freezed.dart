// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function() onConnected,
    required TResult Function() onDisConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function()? onConnected,
    TResult? Function()? onDisConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function()? onConnected,
    TResult Function()? onDisConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisConnected value) onDisConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisConnected value)? onDisConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisConnected value)? onDisConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketEventCopyWith<$Res> {
  factory $SocketEventCopyWith(
          SocketEvent value, $Res Function(SocketEvent) then) =
      _$SocketEventCopyWithImpl<$Res, SocketEvent>;
}

/// @nodoc
class _$SocketEventCopyWithImpl<$Res, $Val extends SocketEvent>
    implements $SocketEventCopyWith<$Res> {
  _$SocketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectButtonPressedImplCopyWith<$Res> {
  factory _$$ConnectButtonPressedImplCopyWith(_$ConnectButtonPressedImpl value,
          $Res Function(_$ConnectButtonPressedImpl) then) =
      __$$ConnectButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Connection connection});
}

/// @nodoc
class __$$ConnectButtonPressedImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$ConnectButtonPressedImpl>
    implements _$$ConnectButtonPressedImplCopyWith<$Res> {
  __$$ConnectButtonPressedImplCopyWithImpl(_$ConnectButtonPressedImpl _value,
      $Res Function(_$ConnectButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$ConnectButtonPressedImpl(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as Connection,
    ));
  }
}

/// @nodoc

class _$ConnectButtonPressedImpl implements _ConnectButtonPressed {
  const _$ConnectButtonPressedImpl({required this.connection});

  @override
  final Connection connection;

  @override
  String toString() {
    return 'SocketEvent.connectButtonPressed(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectButtonPressedImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectButtonPressedImplCopyWith<_$ConnectButtonPressedImpl>
      get copyWith =>
          __$$ConnectButtonPressedImplCopyWithImpl<_$ConnectButtonPressedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function() onConnected,
    required TResult Function() onDisConnected,
  }) {
    return connectButtonPressed(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function()? onConnected,
    TResult? Function()? onDisConnected,
  }) {
    return connectButtonPressed?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function()? onConnected,
    TResult Function()? onDisConnected,
    required TResult orElse(),
  }) {
    if (connectButtonPressed != null) {
      return connectButtonPressed(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisConnected value) onDisConnected,
  }) {
    return connectButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisConnected value)? onDisConnected,
  }) {
    return connectButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisConnected value)? onDisConnected,
    required TResult orElse(),
  }) {
    if (connectButtonPressed != null) {
      return connectButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ConnectButtonPressed implements SocketEvent {
  const factory _ConnectButtonPressed({required final Connection connection}) =
      _$ConnectButtonPressedImpl;

  Connection get connection;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectButtonPressedImplCopyWith<_$ConnectButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectButtonPresssedImplCopyWith<$Res> {
  factory _$$DisconnectButtonPresssedImplCopyWith(
          _$DisconnectButtonPresssedImpl value,
          $Res Function(_$DisconnectButtonPresssedImpl) then) =
      __$$DisconnectButtonPresssedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectButtonPresssedImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$DisconnectButtonPresssedImpl>
    implements _$$DisconnectButtonPresssedImplCopyWith<$Res> {
  __$$DisconnectButtonPresssedImplCopyWithImpl(
      _$DisconnectButtonPresssedImpl _value,
      $Res Function(_$DisconnectButtonPresssedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectButtonPresssedImpl implements _DisconnectButtonPresssed {
  const _$DisconnectButtonPresssedImpl();

  @override
  String toString() {
    return 'SocketEvent.disconnectButtonPresssed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisconnectButtonPresssedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function() onConnected,
    required TResult Function() onDisConnected,
  }) {
    return disconnectButtonPresssed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function()? onConnected,
    TResult? Function()? onDisConnected,
  }) {
    return disconnectButtonPresssed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function()? onConnected,
    TResult Function()? onDisConnected,
    required TResult orElse(),
  }) {
    if (disconnectButtonPresssed != null) {
      return disconnectButtonPresssed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisConnected value) onDisConnected,
  }) {
    return disconnectButtonPresssed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisConnected value)? onDisConnected,
  }) {
    return disconnectButtonPresssed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisConnected value)? onDisConnected,
    required TResult orElse(),
  }) {
    if (disconnectButtonPresssed != null) {
      return disconnectButtonPresssed(this);
    }
    return orElse();
  }
}

abstract class _DisconnectButtonPresssed implements SocketEvent {
  const factory _DisconnectButtonPresssed() = _$DisconnectButtonPresssedImpl;
}

/// @nodoc
abstract class _$$OnConnectedImplCopyWith<$Res> {
  factory _$$OnConnectedImplCopyWith(
          _$OnConnectedImpl value, $Res Function(_$OnConnectedImpl) then) =
      __$$OnConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnConnectedImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$OnConnectedImpl>
    implements _$$OnConnectedImplCopyWith<$Res> {
  __$$OnConnectedImplCopyWithImpl(
      _$OnConnectedImpl _value, $Res Function(_$OnConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnConnectedImpl implements _OnConnected {
  const _$OnConnectedImpl();

  @override
  String toString() {
    return 'SocketEvent.onConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function() onConnected,
    required TResult Function() onDisConnected,
  }) {
    return onConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function()? onConnected,
    TResult? Function()? onDisConnected,
  }) {
    return onConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function()? onConnected,
    TResult Function()? onDisConnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisConnected value) onDisConnected,
  }) {
    return onConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisConnected value)? onDisConnected,
  }) {
    return onConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisConnected value)? onDisConnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(this);
    }
    return orElse();
  }
}

abstract class _OnConnected implements SocketEvent {
  const factory _OnConnected() = _$OnConnectedImpl;
}

/// @nodoc
abstract class _$$OnDisConnectedImplCopyWith<$Res> {
  factory _$$OnDisConnectedImplCopyWith(_$OnDisConnectedImpl value,
          $Res Function(_$OnDisConnectedImpl) then) =
      __$$OnDisConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnDisConnectedImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$OnDisConnectedImpl>
    implements _$$OnDisConnectedImplCopyWith<$Res> {
  __$$OnDisConnectedImplCopyWithImpl(
      _$OnDisConnectedImpl _value, $Res Function(_$OnDisConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnDisConnectedImpl implements _OnDisConnected {
  const _$OnDisConnectedImpl();

  @override
  String toString() {
    return 'SocketEvent.onDisConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnDisConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function() onConnected,
    required TResult Function() onDisConnected,
  }) {
    return onDisConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function()? onConnected,
    TResult? Function()? onDisConnected,
  }) {
    return onDisConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function()? onConnected,
    TResult Function()? onDisConnected,
    required TResult orElse(),
  }) {
    if (onDisConnected != null) {
      return onDisConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnDisConnected value) onDisConnected,
  }) {
    return onDisConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnDisConnected value)? onDisConnected,
  }) {
    return onDisConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnDisConnected value)? onDisConnected,
    required TResult orElse(),
  }) {
    if (onDisConnected != null) {
      return onDisConnected(this);
    }
    return orElse();
  }
}

abstract class _OnDisConnected implements SocketEvent {
  const factory _OnDisConnected() = _$OnDisConnectedImpl;
}

/// @nodoc
mixin _$SocketState {
  bool get isConnecting => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketStateCopyWith<SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
  @useResult
  $Res call({bool isConnecting, bool isConnected});
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnecting = null,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      isConnecting: null == isConnecting
          ? _value.isConnecting
          : isConnecting // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$SocketStateImplCopyWith(
          _$SocketStateImpl value, $Res Function(_$SocketStateImpl) then) =
      __$$SocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnecting, bool isConnected});
}

/// @nodoc
class __$$SocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$SocketStateImpl>
    implements _$$SocketStateImplCopyWith<$Res> {
  __$$SocketStateImplCopyWithImpl(
      _$SocketStateImpl _value, $Res Function(_$SocketStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnecting = null,
    Object? isConnected = null,
  }) {
    return _then(_$SocketStateImpl(
      isConnecting: null == isConnecting
          ? _value.isConnecting
          : isConnecting // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SocketStateImpl implements _SocketState {
  const _$SocketStateImpl(
      {required this.isConnecting, required this.isConnected});

  @override
  final bool isConnecting;
  @override
  final bool isConnected;

  @override
  String toString() {
    return 'SocketState(isConnecting: $isConnecting, isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStateImpl &&
            (identical(other.isConnecting, isConnecting) ||
                other.isConnecting == isConnecting) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnecting, isConnected);

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStateImplCopyWith<_$SocketStateImpl> get copyWith =>
      __$$SocketStateImplCopyWithImpl<_$SocketStateImpl>(this, _$identity);
}

abstract class _SocketState implements SocketState {
  const factory _SocketState(
      {required final bool isConnecting,
      required final bool isConnected}) = _$SocketStateImpl;

  @override
  bool get isConnecting;
  @override
  bool get isConnected;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStateImplCopyWith<_$SocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
