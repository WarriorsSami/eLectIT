import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/domain/guards/anonymous_guard.dart';
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
          keepHistory: false,
          maintainState: false,
          page: WelcomeRoute.page,
          initial: true,
          guards: [
            AnonymousGuard(jwtService: locator<JWTService>()),
          ],
        ),
        AutoRoute(
          path: '/login',
          keepHistory: false,
          maintainState: false,
          page: LoginRoute.page,
          guards: [
            AnonymousGuard(jwtService: locator<JWTService>()),
          ],
        ),
        AutoRoute(
          path: '/register',
          keepHistory: false,
          maintainState: false,
          page: RegisterRoute.page,
          guards: [
            AnonymousGuard(jwtService: locator<JWTService>()),
          ],
        ),
        AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          keepHistory: false,
          maintainState: false,
          guards: [
            AuthGuard(jwtService: locator<JWTService>()),
          ],
          children: [
            AutoRoute(
              path: 'me',
              page: ProfileRoute.page,
              keepHistory: false,
              maintainState: false,
              guards: [
                AuthGuard(jwtService: locator<JWTService>()),
              ],
              initial: true,
            ),
            AutoRoute(
              path: 'elections',
              page: ElectionsRoute.page,
              keepHistory: false,
              maintainState: false,
              guards: [
                AuthGuard(jwtService: locator<JWTService>()),
              ],
            ),
            AutoRoute(
              path: 'elections/:id',
              page: ElectionDetailsRoute.page,
              keepHistory: false,
              maintainState: false,
              guards: [
                AuthGuard(jwtService: locator<JWTService>()),
              ],
            ),
            AutoRoute(
              path: 'management',
              page: CreateElectionRoute.page,
              keepHistory: false,
              maintainState: false,
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
