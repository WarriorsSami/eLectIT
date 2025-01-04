import 'package:electit_frontend/features/shared/domain/extensions/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/mutations/cast_vote.graphql.dart';
import 'package:electit_frontend/graphql/queries/election_by_id.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

part 'election_details_event.dart';
part 'election_details_state.dart';

@injectable
class ElectionDetailsBloc
    extends Bloc<ElectionDetailsEvent, ElectionDetailsState> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;

  ElectionDetailsBloc({
    required this.jwtService,
    required this.graphQLClient,
  }) : super(ElectionDetailsInitialState()) {
    on<ElectionDetailsEvent>((event, emit) async {
      if (event is LoadElectionDetailsEvent) {
        await _loadElectionDetails(event.electionId, emit);
      } else if (event is CastVoteEvent) {
        await _castVote(event.electionId, event.candidateId, emit);
      }
    });
  }

  Future<void> _loadElectionDetails(
    String electionId,
    Emitter<ElectionDetailsState> emit,
  ) async {
    emit(ElectionDetailsLoadingState());

    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .query$ElectionById(
          Options$Query$ElectionById(
            variables: Variables$Query$ElectionById(
              id: electionId,
            ),
          ),
        );

    if (result.hasException) {
      emit(ElectionDetailsErrorState(message: result.failureResponse));
      return;
    }

    final parsedData = result.parsedData;
    final election = parsedData?.electionById;

    if (election == null) {
      emit(ElectionDetailsErrorState(message: 'Failed to load election'));
      return;
    }

    emit(ElectionDetailsLoadedState(election: election));
  }

  Future<void> _castVote(
    String electionId,
    String candidateId,
    Emitter<ElectionDetailsState> emit,
  ) async {
    emit(ElectionDetailsLoadingState());

    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .mutate$CastVote(
          Options$Mutation$CastVote(
            variables: Variables$Mutation$CastVote(
              electionId: electionId,
              candidateId: candidateId,
            ),
          ),
        );

    if (result.hasException) {
      emit(ElectionDetailsErrorState(message: result.failureResponse));
      return;
    }

    emit(ElectionDetailsVoteCastedState());
  }
}
