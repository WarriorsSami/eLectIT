import 'package:flutter/material.dart';

abstract class Constants {
  static const String appName = 'eLectIT';
  static const String appPromo =
      'Your digital election platform where you can manage and vote in elections from all around the world!';

  static const String jwtTokenKey = 'jwtToken';

  static const String welcomePageTitle = 'eLectIT - Welcome';
  static const String electionsPageTitle = 'eLectIT - Elections';
  static const String electionDetailsPageTitle = 'eLectIT - Election details';
  static const String createElectionPageTitle = 'eLectIT - Create new election';
  static const String loginPageTitle = 'eLectIT - Login';
  static const String registerVoterPageTitle =
      'eLectIT - Register voter account';
  static const String registerOrganizerPageTitle =
      'eLectIT - Register organizer account';
  static const String profilePageTitle = 'eLectIT - My profile';

  static const String welcomePageSubtitle = '''
    Welcome to eLectIT - your digital election platform! 
    Please choose your account type before proceeding.
   ''';

  static const String missingTokenErrorMessage = 'Access token is missing';
  static const String usernameLengthErrorMessage =
      'Username must be between 3 and 50 characters long';
  static const String passwordErrorMessage =
      'Password must contain at least 8 characters, one uppercase letter, one lowercase letter, one number and one special character.';
  static const String nationalIdErrorMessage =
      'National ID must be 13 digits long';
  static const String passwordsDoNotMatchErrorMessage =
      'Passwords do not match';
  static const String electionTitleLengthErrorMessage =
      'Election title must be between 3 and 50 characters long';
  static const String electionDescriptionLengthErrorMessage =
      'Election description must be between 10 and 500 characters long';
  static const String electionStartDateTimeErrorMessage =
      'Start date and time must be in the future';
  static const String electionEndDateTimeErrorMessage =
      'End date and time must be after the start date and time';
  static const String candidateNameLengthErrorMessage =
      'Candidate name must be between 3 and 50 characters long';
  static const String candidatePartyLengthErrorMessage =
      'Candidate party must be between 3 and 30 characters long';
  static const String candidateManifestoLengthErrorMessage =
      'Candidate manifesto must be between 10 and 500 characters long';
  static const String candidatePictureUrlErrorMessage =
      'Candidate picture URL must be a valid image URL (jpg, gif, png)';
  static const String candidateListIncompleteErrorMessage =
      'Please add at least two candidates to the election';

  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 50;
  static const String passwordRegex =
      '^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#\$%^&+=])(?=\\S+\$).{8,}\$';
  static const String nationalIdRegex = '^[0-9]{13}\$';
  static const int electionTitleMinLength = 3;
  static const int electionTitleMaxLength = 50;
  static const int electionDescriptionMinLength = 10;
  static const int electionDescriptionMaxLength = 500;
  static const int candidateNameMinLength = 3;
  static const int candidateNameMaxLength = 50;
  static const int candidatePartyMinLength = 3;
  static const int candidatePartyMaxLength = 30;
  static const int candidateManifestoMinLength = 10;
  static const int candidateManifestoMaxLength = 500;
  static const String candidatePictureUrlRegex =
      '^(http(s?):)(.*)\\.(?:jpg|gif|png)\$';

  static const String emailLabel = 'Email';
  static const String passwordLabel = 'Password';
  static const String usernameLabel = 'Username';
  static const String nationalIdLabel = 'National ID';
  static const String confirmPasswordLabel = 'Confirm password';
  static const String registerVoterLabel = 'Register voter account';
  static const String registerOrganizerLabel = 'Register organizer account';
  static const String voterAttributionsLabel =
      'You can vote in elections, view election results after they end, and manage your profile.';
  static const String organizerAttributionsLabel =
      'You can create and manage elections, candidates and monitor the election process and results.';
  static const String alreadyHaveAccountLabel = 'Already have an account? ';
  static const String newHereLabel = 'New here? ';
  static const String loginButtonLabel = 'Login';
  static const String registerButtonLabel = 'Register';
  static const String profileMenuLabel = 'Me';
  static const String electionsMenuLabel = 'Elections';
  static const String createElectionMenuLabel = 'Management';
  static const String logoutMenuLabel = 'Logout';
  static const String electionStepTitle = 'Election details';
  static const String candidatesStepTitle = 'Candidates';
  static const String electionTitleLabel = 'Title';
  static const String electionDescriptionLabel = 'Description';
  static const String electionStartDateTimeLabel = 'Start date and time';
  static const String electionEndDateTimeLabel = 'End date and time';
  static const String addCandidateButtonLabel = 'Add candidate';
  static const String candidateNameLabel = 'Name';
  static const String candidatePartyLabel = 'Party';
  static const String candidateManifestoLabel = 'Manifesto';
  static const String candidateImageUrlLabel = 'Picture URL';

  static const double widthRatio = 1.5;
  static const double extraLargeHeightRatio = 1.2;
  static const double largeHeightRatio = 2;
  static const double mediumHeightRatio = 3;
  static const double smallHeightRatio = 4.5;
  static const double cardElevation = 5.0;
  static const double iconSize = 40.0;
  static const double votePercentIndicatorWidth = 140.0;
  static const double votePercentIndicatorHeight = 14.0;
  static const int votePercentIndicatorAnimationDuration = 1000;
  static const int electionsGridCrossAxisCount = 2;
  static const double electionsGridChildAspectRatio = 3;
  static const int candidatesGridCrossAxisCount = 3;
  static const double candidatesGridChildAspectRatio = 3;
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
Radius barRadius = Radius.circular(8.0);

Color? tileColor = Colors.grey[300];
Color? barColor = Colors.grey[400];
Color? splashColor = Colors.grey[500];
Color? tileSelectedColor = Colors.grey[600];
Color? voteMarkColor = Colors.green;
Color? electionMarkColor = Colors.deepOrange;
