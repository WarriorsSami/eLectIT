import 'dart:async';

import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/entities/role.dart';
import 'package:electit_frontend/features/shared/domain/extensions/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/mutations/register_organizer.graphql.dart';
import 'package:electit_frontend/graphql/mutations/register_voter.graphql.dart';
import 'package:electit_frontend/graphql/schema.graphql.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:graphql/client.dart';

class RegisterFormBloc extends FormBloc<String, String> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;
  final Role userRole;

  final username = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      _validateUsername,
    ],
  );

  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final nationalId = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      _validateNationalId,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      _validatePassword,
    ],
  );

  final confirmPassword = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  RegisterFormBloc({
    required this.jwtService,
    required this.graphQLClient,
    required this.userRole,
  }) {
    addFieldBlocs(
      fieldBlocs: [
        username,
        email,
        password,
        confirmPassword,
      ],
    );

    if (userRole == Role.voter) {
      addFieldBlocs(
        fieldBlocs: [
          nationalId,
        ],
      );
    }

    confirmPassword
      ..addValidators([_confirmPassword(password)])
      ..subscribeToFieldBlocs([password]);
  }

  static String? _validateUsername(String? username) {
    if (Constants.usernameMinLength > username!.length ||
        username.length > Constants.usernameMaxLength) {
      return Constants.usernameLengthErrorMessage;
    }
    return null;
  }

  static String? _validatePassword(String? password) {
    if (!RegExp(Constants.passwordRegex).hasMatch(password!)) {
      return Constants.passwordErrorMessage;
    }
    return null;
  }

  static String? _validateNationalId(String? nationalId) {
    if (!RegExp(Constants.nationalIdRegex).hasMatch(nationalId!)) {
      return Constants.nationalIdErrorMessage;
    }
    return null;
  }

  Validator<String> _confirmPassword(TextFieldBloc passwordTextFieldBloc) {
    return (confirmPassword) {
      if (confirmPassword != passwordTextFieldBloc.value) {
        return Constants.passwordsDoNotMatchErrorMessage;
      }
      return null;
    };
  }

  @override
  FutureOr<void> onSubmitting() async {
    if (userRole == Role.voter) {
      await _registerVoter();
    } else {
      await _registerOrganizer();
    }
  }

  FutureOr<void> _registerVoter() async {
    final result = await graphQLClient.mutate$RegisterVoter(
      Options$Mutation$RegisterVoter(
        variables: Variables$Mutation$RegisterVoter(
          voter: Input$VoterInput(
            name: username.value,
            email: email.value,
            nationalId: nationalId.value,
            password: password.value,
          ),
        ),
      ),
    );

    if (!result.hasException) {
      final parsedData = result.parsedData;
      final token = parsedData?.register.token;

      if (token == null) {
        emitFailure(failureResponse: Constants.missingTokenErrorMessage);
        return;
      }

      jwtService.token = token;

      emitSuccess();
    } else {
      emitFailure(failureResponse: result.failureResponse);
    }
  }

  FutureOr<void> _registerOrganizer() async {
    final result = await graphQLClient.mutate$RegisterOrganizer(
      Options$Mutation$RegisterOrganizer(
        variables: Variables$Mutation$RegisterOrganizer(
          organizer: Input$OrganizerInput(
            name: username.value,
            email: email.value,
            password: password.value,
          ),
        ),
      ),
    );

    if (!result.hasException) {
      final parsedData = result.parsedData;
      final token = parsedData?.register.token;

      if (token == null) {
        emitFailure(failureResponse: Constants.missingTokenErrorMessage);
        return;
      }

      jwtService.token = token;

      emitSuccess();
    } else {
      emitFailure(failureResponse: result.failureResponse);
    }
  }
}
