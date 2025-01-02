import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/features/shared/ui/components/nav_link.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Flexible(
                  child: NavLink(
                    icon: Icons.person,
                    label: 'Me',
                    destination: const ProfileRoute(),
                  ),
                ),
                Flexible(
                  child: NavLink(
                    icon: Icons.how_to_vote,
                    label: 'Elections',
                    destination: const ElectionsRoute(),
                  ),
                ),
                Flexible(
                    child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  tileColor: Colors.grey[300],
                  splashColor: Colors.grey[500],
                  onTap: () {
                    locator<JWTService>().logout();
                    context.router.replace(const LoginRoute());
                  },
                )),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: AutoRouter(),
          ),
        ],
      ),
    );
  }
}
