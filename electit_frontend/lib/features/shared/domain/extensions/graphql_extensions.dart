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

extension QueryResultExtensions<T> on QueryResult<T> {
  String get failureResponse => exception!.graphqlErrors.isNotEmpty
      ? exception!.graphqlErrors.first.message
      : 'An error occurred';
}
