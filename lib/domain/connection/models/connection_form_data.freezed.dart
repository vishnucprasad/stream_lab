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

  @JsonKey(ignore: true)
  $ConnectionFormDataCopyWith<ConnectionFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionFormDataCopyWith<$Res> {
  factory $ConnectionFormDataCopyWith(
          ConnectionFormData value, $Res Function(ConnectionFormData) then) =
      _$ConnectionFormDataCopyWithImpl<$Res, ConnectionFormData>;
  @useResult
  $Res call({ConnectionName connectionName, ConnectionURL connectionUrl});
}

/// @nodoc
class _$ConnectionFormDataCopyWithImpl<$Res, $Val extends ConnectionFormData>
    implements $ConnectionFormDataCopyWith<$Res> {
  _$ConnectionFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionName = null,
    Object? connectionUrl = null,
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
  $Res call({ConnectionName connectionName, ConnectionURL connectionUrl});
}

/// @nodoc
class __$$ConnectionFormDataImplCopyWithImpl<$Res>
    extends _$ConnectionFormDataCopyWithImpl<$Res, _$ConnectionFormDataImpl>
    implements _$$ConnectionFormDataImplCopyWith<$Res> {
  __$$ConnectionFormDataImplCopyWithImpl(_$ConnectionFormDataImpl _value,
      $Res Function(_$ConnectionFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionName = null,
    Object? connectionUrl = null,
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
    ));
  }
}

/// @nodoc

class _$ConnectionFormDataImpl extends _ConnectionFormData {
  const _$ConnectionFormDataImpl(
      {required this.connectionName, required this.connectionUrl})
      : super._();

  @override
  final ConnectionName connectionName;
  @override
  final ConnectionURL connectionUrl;

  @override
  String toString() {
    return 'ConnectionFormData(connectionName: $connectionName, connectionUrl: $connectionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFormDataImpl &&
            (identical(other.connectionName, connectionName) ||
                other.connectionName == connectionName) &&
            (identical(other.connectionUrl, connectionUrl) ||
                other.connectionUrl == connectionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionName, connectionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFormDataImplCopyWith<_$ConnectionFormDataImpl> get copyWith =>
      __$$ConnectionFormDataImplCopyWithImpl<_$ConnectionFormDataImpl>(
          this, _$identity);
}

abstract class _ConnectionFormData extends ConnectionFormData {
  const factory _ConnectionFormData(
      {required final ConnectionName connectionName,
      required final ConnectionURL connectionUrl}) = _$ConnectionFormDataImpl;
  const _ConnectionFormData._() : super._();

  @override
  ConnectionName get connectionName;
  @override
  ConnectionURL get connectionUrl;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionFormDataImplCopyWith<_$ConnectionFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
