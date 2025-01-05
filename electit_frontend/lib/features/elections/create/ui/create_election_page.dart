import 'package:auto_route/annotations.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateElectionPage extends StatelessWidget {
  const CreateElectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.createElectionPageTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('Create Election Page'),
          ],
        ),
      ),
    );
  }
}
