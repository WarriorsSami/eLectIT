import 'package:flutter/material.dart';

class AppSectionTitle extends StatelessWidget {
  final String title;

  const AppSectionTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            title,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Flexible(
          child: const Divider(),
        ),
      ],
    );
  }
}
