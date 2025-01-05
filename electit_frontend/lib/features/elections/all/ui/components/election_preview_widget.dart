import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/domain/entities/election_preview.dart';
import 'package:electit_frontend/features/shared/domain/extensions/election_extensions.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ElectionPreviewWidget extends StatelessWidget {
  final ElectionPreview election;

  const ElectionPreviewWidget({
    required this.election,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.navigate(
        ElectionDetailsRoute(electionId: election.id),
      ),
      child: ExpansionTile(
        leading: Icon(
          Icons.poll_outlined,
          size: Constants.iconSize,
          color: electionMarkColor,
        ),
        title: Text(
          election.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Winner: ${election.winner?.name ?? 'Not yet determined'}',
            ),
            LinearPercentIndicator(
              width: Constants.votePercentIndicatorWidth,
              lineHeight: Constants.votePercentIndicatorHeight,
              percent: election.winnerVotesPercentage,
              center: Text(
                election.winnerVotesPercentage.toPercentageString(),
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                ),
              ),
              trailing: Icon(
                Icons.bar_chart,
                color: voteMarkColor,
              ),
              barRadius: barRadius,
              backgroundColor: barColor,
              progressColor: voteMarkColor,
              animation: true,
              animationDuration:
                  Constants.votePercentIndicatorAnimationDuration,
            ),
          ],
        ),
        trailing: Column(
          children: [
            Text('From: ${election.startTimestamp.toDateTimeString()}'),
            Text('To: ${election.endTimestamp.toDateTimeString()}'),
          ],
        ),
        childrenPadding: mediumPadding,
        children: [
          if (election.isOngoing)
            TimerCountdown(
              format: CountDownTimerFormat.daysHoursMinutesSeconds,
              endTime: election.endDate,
              colonsTextStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
              timeTextStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
              descriptionTextStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          if (election.isUpcoming)
            Text(
              'Upcoming',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
              ),
            ),
          if (election.isFinished)
            Text(
              'Finished',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
              ),
            ),
        ],
      ),
    );
  }
}
