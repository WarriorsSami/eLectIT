import 'package:electit_frontend/features/shared/domain/extensions/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/queries/me_organizer.graphql.dart';
import 'package:electit_frontend/graphql/queries/me_voter.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;

  ProfileBloc({
    required this.jwtService,
    required this.graphQLClient,
  }) : super(ProfileInitialState()) {
    on<ProfileEvent>((event, emit) async {
      if (event is LoadProfileEvent) {
        await _loadProfile(emit);
      }
    });
  }

  Future<void> _loadProfile(Emitter<ProfileState> emit) async {
    emit(ProfileLoadingState());

    if (!jwtService.userIsAuthenticated) {
      emit(ProfileErrorState(message: 'User is not authenticated'));
      return;
    }

    if (jwtService.currentUser.isVoter) {
      await _loadVoterProfile(emit);
    } else {
      await _loadOrganizerProfile(emit);
    }
  }

  Future<void> _loadVoterProfile(Emitter<ProfileState> emit) async {
    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .query$MeVoter(
          Options$Query$MeVoter(),
        );

    if (result.hasException) {
      emit(ProfileErrorState(message: result.failureResponse));
      return;
    }

    final parsedData = result.parsedData;
    final userProfile = parsedData?.me.voter;

    if (userProfile == null) {
      emit(ProfileErrorState(message: 'User profile not found'));
      return;
    }

    emit(ProfileLoadedState(userProfile: Left(userProfile)));
  }

  Future<void> _loadOrganizerProfile(Emitter<ProfileState> emit) async {
    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .query$MeOrganizer(
          Options$Query$MeOrganizer(),
        );

    if (result.hasException) {
      emit(ProfileErrorState(message: result.failureResponse));
      return;
    }

    final parsedData = result.parsedData;
    final userProfile = parsedData?.me.organizer;

    if (userProfile == null) {
      emit(ProfileErrorState(message: 'User profile not found'));
      return;
    }

    emit(ProfileLoadedState(userProfile: Right(userProfile)));
  }
}
