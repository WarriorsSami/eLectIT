part of 'election_details_bloc.dart';

@immutable
sealed class ElectionDetailsState {}

final class ElectionDetailsInitialState extends ElectionDetailsState {}

final class ElectionDetailsLoadingState extends ElectionDetailsState {}

final class ElectionDetailsLoadedState extends ElectionDetailsState {
  final Query$ElectionById$electionById election;

  ElectionDetailsLoadedState({required this.election});
}

final class ElectionDetailsErrorState extends ElectionDetailsState {
  final String message;

  ElectionDetailsErrorState({required this.message});
}
