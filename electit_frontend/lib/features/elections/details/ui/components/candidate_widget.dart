import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/entities/candidate.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CandidateWidget extends StatelessWidget {
  final Candidate candidate;
  final int electionVotesCount;
  final bool disableExpansion;

  const CandidateWidget({
    required this.candidate,
    required this.electionVotesCount,
    this.disableExpansion = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AwesomeDialog(
          context: context,
          animType: AnimType.scale,
          dialogType: DialogType.info,
          body: Center(
            child: ExpansionTile(
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Candidate: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: candidate.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                      ),
                    ),
                    TextSpan(
                      text: ' (${candidate.party} party)',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: candidate.manifesto,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  text: 'Manifesto: ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                maxLines: 4,
              ),
              children: [
                candidate.pictureUrl != null
                    ? Image.network(
                        candidate.pictureUrl!,
                      )
                    : const Text(
                        'No photo available',
                      ),
              ],
            ),
          ),
          btnOkOnPress: () {},
        ).show();
      },
      child: SingleChildScrollView(
        child: ListTile(
          enabled: !disableExpansion,
          leading: candidate.hasMyVote
              ? Icon(
                  Icons.check_circle,
                  size: Constants.iconSize,
                  color: voteMarkColor,
                )
              : Icon(
                  Icons.person,
                  size: Constants.iconSize,
                  color: electionMarkColor,
                ),
          title: Text(
            candidate.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: candidate.votesCount != 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Votes count: ${candidate.votesCount} / $electionVotesCount',
                    ),
                    LinearPercentIndicator(
                      width: Constants.votePercentIndicatorWidth,
                      lineHeight: Constants.votePercentIndicatorHeight,
                      percent: candidate.votesPercentage(electionVotesCount),
                      center: Text(
                        candidate
                            .votesPercentage(electionVotesCount)
                            .toPercentageString(),
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                        ),
                      ),
                      trailing: Expanded(
                        child: Icon(
                          Icons.bar_chart,
                          color: voteMarkColor,
                        ),
                      ),
                      barRadius: barRadius,
                      backgroundColor: barColor,
                      progressColor: voteMarkColor,
                      animation: true,
                      animationDuration:
                          Constants.votePercentIndicatorAnimationDuration,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
          trailing: SizedBox(
            width: Constants.votePercentIndicatorWidth / 2,
            child: Text(
              '${candidate.party} party',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
