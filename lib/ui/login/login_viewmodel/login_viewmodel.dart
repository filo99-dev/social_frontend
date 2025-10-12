import 'package:flutter/material.dart';
import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/repositories/auth/auth_repository.dart';
import 'package:social_architecture_example/domain/models/user_model/user_model.dart';
import 'package:social_architecture_example/utils/command.dart';
import 'package:social_architecture_example/utils/result.dart';

class LoginViewmodel extends ChangeNotifier {
  LoginViewmodel() {
    command = Command(_tryLogin);
  }
  final AuthRepository _authRepository = AuthRepository.instance;
  late final Command command;

  bool isAuthenticated = false;
  UserModel? _userModel;
  UserModel? get user => _userModel;

  String? username;
  String? password;

  Future<Result<void>> _tryLogin() async {
    isAuthenticated = false;
    bool missingCredentials = !(username != null && password != null);

    if (missingCredentials) {
      return Result.error(Exception('username and password cannot be null'));
    }
    final result = await _authRepository.login(
      LoginDto(username: username!, password: password!),
    );
    switch (result) {
      case Ok<UserModel>():
        {
          _userModel = result.value;
          isAuthenticated = true;
          notifyListeners();
          return Result.ok(null);
        }
      case Err():
        return Result.error(result.error);
    }
  }
}
