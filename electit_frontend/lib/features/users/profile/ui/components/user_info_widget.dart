import 'package:electit_frontend/features/shared/domain/extensions/user_extensions.dart';
import 'package:electit_frontend/features/shared/ui/components/app_text_field.dart';
import 'package:electit_frontend/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  final String name;
  final String email;
  final Enum$Role role;

  const UserInfoWidget({
    required this.name,
    required this.email,
    required this.role,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: AppTextField(
            label: 'Name: ',
            text: name,
          ),
        ),
        Flexible(
          child: AppTextField(
            label: 'Email: ',
            text: email,
          ),
        ),
        Flexible(
          child: AppTextField(
            label: 'Role: ',
            text: role.value,
          ),
        ),
      ],
    );
  }
}
