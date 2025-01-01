class ApiConfig {
  static const String baseUrl = String.fromEnvironment('API_BASE_URL');
  static const String graphQlUrl = '$baseUrl/graphql';
}
