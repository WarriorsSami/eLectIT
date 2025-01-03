import 'package:electit_frontend/features/shared/domain/extensions/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/queries/elections.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

part 'elections_event.dart';
part 'elections_state.dart';

@injectable
class ElectionsBloc extends Bloc<ElectionsEvent, ElectionsState> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;

  ElectionsBloc({
    required this.jwtService,
    required this.graphQLClient,
  }) : super(ElectionsInitialState()) {
    on<ElectionsEvent>((event, emit) async {
      if (event is LoadElectionsEvent) {
        await _loadElections(emit);
      }
    });
  }

  Future<void> _loadElections(Emitter<ElectionsState> emit) async {
    emit(ElectionsLoadingState());

    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .query$Elections(
          Options$Query$Elections(),
        );

    if (result.hasException) {
      emit(ElectionsErrorState(message: result.failureResponse));
      return;
    }

    final parsedData = result.parsedData;
    final elections = parsedData?.elections;

    if (elections == null) {
      emit(ElectionsErrorState(message: 'Failed to load elections'));
      return;
    }

    emit(ElectionsLoadedState(elections: elections));
  }
}
