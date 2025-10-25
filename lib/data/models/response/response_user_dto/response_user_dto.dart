import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_user_dto.g.dart';
part 'response_user_dto.freezed.dart';

@freezed
abstract class ResponseUserDto with _$ResponseUserDto {
  const factory ResponseUserDto({
    required int id,
    required String email,
    required String phoneNumber,
    required String username,
    required String role,
    required bool isFollowed,
    required bool isFollowing,
  }) = _ResponseUserDto;
  factory ResponseUserDto.fromJson(Map<String, Object?> json) =>
      _$ResponseUserDtoFromJson(json);
}
