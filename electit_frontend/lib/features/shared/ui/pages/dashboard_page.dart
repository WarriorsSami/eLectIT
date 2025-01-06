import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/features/shared/ui/components/app_nav_link.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  color: tileColor,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Column(
                  children: [
                    Flexible(
                      child: AppNavLink(
                        icon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        label: Constants.profileMenuLabel,
                        destination: const ProfileRoute(),
                      ),
                    ),
                    Flexible(
                      child: AppNavLink(
                        icon: Icon(
                          Icons.how_to_vote,
                          color: Colors.deepOrange,
                        ),
                        label: Constants.electionsMenuLabel,
                        destination: const ElectionsRoute(),
                      ),
                    ),
                    if (locator<JWTService>().currentUser.isOrganizer)
                      Flexible(
                        child: AppNavLink(
                          icon: Icon(
                            Icons.dashboard_customize_rounded,
                            color: Colors.blue,
                          ),
                          label: Constants.createElectionMenuLabel,
                          destination: const CreateElectionRoute(),
                        ),
                      ),
                    Flexible(
                      child: ListTile(
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        title: const Text(
                          Constants.logoutMenuLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: tileColor,
                        splashColor: splashColor,
                        onTap: () {
                          locator<JWTService>().logout();
                          context.router.navigate(const LoginRoute());
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 4,
            child: AutoRouter(),
          ),
        ],
      ),
    );
  }
}
