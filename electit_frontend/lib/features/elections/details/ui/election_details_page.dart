import 'package:auto_route/annotations.dart';
import 'package:electit_frontend/features/elections/details/bloc/election_details_bloc.dart';
import 'package:electit_frontend/features/elections/details/ui/components/election_info_widget.dart';
import 'package:electit_frontend/features/elections/details/ui/components/election_statistics_widget.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/domain/extensions/election_extensions.dart';
import 'package:electit_frontend/features/shared/ui/components/app_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ElectionDetailsPage extends StatelessWidget {
  final String electionId;

  const ElectionDetailsPage({
    @PathParam('id') required this.electionId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => locator<ElectionDetailsBloc>()
        ..add(
          LoadElectionDetailsEvent(electionId: electionId),
        ),
      child: BlocListener<ElectionDetailsBloc, ElectionDetailsState>(
        listener: (context, state) {
          if (state is ElectionDetailsErrorState) {
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
              Constants.electionDetailsPageTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: BlocBuilder<ElectionDetailsBloc, ElectionDetailsState>(
            builder: (context, state) {
              if (state is ElectionDetailsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ElectionDetailsLoadedState) {
                return Center(
                  child: Padding(
                    padding: mediumPadding,
                    child: Column(
                      children: [
                        smallVerticalSpace,
                        Flexible(
                          child: ElectionInfoWidget(
                            title: state.election.title,
                            description: state.election.description,
                            startTimestamp: state.election.startTimestamp,
                            endTimestamp: state.election.endTimestamp,
                          ),
                        ),
                        smallVerticalSpace,
                        Flexible(
                          child: AppSectionTitle(title: 'Election statistics'),
                        ),
                        Flexible(
                          flex: 2,
                          child: state.election.votesCount != 0
                              ? ElectionStatisticsWidget(
                                  statistics:
                                      state.election.toElectionStatistics(),
                                )
                              : const Center(
                                  child: Text('No votes yet'),
                                ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: Text('Error loading election'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
