part of 'profile_bloc.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitialState extends ProfileState {}

final class ProfileLoadingState extends ProfileState {}

final class ProfileLoadedState extends ProfileState {
  final Either<Query$MeVoter$me$voter, Query$MeOrganizer$me$organizer>
      userProfile;

  ProfileLoadedState({required this.userProfile});
}

final class ProfileErrorState extends ProfileState {
  final String message;

  ProfileErrorState({required this.message});
}
