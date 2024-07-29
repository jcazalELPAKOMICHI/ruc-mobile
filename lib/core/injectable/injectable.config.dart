// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/ruc/data/datasources/ruc_repository_iml.dart' as _i900;
import '../../features/ruc/domain/repositories/ruc_repository.dart' as _i41;
import '../../features/ruc/domain/usecases/ruc_use_case.dart' as _i89;
import '../../features/ruc/presentation/bloc/ruc_bloc.dart' as _i272;
import '../api/dio_provider.dart' as _i92;
import '../api/http.dart' as _i13;
import '../api/ic_config.dart' as _i572;
import '../api/ic_config_iml.dart' as _i301;
import '../themes/bloc/theme_bloc.dart' as _i339;

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
    final dioProvider = _$DioProvider();
    gh.factory<_i339.ThemeBloc>(() => _i339.ThemeBloc());
    gh.factory<_i572.IConfig>(() => _i301.IConfigIml());
    gh.singleton<_i361.Dio>(() => dioProvider.dio(gh<_i572.IConfig>()));
    gh.factory<_i13.Http>(() => _i13.HttpIml(dio: gh<_i361.Dio>()));
    gh.factory<_i41.RucRepository>(
        () => _i900.RucRepositoryIml(http: gh<_i13.Http>()));
    gh.factory<_i89.RucUseCase>(
        () => _i89.RucUseCase(rucRepository: gh<_i41.RucRepository>()));
    gh.factory<_i272.RucBloc>(
        () => _i272.RucBloc(rucUseCase: gh<_i89.RucUseCase>()));
    return this;
  }
}

class _$DioProvider extends _i92.DioProvider {}
