import 'package:auto_route/annotations.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/users/profile/bloc/profile_bloc.dart';
import 'package:electit_frontend/features/users/profile/ui/components/organizer_profile_widget.dart';
import 'package:electit_frontend/features/users/profile/ui/components/voter_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => locator<ProfileBloc>()..add(LoadProfileEvent()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state is ProfileErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.message,
                ),
              ),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              Constants.profilePageTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ProfileLoadedState) {
                return Center(
                  child: Padding(
                    padding: mediumPadding,
                    child: switch (state.userProfile) {
                      Left(value: final voter) =>
                        VoterProfileWidget(voter: voter),
                      Right(value: final organizer) =>
                        OrganizerProfileWidget(organizer: organizer),
                    },
                  ),
                );
              } else {
                return const Center(
                  child: Text('Error loading profile'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
