import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/models/requests/auth/register_dto/register_dto.dart';
import 'package:social_architecture_example/data/services/api_paths.dart';
import 'package:social_architecture_example/data/services/auth/auth_service.dart';
import 'package:social_architecture_example/data/services/shared_preferences/my_shared_preferences.dart';
import 'package:social_architecture_example/utils/result.dart';

class AuthRepository extends ChangeNotifier {
  AuthRepository({
    required AuthService authService,
    required MySharedPreferences sharedPreferencesService,
  }) : _authService = authService,
       _sharedPrefService = sharedPreferencesService;
  late final AuthService _authService;
  late final MySharedPreferences _sharedPrefService;

  Future<Result<void>> checkUsername(String username) async {
    return await _authService.checkUsername(username);
  }

  Future<Result<void>> register(RegisterDto dto) async {
    try {
      return await _authService.register(dto);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  bool? _isAuthenticated;
  String? _authToken;
  Future<bool> get isAuthenticated async {
    if (_isAuthenticated != null) {
      return _isAuthenticated!;
    }
    await _fetch();
    return _isAuthenticated ?? false;
  }

  Future<void> _fetch() async {
    final result = await _sharedPrefService.getToken();
    switch (result) {
      case Ok<String>():
        _authToken = result.value;
        _isAuthenticated = true;

        kRequestHeaders.putIfAbsent(
          HttpHeaders.authorizationHeader,
          () => result.value,
        );
        break;
      case Err():
        log('failed to fetch token from local storage');
    }
  }

  Future<Result<String>> login(LoginDto dto) async {
    try {
      final result = await _authService.login(dto);
      switch (result) {
        case Ok<String>():
          _isAuthenticated = true;
          _authToken = result.value;
          kRequestHeaders.putIfAbsent(
            HttpHeaders.authorizationHeader,
            () => result.value,
          );
          return await _sharedPrefService.saveToken(result.value);
        case Err():
          log('error logging in: ${result.error}');
          return Result.error(result.error);
      }
    } finally {
      notifyListeners();
    }
  }

  Future<Result<void>> logout() async {
    try {
      final result = await _sharedPrefService.clearToken();
      kRequestHeaders.remove(HttpHeaders.authorizationHeader);
      if (result is Err) {
        log('failed to clear token');
        _authToken = null;
        _isAuthenticated = false;
      }
      return result;
    } finally {
      notifyListeners();
    }
  }
}
