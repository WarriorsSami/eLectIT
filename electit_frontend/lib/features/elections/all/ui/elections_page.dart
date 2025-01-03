import 'package:auto_route/annotations.dart';
import 'package:electit_frontend/features/elections/all/bloc/elections_bloc.dart';
import 'package:electit_frontend/features/elections/all/ui/components/election_preview_widget.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/domain/extensions/election_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ElectionsPage extends StatelessWidget {
  const ElectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => locator<ElectionsBloc>()..add(LoadElectionsEvent()),
      child: BlocListener<ElectionsBloc, ElectionsState>(
        listener: (context, state) {
          if (state is ElectionsErrorState) {
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
              Constants.electionsPageTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: BlocBuilder<ElectionsBloc, ElectionsState>(
            builder: (context, state) {
              if (state is ElectionsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ElectionsLoadedState) {
                return Center(
                  child: Padding(
                    padding: mediumPadding,
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Constants.electionsGridCrossAxisCount,
                        childAspectRatio:
                            Constants.electionsGridChildAspectRatio,
                      ),
                      itemCount: state.elections.length,
                      itemBuilder: (context, index) {
                        return ElectionPreviewWidget(
                          election: state.elections
                              .elementAt(index)
                              .toElectionPreview(),
                        );
                      },
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: Text('Error loading elections'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
