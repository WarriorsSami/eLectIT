import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';

class AuthGuard extends AutoRouteGuard {
  final JWTService jwtService;

  AuthGuard({required this.jwtService});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (jwtService.userIsAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(const LoginRoute());
    }
  }
}
