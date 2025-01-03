part of 'elections_bloc.dart';

@immutable
sealed class ElectionsState {}

final class ElectionsInitialState extends ElectionsState {}

final class ElectionsLoadingState extends ElectionsState {}

final class ElectionsLoadedState extends ElectionsState {
  final List<Query$Elections$elections> elections;

  ElectionsLoadedState({required this.elections});
}

final class ElectionsErrorState extends ElectionsState {
  final String message;

  ElectionsErrorState({required this.message});
}
