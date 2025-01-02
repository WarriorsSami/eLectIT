import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/domain/guards/auth_guard.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: WelcomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/register',
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          guards: [
            AuthGuard(jwtService: locator<JWTService>()),
          ],
          children: [
            AutoRoute(
              path: 'me',
              page: ProfileRoute.page,
              guards: [
                AuthGuard(jwtService: locator<JWTService>()),
              ],
              initial: true,
            ),
            AutoRoute(
              path: 'elections',
              page: ElectionsRoute.page,
              guards: [
                AuthGuard(jwtService: locator<JWTService>()),
              ],
            ),
          ],
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
