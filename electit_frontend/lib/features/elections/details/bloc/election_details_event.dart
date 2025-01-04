part of 'election_details_bloc.dart';

@immutable
sealed class ElectionDetailsEvent {}

final class LoadElectionDetailsEvent extends ElectionDetailsEvent {
  final String electionId;

  LoadElectionDetailsEvent({required this.electionId});
}

final class CastVoteEvent extends ElectionDetailsEvent {
  final String electionId;
  final String candidateId;

  CastVoteEvent({
    required this.electionId,
    required this.candidateId,
  });
}
