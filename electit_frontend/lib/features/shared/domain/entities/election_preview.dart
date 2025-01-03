import 'package:electit_frontend/features/shared/domain/entities/candidate_preview.dart';

class ElectionPreview {
  final String id;
  final String title;
  final int startTimestamp;
  final int duration;
  final CandidatePreview? winner;
  final int votesCount;

  ElectionPreview({
    required this.id,
    required this.title,
    required this.startTimestamp,
    required this.duration,
    required this.winner,
    required this.votesCount,
  });
}
