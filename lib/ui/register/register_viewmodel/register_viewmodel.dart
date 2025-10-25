import 'package:social_architecture_example/data/models/requests/auth/register_dto/register_dto.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/utils/command.dart';
import 'package:social_architecture_example/utils/result.dart';

class RegisterViewmodel {
  RegisterViewmodel({required AuthRepository authRepository})
    : _repository = authRepository {
    registerCommand = Command1<void, RegisterDto>(_tryRegister);
    checkUsernameCommand = Command1<void, String>(_checkUsername);
  }
  late final Command1 registerCommand;
  late final Command1 checkUsernameCommand;
  late final AuthRepository _repository;

  Future<Result<void>> _tryRegister(RegisterDto dto) async {
    final result = await _repository.register(dto);
    return result;
  }

  Future<Result<void>> _checkUsername(String username) async {
    return await _repository.checkUsername(username);
  }
}
