// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenericErrorDto _$GenericErrorDtoFromJson(Map<String, dynamic> json) =>
    _GenericErrorDto(
      path: json['path'] as String,
      message: json['message'] as String,
      status: json['status'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$GenericErrorDtoToJson(_GenericErrorDto instance) =>
    <String, dynamic>{
      'path': instance.path,
      'message': instance.message,
      'status': instance.status,
      'timestamp': instance.timestamp,
    };
