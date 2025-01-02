import 'package:auto_route/annotations.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/domain/extensions/user_extensions.dart';
import 'package:electit_frontend/features/users/profile/bloc/profile_bloc.dart';
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
            title: const Text('Profile'),
          ),
          body: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ProfileLoadedState) {
                return switch (state.userProfile) {
                  Left(value: final voter) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Name: ${voter.name}'),
                          Text('Email: ${voter.email}'),
                          Text('National ID: ${voter.nationalId}'),
                          Text('Role: ${voter.role.value}'),
                        ],
                      ),
                    ),
                  Right(value: final organizer) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Name: ${organizer.name}'),
                          Text('Email: ${organizer.email}'),
                          Text('Role: ${organizer.role.value}'),
                        ],
                      ),
                    ),
                };
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
