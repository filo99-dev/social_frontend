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
  const AuthService._();
  static final _instance = AuthService._();
  static AuthService get instance => _instance;

  Future<Result<ResponseUserDto>> login(LoginDto dto) async {
    try {
      final response = await http.post(
        Uri.parse(kLoginPath),
        headers: kRequestHeaders,
        body: jsonEncode(dto),
      );
      switch (response.statusCode) {
        case HttpStatus.ok:
          final body = jsonDecode(utf8.decode(response.bodyBytes));
          final responseDto = ResponseUserDto(
            id: body['id'],
            email: body['email'],
            phoneNumber: body['phoneNumber'],
            username: body['username'],
            role: body['role'],
            token: response.headers[HttpHeaders.authorizationHeader]!,
          );
          final result = await MySharedPreferences.instance.saveToken(
            response.headers[HttpHeaders.authorizationHeader]!,
          );
          if (result is Err<Exception>) {
            throw result.error;
          }
          return Result.ok(responseDto);
        default:
          final genericError = GenericErrorDto.fromJson(
            jsonDecode(utf8.decode(response.bodyBytes)),
          );
          return Result.error(genericError.message);
      }
    } on Exception catch (e) {
      log(e.toString());
      return Result.error(e);
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
          return Result.error(HttpException('register call error'));
      }
    } on Exception catch (e) {
      log(e.toString());
      return Result.error(e);
    }
  }
}
  // const AuthService._();
  // static final AuthService _instance = AuthService._();
  // static AuthService get() => _instance;
