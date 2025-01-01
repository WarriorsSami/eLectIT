import 'package:electit_frontend/features/shared/domain/role.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class ClaimsPrincipal {
  final String username;
  final Role role;

  ClaimsPrincipal._({
    required this.username,
    required this.role,
  });

  factory ClaimsPrincipal.fromString(String token) {
    final decodedToken = JwtDecoder.decode(token);
    final username = decodedToken['username'];
    final role = Role.fromString(decodedToken['role']);

    return ClaimsPrincipal._(
      username: username,
      role: role,
    );
  }
}
