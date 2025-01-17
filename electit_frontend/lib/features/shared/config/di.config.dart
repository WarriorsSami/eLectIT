// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:electit_frontend/features/elections/all/bloc/elections_bloc.dart'
    as _i148;
import 'package:electit_frontend/features/elections/create/bloc/create_election_wizard_form_bloc.dart'
    as _i816;
import 'package:electit_frontend/features/elections/details/bloc/election_details_bloc.dart'
    as _i873;
import 'package:electit_frontend/features/shared/config/di.dart' as _i595;
import 'package:electit_frontend/features/shared/services/jwt_service.dart'
    as _i383;
import 'package:electit_frontend/features/users/login/bloc/login_form_bloc.dart'
    as _i1008;
import 'package:electit_frontend/features/users/profile/bloc/profile_bloc.dart'
    as _i808;
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
    gh.factory<_i808.ProfileBloc>(() => _i808.ProfileBloc(
          jwtService: gh<_i383.JWTService>(),
          graphQLClient: gh<_i763.GraphQLClient>(),
        ));
    gh.factory<_i1008.LoginFormBloc>(() => _i1008.LoginFormBloc(
          jwtService: gh<_i383.JWTService>(),
          graphQLClient: gh<_i763.GraphQLClient>(),
        ));
    gh.factory<_i148.ElectionsBloc>(() => _i148.ElectionsBloc(
          jwtService: gh<_i383.JWTService>(),
          graphQLClient: gh<_i763.GraphQLClient>(),
        ));
    gh.factory<_i873.ElectionDetailsBloc>(() => _i873.ElectionDetailsBloc(
          jwtService: gh<_i383.JWTService>(),
          graphQLClient: gh<_i763.GraphQLClient>(),
        ));
    gh.factory<_i816.CreateElectionWizardFormBloc>(
        () => _i816.CreateElectionWizardFormBloc(
              jwtService: gh<_i383.JWTService>(),
              graphQLClient: gh<_i763.GraphQLClient>(),
            ));
    return this;
  }
}

class _$AppDIModule extends _i595.AppDIModule {}
