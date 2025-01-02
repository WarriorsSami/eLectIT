import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ElectionsPage extends StatelessWidget {
  const ElectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Elections page'),
    );
  }
}
