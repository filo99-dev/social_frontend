import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_dto.g.dart';
part 'register_dto.freezed.dart';

@freezed
abstract class RegisterDto with _$RegisterDto {
  const factory RegisterDto({
    required String email,
    required String username,
    required String password,
    required String phoneNumber,
  }) = _RegisterDto;
  factory RegisterDto.fromJson(Map<String, Object?> json) =>
      _$RegisterDtoFromJson(json);
}
