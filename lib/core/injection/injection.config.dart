// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:stream_lab/application/app_action/app_action_cubit.dart'
    as _i690;
import 'package:stream_lab/application/connection/connection_bloc.dart'
    as _i776;
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart'
    as _i341;
import 'package:stream_lab/domain/connection/i_connection_repository.dart'
    as _i955;
import 'package:stream_lab/infrastructure/connection/connection_respository.dart'
    as _i272;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i690.AppActionCubit>(() => _i690.AppActionCubit());
    gh.lazySingleton<_i955.IConnectionRepository>(
        () => _i272.ConnectionRespository());
    gh.factory<_i776.ConnectionBloc>(
        () => _i776.ConnectionBloc(gh<_i955.IConnectionRepository>()));
    gh.factory<_i341.ConnectionFormBloc>(
        () => _i341.ConnectionFormBloc(gh<_i955.IConnectionRepository>()));
    return this;
  }
}
