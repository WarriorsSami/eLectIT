import 'package:electit_frontend/features/shared/config/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api_config.dart';

final locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await locator.init();

@module
abstract class AppDIModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @injectable
  GraphQLClient get graphQLClient => GraphQLClient(
        link: HttpLink(ApiConfig.graphQlUrl),
        cache: GraphQLCache(store: InMemoryStore()),
      );
}
