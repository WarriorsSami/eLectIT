import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:electit_frontend/graphql/queries/me_voter.graphql.dart';
import 'package:flutter/material.dart';

class VoteWidget extends StatelessWidget {
  final Query$MeVoter$me$voter$votes vote;

  const VoteWidget({
    required this.vote,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check_circle_outline,
        size: Constants.iconSize,
        color: voteMarkColor,
      ),
      title: Text(
        'For candidate: ${vote.candidate.name}',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'In election: ${vote.election.title}',
      ),
      trailing: Text(
        'Casted at: ${vote.createdAt.toDateTimeString()}',
      ),
    );
  }
}
