part of 'election_details_bloc.dart';

@immutable
sealed class ElectionDetailsEvent {}

final class LoadElectionDetailsEvent extends ElectionDetailsEvent {
  final String electionId;

  LoadElectionDetailsEvent({required this.electionId});
}
