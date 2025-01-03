import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:electit_frontend/graphql/queries/me_organizer.graphql.dart';

extension ManagedElectionExtensions
    on Query$MeOrganizer$me$organizer$managedElections {
  int get endTimestamp => startTimestamp + duration;

  DateTime get startDate => startTimestamp.toDateTime();
  DateTime get endDate => endTimestamp.toDateTime();

  bool get isOngoing => DateTime.now().isBetween(startDate, endDate);

  double get winnerVotesPercentage {
    if (winner == null || votesCount == 0) {
      return 0.0;
    }

    return winner!.votesCount / votesCount;
  }
}
