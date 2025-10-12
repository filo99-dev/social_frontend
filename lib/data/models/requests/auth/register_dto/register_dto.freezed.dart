// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterDto {

 String get email; String get username; String get password; String get phoneNumber;
/// Create a copy of RegisterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDtoCopyWith<RegisterDto> get copyWith => _$RegisterDtoCopyWithImpl<RegisterDto>(this as RegisterDto, _$identity);

  /// Serializes this RegisterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDto&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,password,phoneNumber);

@override
String toString() {
  return 'RegisterDto(email: $email, username: $username, password: $password, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $RegisterDtoCopyWith<$Res>  {
  factory $RegisterDtoCopyWith(RegisterDto value, $Res Function(RegisterDto) _then) = _$RegisterDtoCopyWithImpl;
@useResult
$Res call({
 String email, String username, String password, String phoneNumber
});




}
/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._self, this._then);

  final RegisterDto _self;
  final $Res Function(RegisterDto) _then;

/// Create a copy of RegisterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? username = null,Object? password = null,Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterDto].
extension RegisterDtoPatterns on RegisterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String username,  String password,  String phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterDto() when $default != null:
return $default(_that.email,_that.username,_that.password,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String username,  String password,  String phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _RegisterDto():
return $default(_that.email,_that.username,_that.password,_that.phoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String username,  String password,  String phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _RegisterDto() when $default != null:
return $default(_that.email,_that.username,_that.password,_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterDto implements RegisterDto {
  const _RegisterDto({required this.email, required this.username, required this.password, required this.phoneNumber});
  factory _RegisterDto.fromJson(Map<String, dynamic> json) => _$RegisterDtoFromJson(json);

@override final  String email;
@override final  String username;
@override final  String password;
@override final  String phoneNumber;

/// Create a copy of RegisterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterDtoCopyWith<_RegisterDto> get copyWith => __$RegisterDtoCopyWithImpl<_RegisterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterDto&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,password,phoneNumber);

@override
String toString() {
  return 'RegisterDto(email: $email, username: $username, password: $password, phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$RegisterDtoCopyWith<$Res> implements $RegisterDtoCopyWith<$Res> {
  factory _$RegisterDtoCopyWith(_RegisterDto value, $Res Function(_RegisterDto) _then) = __$RegisterDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String username, String password, String phoneNumber
});




}
/// @nodoc
class __$RegisterDtoCopyWithImpl<$Res>
    implements _$RegisterDtoCopyWith<$Res> {
  __$RegisterDtoCopyWithImpl(this._self, this._then);

  final _RegisterDto _self;
  final $Res Function(_RegisterDto) _then;

/// Create a copy of RegisterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? username = null,Object? password = null,Object? phoneNumber = null,}) {
  return _then(_RegisterDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
