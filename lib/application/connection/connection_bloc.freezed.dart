// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConnections,
    required TResult Function(dynamic key) deleteConnection,
    required TResult Function(Connection connection) duplicateConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConnections,
    TResult? Function(dynamic key)? deleteConnection,
    TResult? Function(Connection connection)? duplicateConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConnections,
    TResult Function(dynamic key)? deleteConnection,
    TResult Function(Connection connection)? duplicateConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConnections value) loadConnections,
    required TResult Function(_DeleteConnection value) deleteConnection,
    required TResult Function(_DuplicateConnection value) duplicateConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadConnections value)? loadConnections,
    TResult? Function(_DeleteConnection value)? deleteConnection,
    TResult? Function(_DuplicateConnection value)? duplicateConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConnections value)? loadConnections,
    TResult Function(_DeleteConnection value)? deleteConnection,
    TResult Function(_DuplicateConnection value)? duplicateConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionEventCopyWith<$Res> {
  factory $ConnectionEventCopyWith(
          ConnectionEvent value, $Res Function(ConnectionEvent) then) =
      _$ConnectionEventCopyWithImpl<$Res, ConnectionEvent>;
}

/// @nodoc
class _$ConnectionEventCopyWithImpl<$Res, $Val extends ConnectionEvent>
    implements $ConnectionEventCopyWith<$Res> {
  _$ConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadConnectionsImplCopyWith<$Res> {
  factory _$$LoadConnectionsImplCopyWith(_$LoadConnectionsImpl value,
          $Res Function(_$LoadConnectionsImpl) then) =
      __$$LoadConnectionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadConnectionsImplCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res, _$LoadConnectionsImpl>
    implements _$$LoadConnectionsImplCopyWith<$Res> {
  __$$LoadConnectionsImplCopyWithImpl(
      _$LoadConnectionsImpl _value, $Res Function(_$LoadConnectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadConnectionsImpl implements _LoadConnections {
  const _$LoadConnectionsImpl();

  @override
  String toString() {
    return 'ConnectionEvent.loadConnections()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadConnectionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConnections,
    required TResult Function(dynamic key) deleteConnection,
    required TResult Function(Connection connection) duplicateConnection,
  }) {
    return loadConnections();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConnections,
    TResult? Function(dynamic key)? deleteConnection,
    TResult? Function(Connection connection)? duplicateConnection,
  }) {
    return loadConnections?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConnections,
    TResult Function(dynamic key)? deleteConnection,
    TResult Function(Connection connection)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (loadConnections != null) {
      return loadConnections();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConnections value) loadConnections,
    required TResult Function(_DeleteConnection value) deleteConnection,
    required TResult Function(_DuplicateConnection value) duplicateConnection,
  }) {
    return loadConnections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadConnections value)? loadConnections,
    TResult? Function(_DeleteConnection value)? deleteConnection,
    TResult? Function(_DuplicateConnection value)? duplicateConnection,
  }) {
    return loadConnections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConnections value)? loadConnections,
    TResult Function(_DeleteConnection value)? deleteConnection,
    TResult Function(_DuplicateConnection value)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (loadConnections != null) {
      return loadConnections(this);
    }
    return orElse();
  }
}

abstract class _LoadConnections implements ConnectionEvent {
  const factory _LoadConnections() = _$LoadConnectionsImpl;
}

/// @nodoc
abstract class _$$DeleteConnectionImplCopyWith<$Res> {
  factory _$$DeleteConnectionImplCopyWith(_$DeleteConnectionImpl value,
          $Res Function(_$DeleteConnectionImpl) then) =
      __$$DeleteConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic key});
}

/// @nodoc
class __$$DeleteConnectionImplCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res, _$DeleteConnectionImpl>
    implements _$$DeleteConnectionImplCopyWith<$Res> {
  __$$DeleteConnectionImplCopyWithImpl(_$DeleteConnectionImpl _value,
      $Res Function(_$DeleteConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$DeleteConnectionImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DeleteConnectionImpl implements _DeleteConnection {
  const _$DeleteConnectionImpl({required this.key});

  @override
  final dynamic key;

  @override
  String toString() {
    return 'ConnectionEvent.deleteConnection(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteConnectionImpl &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteConnectionImplCopyWith<_$DeleteConnectionImpl> get copyWith =>
      __$$DeleteConnectionImplCopyWithImpl<_$DeleteConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConnections,
    required TResult Function(dynamic key) deleteConnection,
    required TResult Function(Connection connection) duplicateConnection,
  }) {
    return deleteConnection(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConnections,
    TResult? Function(dynamic key)? deleteConnection,
    TResult? Function(Connection connection)? duplicateConnection,
  }) {
    return deleteConnection?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConnections,
    TResult Function(dynamic key)? deleteConnection,
    TResult Function(Connection connection)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (deleteConnection != null) {
      return deleteConnection(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConnections value) loadConnections,
    required TResult Function(_DeleteConnection value) deleteConnection,
    required TResult Function(_DuplicateConnection value) duplicateConnection,
  }) {
    return deleteConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadConnections value)? loadConnections,
    TResult? Function(_DeleteConnection value)? deleteConnection,
    TResult? Function(_DuplicateConnection value)? duplicateConnection,
  }) {
    return deleteConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConnections value)? loadConnections,
    TResult Function(_DeleteConnection value)? deleteConnection,
    TResult Function(_DuplicateConnection value)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (deleteConnection != null) {
      return deleteConnection(this);
    }
    return orElse();
  }
}

abstract class _DeleteConnection implements ConnectionEvent {
  const factory _DeleteConnection({required final dynamic key}) =
      _$DeleteConnectionImpl;

  dynamic get key;

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteConnectionImplCopyWith<_$DeleteConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuplicateConnectionImplCopyWith<$Res> {
  factory _$$DuplicateConnectionImplCopyWith(_$DuplicateConnectionImpl value,
          $Res Function(_$DuplicateConnectionImpl) then) =
      __$$DuplicateConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Connection connection});
}

/// @nodoc
class __$$DuplicateConnectionImplCopyWithImpl<$Res>
    extends _$ConnectionEventCopyWithImpl<$Res, _$DuplicateConnectionImpl>
    implements _$$DuplicateConnectionImplCopyWith<$Res> {
  __$$DuplicateConnectionImplCopyWithImpl(_$DuplicateConnectionImpl _value,
      $Res Function(_$DuplicateConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
  }) {
    return _then(_$DuplicateConnectionImpl(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as Connection,
    ));
  }
}

/// @nodoc

class _$DuplicateConnectionImpl implements _DuplicateConnection {
  const _$DuplicateConnectionImpl({required this.connection});

  @override
  final Connection connection;

  @override
  String toString() {
    return 'ConnectionEvent.duplicateConnection(connection: $connection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateConnectionImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicateConnectionImplCopyWith<_$DuplicateConnectionImpl> get copyWith =>
      __$$DuplicateConnectionImplCopyWithImpl<_$DuplicateConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConnections,
    required TResult Function(dynamic key) deleteConnection,
    required TResult Function(Connection connection) duplicateConnection,
  }) {
    return duplicateConnection(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConnections,
    TResult? Function(dynamic key)? deleteConnection,
    TResult? Function(Connection connection)? duplicateConnection,
  }) {
    return duplicateConnection?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConnections,
    TResult Function(dynamic key)? deleteConnection,
    TResult Function(Connection connection)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (duplicateConnection != null) {
      return duplicateConnection(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConnections value) loadConnections,
    required TResult Function(_DeleteConnection value) deleteConnection,
    required TResult Function(_DuplicateConnection value) duplicateConnection,
  }) {
    return duplicateConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadConnections value)? loadConnections,
    TResult? Function(_DeleteConnection value)? deleteConnection,
    TResult? Function(_DuplicateConnection value)? duplicateConnection,
  }) {
    return duplicateConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConnections value)? loadConnections,
    TResult Function(_DeleteConnection value)? deleteConnection,
    TResult Function(_DuplicateConnection value)? duplicateConnection,
    required TResult orElse(),
  }) {
    if (duplicateConnection != null) {
      return duplicateConnection(this);
    }
    return orElse();
  }
}

abstract class _DuplicateConnection implements ConnectionEvent {
  const factory _DuplicateConnection({required final Connection connection}) =
      _$DuplicateConnectionImpl;

  Connection get connection;

  /// Create a copy of ConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuplicateConnectionImplCopyWith<_$DuplicateConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectionState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Connection> get connections => throw _privateConstructorUsedError;
  Option<Either<ConnectionFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res, ConnectionState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Connection> connections,
      Option<Either<ConnectionFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res, $Val extends ConnectionState>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? connections = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<Connection>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionStateImplCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$$ConnectionStateImplCopyWith(_$ConnectionStateImpl value,
          $Res Function(_$ConnectionStateImpl) then) =
      __$$ConnectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Connection> connections,
      Option<Either<ConnectionFailure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$$ConnectionStateImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$ConnectionStateImpl>
    implements _$$ConnectionStateImplCopyWith<$Res> {
  __$$ConnectionStateImplCopyWithImpl(
      _$ConnectionStateImpl _value, $Res Function(_$ConnectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? connections = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$ConnectionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<Connection>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConnectionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ConnectionStateImpl implements _ConnectionState {
  const _$ConnectionStateImpl(
      {required this.isLoading,
      required final List<Connection> connections,
      required this.failureOrSuccessOption})
      : _connections = connections;

  @override
  final bool isLoading;
  final List<Connection> _connections;
  @override
  List<Connection> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  final Option<Either<ConnectionFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ConnectionState(isLoading: $isLoading, connections: $connections, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_connections),
      failureOrSuccessOption);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionStateImplCopyWith<_$ConnectionStateImpl> get copyWith =>
      __$$ConnectionStateImplCopyWithImpl<_$ConnectionStateImpl>(
          this, _$identity);
}

abstract class _ConnectionState implements ConnectionState {
  const factory _ConnectionState(
      {required final bool isLoading,
      required final List<Connection> connections,
      required final Option<Either<ConnectionFailure, Unit>>
          failureOrSuccessOption}) = _$ConnectionStateImpl;

  @override
  bool get isLoading;
  @override
  List<Connection> get connections;
  @override
  Option<Either<ConnectionFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionStateImplCopyWith<_$ConnectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
