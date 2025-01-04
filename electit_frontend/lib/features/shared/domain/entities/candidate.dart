class Candidate {
  final String id;
  final String name;
  final String party;
  final String manifesto;
  final String? pictureUrl;
  final int votesCount;
  final bool hasMyVote;

  Candidate({
    required this.id,
    required this.name,
    required this.party,
    required this.manifesto,
    required this.pictureUrl,
    required this.votesCount,
    this.hasMyVote = false,
  });

  double votesPercentage(int electionVotesCount) {
    return votesCount / electionVotesCount;
  }
}
