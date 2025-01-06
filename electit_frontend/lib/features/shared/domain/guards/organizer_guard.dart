import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';

class OrganizerGuard extends AutoRouteGuard {
  final JWTService jwtService;

  OrganizerGuard({required this.jwtService});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (jwtService.userIsAuthenticated) {
      if (jwtService.currentUser.isOrganizer) {
        resolver.next(true);
      } else {
        resolver.redirect(const DashboardRoute());
      }
    } else {
      jwtService.logout();
      resolver.redirect(const LoginRoute());
    }
  }
}
