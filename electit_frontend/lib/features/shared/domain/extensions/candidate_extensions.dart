import 'package:electit_frontend/features/shared/domain/entities/candidate_preview.dart';
import 'package:electit_frontend/graphql/queries/elections.graphql.dart';
import 'package:electit_frontend/graphql/queries/me_organizer.graphql.dart';

extension ManagedElectionsCandidateExtensions
    on Query$MeOrganizer$me$organizer$managedElections$winner {
  CandidatePreview toCandidatePreview() {
    return CandidatePreview(
      id: id,
      name: name,
      votesCount: votesCount,
    );
  }
}

extension ElectionsCandidateExtensions on Query$Elections$elections$winner {
  CandidatePreview toCandidatePreview() {
    return CandidatePreview(
      id: id,
      name: name,
      votesCount: votesCount,
    );
  }
}
