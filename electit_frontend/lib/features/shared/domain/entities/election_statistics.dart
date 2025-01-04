import 'package:electit_frontend/features/shared/domain/entities/candidate_preview.dart';

class ElectionStatistics {
  final int votesCount;
  final List<CandidatePreview> candidates;
  final CandidatePreview? winner;

  ElectionStatistics({
    required this.votesCount,
    required this.candidates,
    this.winner,
  });
}
