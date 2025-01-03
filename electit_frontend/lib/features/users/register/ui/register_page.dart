import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/domain/entities/role.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
import 'package:electit_frontend/features/shared/ui/components/app_dialog.dart';
import 'package:electit_frontend/features/shared/ui/components/app_footer_link.dart';
import 'package:electit_frontend/features/users/register/bloc/register_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:graphql/client.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  late final Role userRole;

  RegisterPage({
    @queryParam String? role,
    super.key,
  }) {
    userRole = Role.fromString(role ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterFormBloc(
        jwtService: locator<JWTService>(),
        graphQLClient: locator<GraphQLClient>(),
        userRole: userRole,
      ),
      child: Builder(builder: (context) {
        final registerFormBloc = context.read<RegisterFormBloc>();

        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text(
              userRole == Role.voter
                  ? Constants.registerVoterPageTitle
                  : Constants.registerOrganizerPageTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: FormBlocListener<RegisterFormBloc, String, String>(
            onSubmitting: (context, state) {
              AppDialog.show(context);
            },
            onSubmissionFailed: (context, state) {
              AppDialog.hide(context);
            },
            onSuccess: (context, state) {
              AppDialog.hide(context);

              context.router.replace(const DashboardRoute());
            },
            onFailure: (context, state) {
              AppDialog.hide(context);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.failureResponse!,
                  ),
                ),
              );
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width /
                        Constants.widthRatio,
                    child: Text(
                      Constants.appPromo,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  smallVerticalSpace,
                  AutofillGroup(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height /
                          Constants.extraLargeHeightRatio,
                      width: MediaQuery.of(context).size.width /
                          Constants.widthRatio,
                      child: Card(
                        elevation: Constants.cardElevation,
                        margin: mediumPadding,
                        shape: RoundedRectangleBorder(
                          borderRadius: roundedBorderRadius,
                        ),
                        child: Padding(
                          padding: smallPadding,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TextFieldBlocBuilder(
                                textFieldBloc: registerFormBloc.username,
                                keyboardType: TextInputType.name,
                                autofillHints: const [
                                  AutofillHints.newUsername,
                                ],
                                decoration: const InputDecoration(
                                  labelText: Constants.usernameLabel,
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              if (userRole == Role.voter)
                                TextFieldBlocBuilder(
                                  textFieldBloc: registerFormBloc.nationalId,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: Constants.nationalIdLabel,
                                    prefixIcon: Icon(Icons.credit_card),
                                  ),
                                ),
                              TextFieldBlocBuilder(
                                textFieldBloc: registerFormBloc.email,
                                keyboardType: TextInputType.emailAddress,
                                autofillHints: const [
                                  AutofillHints.email,
                                ],
                                decoration: const InputDecoration(
                                  labelText: Constants.emailLabel,
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                              TextFieldBlocBuilder(
                                textFieldBloc: registerFormBloc.password,
                                suffixButton: SuffixButton.obscureText,
                                autofillHints: const [
                                  AutofillHints.newPassword,
                                ],
                                decoration: const InputDecoration(
                                  labelText: Constants.passwordLabel,
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                              TextFieldBlocBuilder(
                                textFieldBloc: registerFormBloc.confirmPassword,
                                suffixButton: SuffixButton.obscureText,
                                autofillHints: const [
                                  AutofillHints.password,
                                ],
                                decoration: const InputDecoration(
                                  labelText: Constants.confirmPasswordLabel,
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: registerFormBloc.submit,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  padding: buttonPadding,
                                ),
                                child: Text(
                                  Constants.registerButtonLabel,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .fontSize,
                                  ),
                                ),
                              ),
                              AppFooterLink(
                                message: Constants.alreadyHaveAccountLabel,
                                linkText: Constants.loginButtonLabel,
                                onTap: () =>
                                    context.router.replace(const LoginRoute()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
