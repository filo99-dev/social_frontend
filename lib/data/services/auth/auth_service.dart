import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:social_architecture_example/data/models/requests/auth/login_dto/login_dto.dart';
import 'package:social_architecture_example/data/models/requests/auth/register_dto/register_dto.dart';
import 'package:social_architecture_example/data/models/response/generic_error_dto.dart/generic_error_dto.dart';
import 'package:social_architecture_example/data/models/response/response_user_dto/response_user_dto.dart';
import 'package:social_architecture_example/data/services/api_paths.dart';
import 'package:social_architecture_example/data/services/shared_preferences/my_shared_preferences.dart';
import 'package:social_architecture_example/utils/result.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<Result<void>> checkUsername(String username) async {
    try {
      final response = await http.get(
        Uri.parse('$kUsernameCheck/$username'),
        headers: kRequestHeaders,
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
          return Result.ok(null);
        default:
          return Result.error('username già in uso');
      }
    } on Exception catch (e) {
      log(e.toString());
      return Result.error('errore di rete, contattare il servizio tecnico');
    }
  }

  Future<Result<String>> login(LoginDto dto) async {
    try {
      final response = await http.post(
        Uri.parse(kLoginPath),
        headers: kRequestHeaders,
        body: jsonEncode(dto),
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
          final token = response.headers[HttpHeaders.authorizationHeader];
          return Result.ok(token!);
        default:
          final genericError = GenericErrorDto.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes)),
          );
          return Result.error(genericError.message);
      }
    } on Exception catch (e) {
      log(e.toString());
      return Result.error('errore di rete, contattare il servizio tecnico');
    }
  }

  Future<Result<void>> register(RegisterDto dto) async {
    try {
      final response = await http.post(
        Uri.parse(kRegisterPath),
        headers: kRequestHeaders,
        body: jsonEncode(dto),
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
          return Result.ok(null);
        default:
          final errorDto = GenericErrorDto.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes)),
          );
          return Result.error(errorDto.message);
      }
    } on Exception catch (e) {
      log(e.toString());
      return Result.error('errore di rete, contattare il servizio tecnico');
    }
  }
}
  // const AuthService._();
  // static final AuthService _instance = AuthService._();
  // static AuthService get() => _instance;
