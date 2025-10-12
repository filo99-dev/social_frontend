import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/models/requests/auth/register_dto/register_dto.dart';
import 'package:social_architecture_example/data/models/response/response_user_dto/response_user_dto.dart';
import 'package:social_architecture_example/data/services/auth/auth_service.dart';
import 'package:social_architecture_example/data/services/shared_preferences/my_shared_preferences.dart';
import 'package:social_architecture_example/domain/models/user_model/user_model.dart';
import 'package:social_architecture_example/utils/result.dart';

class AuthRepository {
  AuthRepository._();
  static final _instance = AuthRepository._();
  static AuthRepository get instance => _instance;

  final _authService = AuthService.instance;
  final _sharedPrefService = MySharedPreferences.instance;

  Future<Result<void>> register(RegisterDto dto) async {
    try {
      final result = await _authService.register(dto);
      switch (result) {
        case Ok():
          return Result.ok(null);
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<UserModel>> login(LoginDto dto) async {
    try {
      final result = await _authService.login(dto);
      switch (result) {
        case Error():
          return Result.error(result.error);
        case Ok<ResponseUserDto>():
          final responseDto = result.value;
          final userModel = UserModel.fromDto(responseDto);
          final tokenResult = await _sharedPrefService.saveToken(
            responseDto.token,
          );
          switch (tokenResult) {
            case Error():
              return Result.error(tokenResult.error);
            default:
              break;
          }
          return Result.ok(userModel);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
