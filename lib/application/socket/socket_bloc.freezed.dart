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
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectButtonPressed value) connectButtonPressed,
    required TResult Function(_DisconnectButtonPresssed value)
        disconnectButtonPresssed,
    required TResult Function(_OnConnected value) onConnected,
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
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
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return connectButtonPressed(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return connectButtonPressed?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
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
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return connectButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
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
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return disconnectButtonPresssed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return disconnectButtonPresssed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
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
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return disconnectButtonPresssed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
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
  @useResult
  $Res call({String connectionUrl});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionUrl = null,
  }) {
    return _then(_$OnConnectedImpl(
      connectionUrl: null == connectionUrl
          ? _value.connectionUrl
          : connectionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnConnectedImpl implements _OnConnected {
  const _$OnConnectedImpl({required this.connectionUrl});

  @override
  final String connectionUrl;

  @override
  String toString() {
    return 'SocketEvent.onConnected(connectionUrl: $connectionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnConnectedImpl &&
            (identical(other.connectionUrl, connectionUrl) ||
                other.connectionUrl == connectionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionUrl);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnConnectedImplCopyWith<_$OnConnectedImpl> get copyWith =>
      __$$OnConnectedImplCopyWithImpl<_$OnConnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return onConnected(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return onConnected?.call(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(connectionUrl);
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
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
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return onConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(this);
    }
    return orElse();
  }
}

abstract class _OnConnected implements SocketEvent {
  const factory _OnConnected({required final String connectionUrl}) =
      _$OnConnectedImpl;

  String get connectionUrl;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnConnectedImplCopyWith<_$OnConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnConnectErrorImplCopyWith<$Res> {
  factory _$$OnConnectErrorImplCopyWith(_$OnConnectErrorImpl value,
          $Res Function(_$OnConnectErrorImpl) then) =
      __$$OnConnectErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketFailure failure});

  $SocketFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$OnConnectErrorImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$OnConnectErrorImpl>
    implements _$$OnConnectErrorImplCopyWith<$Res> {
  __$$OnConnectErrorImplCopyWithImpl(
      _$OnConnectErrorImpl _value, $Res Function(_$OnConnectErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$OnConnectErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SocketFailure,
    ));
  }

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketFailureCopyWith<$Res> get failure {
    return $SocketFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$OnConnectErrorImpl implements _OnConnectError {
  const _$OnConnectErrorImpl({required this.failure});

  @override
  final SocketFailure failure;

  @override
  String toString() {
    return 'SocketEvent.onConnectError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnConnectErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnConnectErrorImplCopyWith<_$OnConnectErrorImpl> get copyWith =>
      __$$OnConnectErrorImplCopyWithImpl<_$OnConnectErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return onConnectError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return onConnectError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onConnectError != null) {
      return onConnectError(failure);
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
  }) {
    return onConnectError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return onConnectError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onConnectError != null) {
      return onConnectError(this);
    }
    return orElse();
  }
}

abstract class _OnConnectError implements SocketEvent {
  const factory _OnConnectError({required final SocketFailure failure}) =
      _$OnConnectErrorImpl;

  SocketFailure get failure;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnConnectErrorImplCopyWith<_$OnConnectErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDisConnectedImplCopyWith<$Res> {
  factory _$$OnDisConnectedImplCopyWith(_$OnDisConnectedImpl value,
          $Res Function(_$OnDisConnectedImpl) then) =
      __$$OnDisConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String connectionUrl});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionUrl = null,
  }) {
    return _then(_$OnDisConnectedImpl(
      connectionUrl: null == connectionUrl
          ? _value.connectionUrl
          : connectionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDisConnectedImpl implements _OnDisConnected {
  const _$OnDisConnectedImpl({required this.connectionUrl});

  @override
  final String connectionUrl;

  @override
  String toString() {
    return 'SocketEvent.onDisConnected(connectionUrl: $connectionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDisConnectedImpl &&
            (identical(other.connectionUrl, connectionUrl) ||
                other.connectionUrl == connectionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionUrl);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDisConnectedImplCopyWith<_$OnDisConnectedImpl> get copyWith =>
      __$$OnDisConnectedImplCopyWithImpl<_$OnDisConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return onDisConnected(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return onDisConnected?.call(connectionUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onDisConnected != null) {
      return onDisConnected(connectionUrl);
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
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
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return onDisConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onDisConnected != null) {
      return onDisConnected(this);
    }
    return orElse();
  }
}

abstract class _OnDisConnected implements SocketEvent {
  const factory _OnDisConnected({required final String connectionUrl}) =
      _$OnDisConnectedImpl;

  String get connectionUrl;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnDisConnectedImplCopyWith<_$OnDisConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNewResponseImplCopyWith<$Res> {
  factory _$$OnNewResponseImplCopyWith(
          _$OnNewResponseImpl value, $Res Function(_$OnNewResponseImpl) then) =
      __$$OnNewResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventFormData event});

  $EventFormDataCopyWith<$Res> get event;
}

/// @nodoc
class __$$OnNewResponseImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$OnNewResponseImpl>
    implements _$$OnNewResponseImplCopyWith<$Res> {
  __$$OnNewResponseImplCopyWithImpl(
      _$OnNewResponseImpl _value, $Res Function(_$OnNewResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$OnNewResponseImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventFormData,
    ));
  }

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventFormDataCopyWith<$Res> get event {
    return $EventFormDataCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$OnNewResponseImpl implements _OnNewResponse {
  const _$OnNewResponseImpl({required this.event});

  @override
  final EventFormData event;

  @override
  String toString() {
    return 'SocketEvent.onNewResponse(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNewResponseImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNewResponseImplCopyWith<_$OnNewResponseImpl> get copyWith =>
      __$$OnNewResponseImplCopyWithImpl<_$OnNewResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return onNewResponse(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return onNewResponse?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onNewResponse != null) {
      return onNewResponse(event);
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
  }) {
    return onNewResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return onNewResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
    required TResult orElse(),
  }) {
    if (onNewResponse != null) {
      return onNewResponse(this);
    }
    return orElse();
  }
}

abstract class _OnNewResponse implements SocketEvent {
  const factory _OnNewResponse({required final EventFormData event}) =
      _$OnNewResponseImpl;

  EventFormData get event;

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNewResponseImplCopyWith<_$OnNewResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllResponsesImplCopyWith<$Res> {
  factory _$$ClearAllResponsesImplCopyWith(_$ClearAllResponsesImpl value,
          $Res Function(_$ClearAllResponsesImpl) then) =
      __$$ClearAllResponsesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllResponsesImplCopyWithImpl<$Res>
    extends _$SocketEventCopyWithImpl<$Res, _$ClearAllResponsesImpl>
    implements _$$ClearAllResponsesImplCopyWith<$Res> {
  __$$ClearAllResponsesImplCopyWithImpl(_$ClearAllResponsesImpl _value,
      $Res Function(_$ClearAllResponsesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAllResponsesImpl implements _ClearAllResponses {
  const _$ClearAllResponsesImpl();

  @override
  String toString() {
    return 'SocketEvent.clearAllResponses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllResponsesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Connection connection) connectButtonPressed,
    required TResult Function() disconnectButtonPresssed,
    required TResult Function(String connectionUrl) onConnected,
    required TResult Function(SocketFailure failure) onConnectError,
    required TResult Function(String connectionUrl) onDisConnected,
    required TResult Function(EventFormData event) onNewResponse,
    required TResult Function() clearAllResponses,
  }) {
    return clearAllResponses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Connection connection)? connectButtonPressed,
    TResult? Function()? disconnectButtonPresssed,
    TResult? Function(String connectionUrl)? onConnected,
    TResult? Function(SocketFailure failure)? onConnectError,
    TResult? Function(String connectionUrl)? onDisConnected,
    TResult? Function(EventFormData event)? onNewResponse,
    TResult? Function()? clearAllResponses,
  }) {
    return clearAllResponses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Connection connection)? connectButtonPressed,
    TResult Function()? disconnectButtonPresssed,
    TResult Function(String connectionUrl)? onConnected,
    TResult Function(SocketFailure failure)? onConnectError,
    TResult Function(String connectionUrl)? onDisConnected,
    TResult Function(EventFormData event)? onNewResponse,
    TResult Function()? clearAllResponses,
    required TResult orElse(),
  }) {
    if (clearAllResponses != null) {
      return clearAllResponses();
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
    required TResult Function(_OnConnectError value) onConnectError,
    required TResult Function(_OnDisConnected value) onDisConnected,
    required TResult Function(_OnNewResponse value) onNewResponse,
    required TResult Function(_ClearAllResponses value) clearAllResponses,
  }) {
    return clearAllResponses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult? Function(_DisconnectButtonPresssed value)?
        disconnectButtonPresssed,
    TResult? Function(_OnConnected value)? onConnected,
    TResult? Function(_OnConnectError value)? onConnectError,
    TResult? Function(_OnDisConnected value)? onDisConnected,
    TResult? Function(_OnNewResponse value)? onNewResponse,
    TResult? Function(_ClearAllResponses value)? clearAllResponses,
  }) {
    return clearAllResponses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectButtonPressed value)? connectButtonPressed,
    TResult Function(_DisconnectButtonPresssed value)? disconnectButtonPresssed,
    TResult Function(_OnConnected value)? onConnected,
    TResult Function(_OnConnectError value)? onConnectError,
    TResult Function(_OnDisConnected value)? onDisConnected,
    TResult Function(_OnNewResponse value)? onNewResponse,
    TResult Function(_ClearAllResponses value)? clearAllResponses,
    required TResult orElse(),
  }) {
    if (clearAllResponses != null) {
      return clearAllResponses(this);
    }
    return orElse();
  }
}

abstract class _ClearAllResponses implements SocketEvent {
  const factory _ClearAllResponses() = _$ClearAllResponsesImpl;
}

/// @nodoc
mixin _$SocketState {
  bool get isConnecting => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  List<EventFormData> get responses => throw _privateConstructorUsedError;
  Option<SocketFailure> get failure => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isConnecting,
      bool isConnected,
      List<EventFormData> responses,
      Option<SocketFailure> failure});
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
    Object? responses = null,
    Object? failure = null,
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
      responses: null == responses
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<SocketFailure>,
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
  $Res call(
      {bool isConnecting,
      bool isConnected,
      List<EventFormData> responses,
      Option<SocketFailure> failure});
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
    Object? responses = null,
    Object? failure = null,
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
      responses: null == responses
          ? _value._responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<SocketFailure>,
    ));
  }
}

/// @nodoc

class _$SocketStateImpl implements _SocketState {
  const _$SocketStateImpl(
      {required this.isConnecting,
      required this.isConnected,
      required final List<EventFormData> responses,
      required this.failure})
      : _responses = responses;

  @override
  final bool isConnecting;
  @override
  final bool isConnected;
  final List<EventFormData> _responses;
  @override
  List<EventFormData> get responses {
    if (_responses is EqualUnmodifiableListView) return _responses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responses);
  }

  @override
  final Option<SocketFailure> failure;

  @override
  String toString() {
    return 'SocketState(isConnecting: $isConnecting, isConnected: $isConnected, responses: $responses, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStateImpl &&
            (identical(other.isConnecting, isConnecting) ||
                other.isConnecting == isConnecting) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            const DeepCollectionEquality()
                .equals(other._responses, _responses) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnecting, isConnected,
      const DeepCollectionEquality().hash(_responses), failure);

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
      required final bool isConnected,
      required final List<EventFormData> responses,
      required final Option<SocketFailure> failure}) = _$SocketStateImpl;

  @override
  bool get isConnecting;
  @override
  bool get isConnected;
  @override
  List<EventFormData> get responses;
  @override
  Option<SocketFailure> get failure;

  /// Create a copy of SocketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStateImplCopyWith<_$SocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
