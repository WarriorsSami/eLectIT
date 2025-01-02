import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavLink extends StatelessWidget {
  final IconData icon;
  final String label;
  final PageRouteInfo destination;

  const NavLink({
    required this.icon,
    required this.label,
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      tileColor: Colors.grey[300],
      splashColor: Colors.grey[500],
      onTap: () {
        context.router.replace(destination);
      },
    );
  }
}
