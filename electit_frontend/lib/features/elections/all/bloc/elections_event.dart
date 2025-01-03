part of 'elections_bloc.dart';

@immutable
sealed class ElectionsEvent {}

final class LoadElectionsEvent extends ElectionsEvent {}
