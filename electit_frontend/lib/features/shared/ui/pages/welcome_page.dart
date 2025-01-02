import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/router.gr.dart';
import 'package:electit_frontend/features/shared/domain/role.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.welcomePageTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / Constants.widthRatio,
              child: Text(
                Constants.welcomePageSubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            smallVerticalSpace,
            SizedBox(
              width: MediaQuery.of(context).size.width / Constants.widthRatio,
              height: MediaQuery.of(context).size.height /
                  Constants.smallHeightRatio,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        size: Constants.iconSize,
                      ),
                      title: Padding(
                        padding: smallPadding,
                        child: Text(
                          Constants.registerVoterLabel,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(Constants.voterAttributionsLabel),
                      contentPadding: mediumPadding,
                      iconColor: Colors.green,
                      tileColor: Colors.lightBlueAccent[100],
                      splashColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: roundedBorderRadius,
                      ),
                      onTap: () => context.router.push(
                        RegisterRoute(role: Role.voter.toShortString()),
                      ),
                    ),
                  ),
                  smallHorizontalSpace,
                  Flexible(
                    child: ListTile(
                      leading: Icon(
                        Icons.how_to_vote,
                        size: Constants.iconSize,
                      ),
                      title: Padding(
                        padding: smallPadding,
                        child: Text(
                          Constants.registerOrganizerLabel,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(Constants.organizerAttributionsLabel),
                      contentPadding: mediumPadding,
                      iconColor: Colors.deepOrange,
                      tileColor: Colors.lightBlueAccent[100],
                      splashColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: roundedBorderRadius,
                      ),
                      onTap: () => context.router.push(
                        RegisterRoute(role: Role.organizer.toShortString()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            smallVerticalSpace,
            SizedBox(
              width: MediaQuery.of(context).size.width / Constants.widthRatio,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: Constants.alreadyHaveAccountLabel,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                      ),
                    ),
                    TextSpan(
                      text: Constants.loginButtonLabel,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.router.push(LoginRoute()),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}