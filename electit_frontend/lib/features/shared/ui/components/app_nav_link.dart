import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:flutter/material.dart';

class AppNavLink extends StatelessWidget {
  final Icon icon;
  final String label;
  final PageRouteInfo destination;

  const AppNavLink({
    required this.icon,
    required this.label,
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      tileColor: tileColor,
      splashColor: splashColor,
      onTap: () {
        context.router.navigate(destination);
      },
    );
  }
}
