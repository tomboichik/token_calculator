// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/tokens/data/data_sources/tokens_remote_data_source.dart'
    as _i4;
import '../../features/tokens/data/data_sources/tokens_remote_data_source_impl.dart'
    as _i5;
import '../../features/tokens/domain/repositories/tokens_repository.dart'
    as _i6;
import '../../features/tokens/domain/repositories/tokens_repository_impl.dart'
    as _i7;
import '../../features/tokens/presentation/cubit/token_detail_cubit.dart'
    as _i9;
import '../../features/tokens/presentation/tokens_cubit/tokens_cubit.dart'
    as _i8;
import 'modules.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final modules = _$Modules();
    gh.factory<_i3.Dio>(() => modules.client);
    gh.factory<_i4.TokensRemoteDataSource>(
        () => _i5.TokensRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.factory<_i6.TokensRepository>(
        () => _i7.TokensRepositoryImpl(gh<_i4.TokensRemoteDataSource>()));
    gh.factory<_i8.TokensCubit>(
        () => _i8.TokensCubit(gh<_i6.TokensRepository>()));
    gh.factory<_i9.TokenDetailCubit>(
        () => _i9.TokenDetailCubit(gh<_i6.TokensRepository>()));
    return this;
  }
}

class _$Modules extends _i10.Modules {}
