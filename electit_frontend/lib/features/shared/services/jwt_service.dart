import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/claims_principal.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class JWTService {
  final SharedPreferences _sharedPreferences;

  JWTService(this._sharedPreferences);

  ClaimsPrincipal get token => ClaimsPrincipal.fromString(
      _sharedPreferences.getString(Constants.jwtTokenKey)!);

  void setToken(String token) {
    _sharedPreferences.setString(Constants.jwtTokenKey, token);
  }

  void removeToken() {
    _sharedPreferences.remove(Constants.jwtTokenKey);
  }
}
