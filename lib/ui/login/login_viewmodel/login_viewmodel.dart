import 'dart:developer';

import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/utils/command.dart';
import 'package:social_architecture_example/utils/result.dart';

class LoginViewmodel {
  LoginViewmodel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    loginCommand = Command1<void, LoginDto>(_login);
  }
  late final AuthRepository _authRepository;
  late final Command1 loginCommand;

  Future<Result<void>> _login(LoginDto dto) async {
    final result = await _authRepository.login(dto);
    if (result is Err) {
      log('login failed');
    }
    return result;
  }
}
