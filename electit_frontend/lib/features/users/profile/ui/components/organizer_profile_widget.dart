import 'package:electit_frontend/features/users/profile/ui/components/user_info_widget.dart';
import 'package:electit_frontend/graphql/queries/me_organizer.graphql.dart';
import 'package:flutter/material.dart';

class OrganizerProfileWidget extends StatelessWidget {
  final Query$MeOrganizer$me$organizer organizer;

  const OrganizerProfileWidget({
    required this.organizer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UserInfoWidget(
      name: organizer.name,
      email: organizer.email,
      role: organizer.role,
    );
  }
}
