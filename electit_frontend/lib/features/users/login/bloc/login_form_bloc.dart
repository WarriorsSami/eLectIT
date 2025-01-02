import 'dart:async';

import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/graphql_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/graphql/queries/login.graphql.dart';
import 'package:electit_frontend/graphql/schema.graphql.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginFormBloc extends FormBloc<String, String> {
  final JWTService jwtService;
  final GraphQLClient graphQLClient;

  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  LoginFormBloc({
    required this.jwtService,
    required this.graphQLClient,
  }) {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
      ],
    );
  }

  @override
  FutureOr<void> onSubmitting() async {
    final result = await graphQLClient.query$Login(
      Options$Query$Login(
        variables: Variables$Query$Login(
          credentials: Input$LoginInput(
            email: email.value,
            password: password.value,
          ),
        ),
      ),
    );

    if (!result.hasException) {
      final parsedData = result.parsedData;
      final token = parsedData?.login.token;

      if (token == null) {
        emitFailure(failureResponse: Constants.missingTokenErrorMessage);
        return;
      }

      jwtService.setToken(token);

      emitSuccess();
    } else {
      emitFailure(failureResponse: result.failureResponse);
    }
  }
}
