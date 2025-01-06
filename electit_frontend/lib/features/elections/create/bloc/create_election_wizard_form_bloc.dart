import 'dart:async';

import 'package:electit_frontend/features/elections/create/bloc/candidate_group_field_bloc.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/extensions/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/mutations/create_election.graphql.dart';
import 'package:electit_frontend/graphql/schema.graphql.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateElectionWizardFormBloc extends FormBloc<String, String> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;

  final title = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      _validateTitle,
    ],
  );

  final description = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      _validateDescription,
    ],
  );

  final startDateTime = InputFieldBloc<DateTime, Object>(
    initialValue: DateTime.now(),
    validators: [
      FieldBlocValidators.required,
      _validateStartDateTime,
    ],
  );

  final endDateTime = InputFieldBloc<DateTime, Object>(
    initialValue: DateTime.now().add(Duration(days: 1)),
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final candidates = ListFieldBloc<CandidateFieldBloc, dynamic>();

  CreateElectionWizardFormBloc({
    required this.jwtService,
    required this.graphQLClient,
  }) {
    addFieldBlocs(
      step: 0,
      fieldBlocs: [
        title,
        description,
        startDateTime,
        endDateTime,
      ],
    );

    addFieldBlocs(
      step: 1,
      fieldBlocs: [
        candidates,
      ],
    );

    endDateTime
      ..addValidators([_validateEndDateTime(startDateTime)])
      ..subscribeToFieldBlocs([startDateTime]);
  }

  void addCandidate() {
    candidates.addFieldBloc(CandidateFieldBloc(
      candidateName: TextFieldBloc(),
      candidateParty: TextFieldBloc(),
      candidateManifesto: TextFieldBloc(),
      candidateImageUrl: TextFieldBloc(),
    ));
  }

  void removeCandidate(int index) {
    candidates.removeFieldBlocAt(index);
  }

  static String? _validateTitle(String? title) {
    if (Constants.electionTitleMinLength > title!.length ||
        title.length > Constants.electionTitleMaxLength) {
      return Constants.electionTitleLengthErrorMessage;
    }
    return null;
  }

  static String? _validateDescription(String? description) {
    if (Constants.electionDescriptionMinLength > description!.length ||
        description.length > Constants.electionDescriptionMaxLength) {
      return Constants.electionDescriptionLengthErrorMessage;
    }
    return null;
  }

  static String? _validateStartDateTime(DateTime? startDateTime) {
    if (startDateTime!.isBefore(DateTime.now())) {
      return Constants.electionStartDateTimeErrorMessage;
    }
    return null;
  }

  Validator<DateTime> _validateEndDateTime(
      InputFieldBloc<DateTime, Object> startDateTime) {
    return (endDateTime) {
      if (endDateTime.isBefore(startDateTime.value)) {
        return Constants.electionEndDateTimeErrorMessage;
      }
      return null;
    };
  }

  @override
  FutureOr<void> onSubmitting() async {
    if (state.currentStep == 0) {
      emitSuccess();
    } else {
      if (candidates.value.length < 2) {
        emitFailure(
            failureResponse: Constants.candidateListIncompleteErrorMessage);
        return;
      }

      await _createElection();
    }
  }

  FutureOr<void> _createElection() async {
    final result = await graphQLClient
        .attachToken(
          jwtService.token,
        )
        .mutate$CreateElection(
          Options$Mutation$CreateElection(
            variables: Variables$Mutation$CreateElection(
              title: title.value,
              description: description.value,
              startTimestamp:
                  startDateTime.value.millisecondsSinceEpoch ~/ 1000,
              duration:
                  endDateTime.value.difference(startDateTime.value).inSeconds,
              candidates: candidates.value
                  .map(
                    (candidate) => Input$CandidateInput(
                      name: candidate.candidateName.value,
                      party: candidate.candidateParty.value,
                      manifesto: candidate.candidateManifesto.value,
                      pictureUrl: candidate.candidateImageUrl.value,
                    ),
                  )
                  .toList(),
            ),
          ),
        );

    if (!result.hasException) {
      emitSuccess();
    } else {
      emitFailure(failureResponse: result.failureResponse);
    }
  }
}
