import 'package:electit_frontend/features/elections/all/ui/components/election_preview_widget.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/extensions/election_extensions.dart';
import 'package:electit_frontend/features/shared/ui/components/app_section_title.dart';
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
    return Column(
      children: [
        smallVerticalSpace,
        Flexible(
          child: UserInfoWidget(
            name: organizer.name,
            email: organizer.email,
            role: organizer.role,
          ),
        ),
        mediumVerticalSpace,
        Flexible(
          child: AppSectionTitle(
            title: 'My managed elections:',
          ),
        ),
        Flexible(
          flex: 2,
          child: GridView.builder(
            physics: ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Constants.electionsGridCrossAxisCount,
              childAspectRatio: Constants.electionsGridChildAspectRatio,
            ),
            itemCount: organizer.managedElections?.length,
            itemBuilder: (context, index) {
              return ElectionPreviewWidget(
                election: organizer.managedElections!
                    .elementAt(index)
                    .toElectionPreview(),
              );
            },
          ),
        ),
      ],
    );
  }
}
