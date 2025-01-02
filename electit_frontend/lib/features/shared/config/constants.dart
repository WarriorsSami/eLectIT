import 'package:flutter/material.dart';

abstract class Constants {
  static const String appName = 'eLectIT';
  static const String appPromo =
      'Your digital election platform where you can manage and vote in elections from all around the world!';

  static const String jwtTokenKey = 'jwtToken';

  static const String welcomePageTitle = 'eLectIT - Welcome';
  static const String dashboardPageTitle = 'eLectIT - Elections dashboard';
  static const String electionPageTitle = 'eLectIT - Election details';
  static const String manageElectionPageTitle = 'eLectIT - Manage election';
  static const String loginPageTitle = 'eLectIT - Login';
  static const String registerPageTitle = 'eLectIT - Register';
  static const String profilePageTitle = 'eLectIT - My profile';

  static const String welcomePageSubtitle = '''
    Welcome to eLectIT - your digital election platform! 
    Please choose your account type before proceeding.
   ''';

  static const String missingTokenErrorMessage = 'Access token is missing';

  static const String emailLabel = 'Email';
  static const String passwordLabel = 'Password';
  static const String registerVoterLabel = 'Register voter account';
  static const String registerOrganizerLabel = 'Register organizer account';
  static const String voterAttributionsLabel =
      'You can vote in elections, view election results after they end, and manage your profile.';
  static const String organizerAttributionsLabel =
      'You can create and manage elections, candidates and monitor the election process and results.';
  static const String alreadyHaveAccountLabel = 'Already have an account? ';
  static const String loginButtonLabel = 'Login';
  static const String registerButtonLabel = 'Register';

  static const double widthRatio = 1.5;
  static const double heightRatio = 3;
  static const double smallHeightRatio = 4.5;
  static const double cardElevation = 5.0;
  static const double iconSize = 40.0;
}

const Widget smallVerticalSpace = SizedBox(height: 32.0);
const Widget mediumVerticalSpace = SizedBox(height: 64.0);
const Widget largeVerticalSpace = SizedBox(height: 128.0);

const Widget smallHorizontalSpace = SizedBox(width: 32.0);
const Widget mediumHorizontalSpace = SizedBox(width: 64.0);
const Widget largeHorizontalSpace = SizedBox(width: 128.0);

const EdgeInsets smallPadding = EdgeInsets.all(8.0);
const EdgeInsets mediumPadding = EdgeInsets.all(16.0);
const EdgeInsets buttonPadding = EdgeInsets.symmetric(
  vertical: 16.0,
  horizontal: 32.0,
);
BorderRadius roundedBorderRadius = BorderRadius.circular(8.0);
