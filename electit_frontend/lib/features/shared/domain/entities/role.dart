enum Role {
  voter,
  organizer;

  static Role fromString(String role) {
    return switch (role) {
      'VOTER' => Role.voter,
      'ORGANIZER' => Role.organizer,
      _ => throw Exception('Unknown role: $role'),
    };
  }

  String toShortString() {
    return switch (this) {
      Role.voter => 'VOTER',
      Role.organizer => 'ORGANIZER',
    };
  }
}
