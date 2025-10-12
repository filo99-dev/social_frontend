// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericErrorDto {

 String get path; String get message; String get status; String get timestamp;
/// Create a copy of GenericErrorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenericErrorDtoCopyWith<GenericErrorDto> get copyWith => _$GenericErrorDtoCopyWithImpl<GenericErrorDto>(this as GenericErrorDto, _$identity);

  /// Serializes this GenericErrorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenericErrorDto&&(identical(other.path, path) || other.path == path)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,message,status,timestamp);

@override
String toString() {
  return 'GenericErrorDto(path: $path, message: $message, status: $status, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $GenericErrorDtoCopyWith<$Res>  {
  factory $GenericErrorDtoCopyWith(GenericErrorDto value, $Res Function(GenericErrorDto) _then) = _$GenericErrorDtoCopyWithImpl;
@useResult
$Res call({
 String path, String message, String status, String timestamp
});




}
/// @nodoc
class _$GenericErrorDtoCopyWithImpl<$Res>
    implements $GenericErrorDtoCopyWith<$Res> {
  _$GenericErrorDtoCopyWithImpl(this._self, this._then);

  final GenericErrorDto _self;
  final $Res Function(GenericErrorDto) _then;

/// Create a copy of GenericErrorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? message = null,Object? status = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenericErrorDto].
extension GenericErrorDtoPatterns on GenericErrorDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenericErrorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenericErrorDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenericErrorDto value)  $default,){
final _that = this;
switch (_that) {
case _GenericErrorDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenericErrorDto value)?  $default,){
final _that = this;
switch (_that) {
case _GenericErrorDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String message,  String status,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenericErrorDto() when $default != null:
return $default(_that.path,_that.message,_that.status,_that.timestamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String message,  String status,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _GenericErrorDto():
return $default(_that.path,_that.message,_that.status,_that.timestamp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String message,  String status,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _GenericErrorDto() when $default != null:
return $default(_that.path,_that.message,_that.status,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenericErrorDto implements GenericErrorDto {
  const _GenericErrorDto({required this.path, required this.message, required this.status, required this.timestamp});
  factory _GenericErrorDto.fromJson(Map<String, dynamic> json) => _$GenericErrorDtoFromJson(json);

@override final  String path;
@override final  String message;
@override final  String status;
@override final  String timestamp;

/// Create a copy of GenericErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenericErrorDtoCopyWith<_GenericErrorDto> get copyWith => __$GenericErrorDtoCopyWithImpl<_GenericErrorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenericErrorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenericErrorDto&&(identical(other.path, path) || other.path == path)&&(identical(other.message, message) || other.message == message)&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,message,status,timestamp);

@override
String toString() {
  return 'GenericErrorDto(path: $path, message: $message, status: $status, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$GenericErrorDtoCopyWith<$Res> implements $GenericErrorDtoCopyWith<$Res> {
  factory _$GenericErrorDtoCopyWith(_GenericErrorDto value, $Res Function(_GenericErrorDto) _then) = __$GenericErrorDtoCopyWithImpl;
@override @useResult
$Res call({
 String path, String message, String status, String timestamp
});




}
/// @nodoc
class __$GenericErrorDtoCopyWithImpl<$Res>
    implements _$GenericErrorDtoCopyWith<$Res> {
  __$GenericErrorDtoCopyWithImpl(this._self, this._then);

  final _GenericErrorDto _self;
  final $Res Function(_GenericErrorDto) _then;

/// Create a copy of GenericErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? message = null,Object? status = null,Object? timestamp = null,}) {
  return _then(_GenericErrorDto(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
