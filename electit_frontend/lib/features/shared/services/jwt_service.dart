import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/entities/claims_principal.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class JWTService {
  final SharedPreferences _sharedPreferences;

  JWTService(this._sharedPreferences);

  bool get userIsAuthenticated =>
      _sharedPreferences.containsKey(Constants.jwtTokenKey) &&
      !currentUser.isExpired;

  ClaimsPrincipal get currentUser => ClaimsPrincipal.fromString(
      _sharedPreferences.getString(Constants.jwtTokenKey)!);

  String get token => _sharedPreferences.getString(Constants.jwtTokenKey)!;

  set token(String token) =>
      _sharedPreferences.setString(Constants.jwtTokenKey, token);

  void logout() => _sharedPreferences.remove(Constants.jwtTokenKey);
}
