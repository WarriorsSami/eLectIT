import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/ui/components/app_dialog.dart';
import 'package:electit_frontend/features/users/login/bloc/login_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<LoginFormBloc>(),
      child: Builder(
        builder: (context) {
          final loginFormBloc = context.read<LoginFormBloc>();

          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text(
                Constants.loginPageTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: FormBlocListener<LoginFormBloc, String, String>(
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
                            Constants.largeHeightRatio,
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
                                  textFieldBloc: loginFormBloc.email,
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
                                  textFieldBloc: loginFormBloc.password,
                                  suffixButton: SuffixButton.obscureText,
                                  autofillHints: const [
                                    AutofillHints.password,
                                  ],
                                  decoration: const InputDecoration(
                                    labelText: Constants.passwordLabel,
                                    prefixIcon: Icon(Icons.lock),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: loginFormBloc.submit,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    padding: buttonPadding,
                                  ),
                                  child: Text(
                                    Constants.loginButtonLabel,
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
        },
      ),
    );
  }
}
