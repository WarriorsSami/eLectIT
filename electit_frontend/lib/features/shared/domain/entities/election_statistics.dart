class ElectionStatistics {
  final int votesCount;
  final List<({String id, String name, int votesCount})> candidates;

  ElectionStatistics({
    required this.votesCount,
    required this.candidates,
  });
}
