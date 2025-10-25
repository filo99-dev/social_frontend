// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserDto _$ResponseUserDtoFromJson(Map<String, dynamic> json) =>
    _ResponseUserDto(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      role: json['role'] as String,
      isFollowed: json['isFollowed'] as bool,
      isFollowing: json['isFollowing'] as bool,
    );

Map<String, dynamic> _$ResponseUserDtoToJson(_ResponseUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'role': instance.role,
      'isFollowed': instance.isFollowed,
      'isFollowing': instance.isFollowing,
    };
