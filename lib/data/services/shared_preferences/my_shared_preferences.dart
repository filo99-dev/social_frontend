import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_architecture_example/utils/result.dart';

class MySharedPreferences {
  static const _tokenKey = 'JWT_AUTH_TOKEN';

  Future<Result<String>> saveToken(String token) async {
    try {
      final sp = await SharedPreferences.getInstance();
      sp.setString(_tokenKey, token);
      return Result.ok(token);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<String>> getToken() async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(_tokenKey);
      if (token == null) {
        return Result.error('no token saved');
      }
      return Result.ok(token!);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<void>> clearToken() async {
    try {
      final sp = await SharedPreferences.getInstance();
      final removed = await sp.remove(_tokenKey);
      if (removed) {
        return Result.ok(null);
      } else {
        return Result.error('errore durante il logout');
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
