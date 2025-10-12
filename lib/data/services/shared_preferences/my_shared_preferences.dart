import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_architecture_example/utils/result.dart';

class MySharedPreferences {
  const MySharedPreferences._();
  static final _instance = MySharedPreferences._();
  static MySharedPreferences get instance => _instance;
  static const _tokenKey = 'JWT_AUTH_TOKEN';

  Future<Result<void>> saveToken(String token) async {
    try {
      final sp = await SharedPreferences.getInstance();
      sp.setString(_tokenKey, token);
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<String>> getToken() async {
    try {
      final sp = await SharedPreferences.getInstance();
      return Result.ok(sp.getString(_tokenKey)!);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
