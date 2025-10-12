import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.g.dart';
part 'login_dto.freezed.dart';
@freezed
abstract class LoginDto with _$LoginDto {
  const factory LoginDto({required String username, required String password}) = _LoginDto;
  factory LoginDto.fromJson(Map<String, Object?> json) =>
      _$LoginDtoFromJson(json);
}
