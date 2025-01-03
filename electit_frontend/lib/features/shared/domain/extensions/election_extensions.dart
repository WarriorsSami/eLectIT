import 'package:electit_frontend/features/shared/domain/entities/election_preview.dart';
import 'package:electit_frontend/features/shared/domain/extensions/candidate_extensions.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:electit_frontend/graphql/queries/elections.graphql.dart';
import 'package:electit_frontend/graphql/queries/me_organizer.graphql.dart';

extension ElectionExtensions on ElectionPreview {
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

extension ManagedElectionsCandidateExtensions
    on Query$MeOrganizer$me$organizer$managedElections {
  ElectionPreview toElectionPreview() {
    return ElectionPreview(
      id: id,
      title: title,
      startTimestamp: startTimestamp,
      duration: duration,
      winner: winner?.toCandidatePreview(),
      votesCount: votesCount,
    );
  }
}

extension ElectionsCandidateExtensions on Query$Elections$elections {
  ElectionPreview toElectionPreview() {
    return ElectionPreview(
      id: id,
      title: title,
      startTimestamp: startTimestamp,
      duration: duration,
      winner: winner?.toCandidatePreview(),
      votesCount: votesCount,
    );
  }
}
