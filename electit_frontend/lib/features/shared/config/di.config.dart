// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:electit_frontend/features/shared/config/di.dart' as _i595;
import 'package:electit_frontend/features/shared/services/jwt_service.dart'
    as _i383;
import 'package:get_it/get_it.dart' as _i174;
import 'package:graphql/client.dart' as _i763;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appDIModule = _$AppDIModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appDIModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i763.GraphQLClient>(() => appDIModule.graphQLClient);
    gh.lazySingleton<_i383.JWTService>(
        () => _i383.JWTService(gh<_i460.SharedPreferences>()));
    return this;
  }
}

class _$AppDIModule extends _i595.AppDIModule {}
