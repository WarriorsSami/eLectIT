import 'package:graphql/client.dart';

extension GraphqlClientExtensions on GraphQLClient {
  GraphQLClient attachToken(String? token) {
    if (token != null) {
      return copyWith(
        link: Link.concat(
          AuthLink(getToken: () => 'Bearer $token'),
          link,
        ),
      );
    }
    return this;
  }
}
