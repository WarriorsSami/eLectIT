import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppFooterLink extends StatelessWidget {
  final String message;
  final String linkText;
  final void Function() onTap;

  const AppFooterLink({
    required this.message,
    required this.linkText,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: message,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
            ),
          ),
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
