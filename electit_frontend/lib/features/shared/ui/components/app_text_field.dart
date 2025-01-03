import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String text;

  const AppTextField({
    required this.label,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            label,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Flexible(
          child: TextField(
            controller: TextEditingController(text: text),
            readOnly: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
