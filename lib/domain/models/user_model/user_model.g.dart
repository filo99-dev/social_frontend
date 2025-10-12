// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  username: json['username'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  id: (json['id'] as num).toInt(),
  role: $enumDecode(_$RoleEnumMap, json['role']),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'id': instance.id,
      'role': _$RoleEnumMap[instance.role]!,
    };

const _$RoleEnumMap = {
  Role.base: 'base',
  Role.moderator: 'moderator',
  Role.admin: 'admin',
};
