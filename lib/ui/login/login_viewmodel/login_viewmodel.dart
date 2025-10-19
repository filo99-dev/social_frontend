import 'package:flutter/material.dart';
import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/domain/models/user_model/user_model.dart';
import 'package:social_architecture_example/utils/command.dart';
import 'package:social_architecture_example/utils/result.dart';

class LoginViewmodel {
  LoginViewmodel() {
    loginCommand = Command1<UserModel, LoginDto>(_tryLogin);
  }
  final AuthRepository _authRepository = AuthRepository.instance;
  late final Command1 loginCommand;


  Future<Result<UserModel>> _tryLogin(LoginDto dto) async {
    return await _authRepository.login(dto);
  }

}
