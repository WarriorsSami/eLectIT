import 'package:electit_frontend/features/shared/domain/entities/role.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class ClaimsPrincipal {
  final String username;
  final Role role;
  late bool isExpired;

  ClaimsPrincipal._({
    required this.username,
    required this.role,
    this.isExpired = false,
  });

  factory ClaimsPrincipal.fromString(String token) {
    final decodedToken = JwtDecoder.decode(token);

    final username = decodedToken['sub'];
    final role = Role.fromString(decodedToken['role']);
    final isExpired = JwtDecoder.isExpired(token);

    return ClaimsPrincipal._(
      username: username,
      role: role,
      isExpired: isExpired,
    );
  }

  bool get isVoter => role == Role.voter;
  bool get isOrganizer => role == Role.organizer;
}
