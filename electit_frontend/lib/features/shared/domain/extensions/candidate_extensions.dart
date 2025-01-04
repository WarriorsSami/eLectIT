import 'package:electit_frontend/features/shared/domain/entities/candidate.dart';
import 'package:electit_frontend/features/shared/domain/entities/candidate_preview.dart';
import 'package:electit_frontend/graphql/queries/election_by_id.graphql.dart';
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

extension ElectionDetailsCandidateWinnerExtensions
    on Query$ElectionById$electionById$winner {
  CandidatePreview toCandidatePreview() {
    return CandidatePreview(
      id: id,
      name: name,
      votesCount: votesCount,
    );
  }

  Candidate toCandidate() {
    return Candidate(
      id: id,
      name: name,
      party: party,
      manifesto: manifesto,
      pictureUrl: pictureUrl,
      votesCount: votesCount,
    );
  }
}

extension ElectionDetailsCandidateExtensions
    on Query$ElectionById$electionById$candidates {
  CandidatePreview toCandidatePreview() {
    return CandidatePreview(
      id: id,
      name: name,
      votesCount: votesCount,
    );
  }

  Candidate toCandidate(Query$ElectionById$electionById$myVote? myVote) {
    final hasMyVote = myVote != null && myVote.candidate.id == id;

    return Candidate(
      id: id,
      name: name,
      party: party,
      manifesto: manifesto,
      pictureUrl: pictureUrl,
      votesCount: votesCount,
      hasMyVote: hasMyVote,
    );
  }
}
