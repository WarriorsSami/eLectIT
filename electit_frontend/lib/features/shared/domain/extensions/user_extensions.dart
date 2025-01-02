import 'package:electit_frontend/graphql/schema.graphql.dart';

extension UserRoleGraphQlExtensions on Enum$Role {
  String get value => switch (this) {
        Enum$Role.VOTER => 'Voter',
        Enum$Role.ORGANIZER => 'Organizer',
        Enum$Role.$unknown => throw Exception('Unknown role'),
      };
}
