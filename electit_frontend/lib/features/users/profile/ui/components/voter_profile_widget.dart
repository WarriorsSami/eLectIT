import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/ui/components/app_section_title.dart';
import 'package:electit_frontend/features/users/profile/ui/components/user_info_widget.dart';
import 'package:electit_frontend/features/users/profile/ui/components/vote_widget.dart';
import 'package:electit_frontend/graphql/queries/me_voter.graphql.dart';
import 'package:flutter/material.dart';

class VoterProfileWidget extends StatelessWidget {
  final Query$MeVoter$me$voter voter;

  const VoterProfileWidget({
    required this.voter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        smallVerticalSpace,
        Flexible(
          child: UserInfoWidget(
            name: voter.name,
            email: voter.email,
            role: voter.role,
          ),
        ),
        mediumVerticalSpace,
        Flexible(
          child: AppSectionTitle(
            title: 'Votes for the user with national ID: ${voter.nationalId}',
          ),
        ),
        smallVerticalSpace,
        Flexible(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3,
            ),
            itemCount: voter.votes?.length,
            itemBuilder: (context, index) {
              return VoteWidget(
                vote: voter.votes!.elementAt(index),
              );
            },
          ),
        ),
      ],
    );
  }
}
