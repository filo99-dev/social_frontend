import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_error_dto.g.dart';
part 'generic_error_dto.freezed.dart';

@freezed
abstract class GenericErrorDto with _$GenericErrorDto {
  const factory GenericErrorDto({
    required String path,
    required String message,
    required String status,
    required String timestamp,
  }) = _GenericErrorDto;
  factory GenericErrorDto.fromJson(Map<String, Object?> json) =>
      _$GenericErrorDtoFromJson(json);
}
