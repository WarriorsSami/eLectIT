import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';

class AnonymousGuard extends AutoRouteGuard {
  final JWTService jwtService;

  AnonymousGuard({required this.jwtService});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!jwtService.userIsAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(const DashboardRoute());
    }
  }
}
