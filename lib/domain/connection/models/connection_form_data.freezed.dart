// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionFormData {
  ConnectionName get connectionName => throw _privateConstructorUsedError;
  ConnectionURL get connectionUrl => throw _privateConstructorUsedError;
  List<EventFormData> get eventEmitters => throw _privateConstructorUsedError;
  List<EventFormData> get eventListeners => throw _privateConstructorUsedError;
  ConnectionStatus get connectionStatus => throw _privateConstructorUsedError;
  List<PlutoRow> get queryParameters => throw _privateConstructorUsedError;
  List<PlutoRow> get headers => throw _privateConstructorUsedError;
  List<PlutoRow> get auth => throw _privateConstructorUsedError;

  /// Create a copy of ConnectionFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionFormDataCopyWith<ConnectionFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFormDataCopyWith<$Res> {
  factory $ConnectionFormDataCopyWith(
          ConnectionFormData value, $Res Function(ConnectionFormData) then) =
      _$ConnectionFormDataCopyWithImpl<$Res, ConnectionFormData>;
  @useResult
  $Res call(
      {ConnectionName connectionName,
      ConnectionURL connectionUrl,
      List<EventFormData> eventEmitters,
      List<EventFormData> eventListeners,
      ConnectionStatus connectionStatus,
      List<PlutoRow> queryParameters,
      List<PlutoRow> headers,
      List<PlutoRow> auth});
}

/// @nodoc
class _$ConnectionFormDataCopyWithImpl<$Res, $Val extends ConnectionFormData>
    implements $ConnectionFormDataCopyWith<$Res> {
  _$ConnectionFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionName = null,
    Object? connectionUrl = null,
    Object? eventEmitters = null,
    Object? eventListeners = null,
    Object? connectionStatus = null,
    Object? queryParameters = null,
    Object? headers = null,
    Object? auth = null,
  }) {
    return _then(_value.copyWith(
      connectionName: null == connectionName
          ? _value.connectionName
          : connectionName // ignore: cast_nullable_to_non_nullable
              as ConnectionName,
      connectionUrl: null == connectionUrl
          ? _value.connectionUrl
          : connectionUrl // ignore: cast_nullable_to_non_nullable
              as ConnectionURL,
      eventEmitters: null == eventEmitters
          ? _value.eventEmitters
          : eventEmitters // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      eventListeners: null == eventListeners
          ? _value.eventListeners
          : eventListeners // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      queryParameters: null == queryParameters
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionFormDataImplCopyWith<$Res>
    implements $ConnectionFormDataCopyWith<$Res> {
  factory _$$ConnectionFormDataImplCopyWith(_$ConnectionFormDataImpl value,
          $Res Function(_$ConnectionFormDataImpl) then) =
      __$$ConnectionFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConnectionName connectionName,
      ConnectionURL connectionUrl,
      List<EventFormData> eventEmitters,
      List<EventFormData> eventListeners,
      ConnectionStatus connectionStatus,
      List<PlutoRow> queryParameters,
      List<PlutoRow> headers,
      List<PlutoRow> auth});
}

/// @nodoc
class __$$ConnectionFormDataImplCopyWithImpl<$Res>
    extends _$ConnectionFormDataCopyWithImpl<$Res, _$ConnectionFormDataImpl>
    implements _$$ConnectionFormDataImplCopyWith<$Res> {
  __$$ConnectionFormDataImplCopyWithImpl(_$ConnectionFormDataImpl _value,
      $Res Function(_$ConnectionFormDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectionFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionName = null,
    Object? connectionUrl = null,
    Object? eventEmitters = null,
    Object? eventListeners = null,
    Object? connectionStatus = null,
    Object? queryParameters = null,
    Object? headers = null,
    Object? auth = null,
  }) {
    return _then(_$ConnectionFormDataImpl(
      connectionName: null == connectionName
          ? _value.connectionName
          : connectionName // ignore: cast_nullable_to_non_nullable
              as ConnectionName,
      connectionUrl: null == connectionUrl
          ? _value.connectionUrl
          : connectionUrl // ignore: cast_nullable_to_non_nullable
              as ConnectionURL,
      eventEmitters: null == eventEmitters
          ? _value._eventEmitters
          : eventEmitters // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      eventListeners: null == eventListeners
          ? _value._eventListeners
          : eventListeners // ignore: cast_nullable_to_non_nullable
              as List<EventFormData>,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      queryParameters: null == queryParameters
          ? _value._queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
      auth: null == auth
          ? _value._auth
          : auth // ignore: cast_nullable_to_non_nullable
              as List<PlutoRow>,
    ));
  }
}

/// @nodoc

class _$ConnectionFormDataImpl extends _ConnectionFormData {
  const _$ConnectionFormDataImpl(
      {required this.connectionName,
      required this.connectionUrl,
      required final List<EventFormData> eventEmitters,
      required final List<EventFormData> eventListeners,
      required this.connectionStatus,
      required final List<PlutoRow> queryParameters,
      required final List<PlutoRow> headers,
      required final List<PlutoRow> auth})
      : _eventEmitters = eventEmitters,
        _eventListeners = eventListeners,
        _queryParameters = queryParameters,
        _headers = headers,
        _auth = auth,
        super._();

  @override
  final ConnectionName connectionName;
  @override
  final ConnectionURL connectionUrl;
  final List<EventFormData> _eventEmitters;
  @override
  List<EventFormData> get eventEmitters {
    if (_eventEmitters is EqualUnmodifiableListView) return _eventEmitters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventEmitters);
  }

  final List<EventFormData> _eventListeners;
  @override
  List<EventFormData> get eventListeners {
    if (_eventListeners is EqualUnmodifiableListView) return _eventListeners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventListeners);
  }

  @override
  final ConnectionStatus connectionStatus;
  final List<PlutoRow> _queryParameters;
  @override
  List<PlutoRow> get queryParameters {
    if (_queryParameters is EqualUnmodifiableListView) return _queryParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queryParameters);
  }

  final List<PlutoRow> _headers;
  @override
  List<PlutoRow> get headers {
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headers);
  }

  final List<PlutoRow> _auth;
  @override
  List<PlutoRow> get auth {
    if (_auth is EqualUnmodifiableListView) return _auth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auth);
  }

  @override
  String toString() {
    return 'ConnectionFormData(connectionName: $connectionName, connectionUrl: $connectionUrl, eventEmitters: $eventEmitters, eventListeners: $eventListeners, connectionStatus: $connectionStatus, queryParameters: $queryParameters, headers: $headers, auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFormDataImpl &&
            (identical(other.connectionName, connectionName) ||
                other.connectionName == connectionName) &&
            (identical(other.connectionUrl, connectionUrl) ||
                other.connectionUrl == connectionUrl) &&
            const DeepCollectionEquality()
                .equals(other._eventEmitters, _eventEmitters) &&
            const DeepCollectionEquality()
                .equals(other._eventListeners, _eventListeners) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus) &&
            const DeepCollectionEquality()
                .equals(other._queryParameters, _queryParameters) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._auth, _auth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      connectionName,
      connectionUrl,
      const DeepCollectionEquality().hash(_eventEmitters),
      const DeepCollectionEquality().hash(_eventListeners),
      connectionStatus,
      const DeepCollectionEquality().hash(_queryParameters),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_auth));

  /// Create a copy of ConnectionFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFormDataImplCopyWith<_$ConnectionFormDataImpl> get copyWith =>
      __$$ConnectionFormDataImplCopyWithImpl<_$ConnectionFormDataImpl>(
          this, _$identity);
}

abstract class _ConnectionFormData extends ConnectionFormData {
  const factory _ConnectionFormData(
      {required final ConnectionName connectionName,
      required final ConnectionURL connectionUrl,
      required final List<EventFormData> eventEmitters,
      required final List<EventFormData> eventListeners,
      required final ConnectionStatus connectionStatus,
      required final List<PlutoRow> queryParameters,
      required final List<PlutoRow> headers,
      required final List<PlutoRow> auth}) = _$ConnectionFormDataImpl;
  const _ConnectionFormData._() : super._();

  @override
  ConnectionName get connectionName;
  @override
  ConnectionURL get connectionUrl;
  @override
  List<EventFormData> get eventEmitters;
  @override
  List<EventFormData> get eventListeners;
  @override
  ConnectionStatus get connectionStatus;
  @override
  List<PlutoRow> get queryParameters;
  @override
  List<PlutoRow> get headers;
  @override
  List<PlutoRow> get auth;

  /// Create a copy of ConnectionFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFormDataImplCopyWith<_$ConnectionFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
