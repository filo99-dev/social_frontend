import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_architecture_example/data/models/response/response_user_dto/response_user_dto.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String username,
    required String email,
    required String phoneNumber,
    required int id,
    required Role role,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
  factory UserModel.fromDto(ResponseUserDto dto) {
    return UserModel(
      username: dto.username,
      email: dto.email,
      phoneNumber: dto.phoneNumber,
      id: dto.id,
      role: RoleX.fromString(dto.role),
    );
  }
}

@JsonEnum()
enum Role { base, moderator, admin }

extension RoleX on Role {
  String toJson() => name;
  static Role fromJson(String value) {
    return Role.values.firstWhere((e) => e.name == value);
  }

  static Role fromString(String value) => fromJson(value);
}
