import 'package:auto_route/auto_route.dart';
import 'package:electit_frontend/features/elections/details/bloc/election_details_bloc.dart';
import 'package:electit_frontend/features/elections/details/ui/components/candidate_widget.dart';
import 'package:electit_frontend/features/elections/details/ui/components/election_info_widget.dart';
import 'package:electit_frontend/features/elections/details/ui/components/election_statistics_widget.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/config/di.dart';
import 'package:electit_frontend/features/shared/domain/extensions/candidate_extensions.dart';
import 'package:electit_frontend/features/shared/domain/extensions/election_extensions.dart';
import 'package:electit_frontend/features/shared/services/jwt_service.dart';
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
          } else if (state is ElectionDetailsVoteCastedState) {
            context.read<ElectionDetailsBloc>().add(
                  LoadElectionDetailsEvent(electionId: electionId),
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
                return SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: mediumPadding,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: AppSectionTitle(
                                title:
                                    'Managed by organizer ${state.election.manager.name}',
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: ElectionInfoWidget(
                                title: state.election.title,
                                description: state.election.description,
                                startTimestamp: state.election.startTimestamp,
                                endTimestamp: state.election.endTimestamp,
                              ),
                            ),
                            if (state.election.showStatistics) ...[
                              Flexible(
                                child: AppSectionTitle(
                                  title: 'Election statistics',
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height /
                                      Constants.largeHeightRatio,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        flex: 2,
                                        child: state.election.votesCount != 0
                                            ? ElectionStatisticsWidget(
                                                statistics: state.election
                                                    .toElectionStatistics(),
                                              )
                                            : const Center(
                                                child: Text('No votes yet'),
                                              ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                'Winner:',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: state.election.winner !=
                                                          null &&
                                                      state.election.winner!
                                                              .votesCount !=
                                                          0
                                                  ? CandidateWidget(
                                                      candidate: state
                                                          .election.winner!
                                                          .toCandidate(),
                                                      electionVotesCount: state
                                                          .election.votesCount,
                                                      disableExpansion: true,
                                                    )
                                                  : const Text('No winner yet'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              smallVerticalSpace,
                            ],
                            Flexible(
                              child: AppSectionTitle(title: 'Candidates'),
                            ),
                            Flexible(
                              flex: 2,
                              child: state.election.candidates != null &&
                                      state.election.candidates!.isNotEmpty
                                  ? GridView.builder(
                                      physics: ScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: Constants
                                            .candidatesGridCrossAxisCount,
                                        childAspectRatio: Constants
                                            .candidatesGridChildAspectRatio,
                                      ),
                                      itemCount:
                                          state.election.candidates?.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            if (state.election.allowsVoting &&
                                                locator<JWTService>()
                                                    .currentUser
                                                    .isVoter)
                                              Flexible(
                                                child: MenuItemButton(
                                                  onPressed: () => context
                                                      .read<
                                                          ElectionDetailsBloc>()
                                                      .add(
                                                        CastVoteEvent(
                                                          electionId:
                                                              electionId,
                                                          candidateId: state
                                                              .election
                                                              .candidates!
                                                              .elementAt(index)
                                                              .id,
                                                        ),
                                                      ),
                                                  style: ButtonStyle(
                                                    shape:
                                                        WidgetStateProperty.all(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            roundedBorderRadius,
                                                      ),
                                                    ),
                                                    backgroundColor:
                                                        WidgetStateProperty.all(
                                                      voteMarkColor,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Vote',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            Flexible(
                                              flex: 6,
                                              child: CandidateWidget(
                                                candidate: state
                                                    .election.candidates!
                                                    .elementAt(index)
                                                    .toCandidate(
                                                        state.election.myVote),
                                                electionVotesCount:
                                                    state.election.votesCount,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    )
                                  : const Center(
                                      child: Text('No candidates yet'),
                                    ),
                            ),
                          ],
                        ),
                      ),
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
