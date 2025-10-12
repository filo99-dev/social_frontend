// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseUserDto {

 int get id; String get email; String get phoneNumber; String get username; String get role; String get token;
/// Create a copy of ResponseUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseUserDtoCopyWith<ResponseUserDto> get copyWith => _$ResponseUserDtoCopyWithImpl<ResponseUserDto>(this as ResponseUserDto, _$identity);

  /// Serializes this ResponseUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.username, username) || other.username == username)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,phoneNumber,username,role,token);

@override
String toString() {
  return 'ResponseUserDto(id: $id, email: $email, phoneNumber: $phoneNumber, username: $username, role: $role, token: $token)';
}


}

/// @nodoc
abstract mixin class $ResponseUserDtoCopyWith<$Res>  {
  factory $ResponseUserDtoCopyWith(ResponseUserDto value, $Res Function(ResponseUserDto) _then) = _$ResponseUserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String email, String phoneNumber, String username, String role, String token
});




}
/// @nodoc
class _$ResponseUserDtoCopyWithImpl<$Res>
    implements $ResponseUserDtoCopyWith<$Res> {
  _$ResponseUserDtoCopyWithImpl(this._self, this._then);

  final ResponseUserDto _self;
  final $Res Function(ResponseUserDto) _then;

/// Create a copy of ResponseUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? phoneNumber = null,Object? username = null,Object? role = null,Object? token = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseUserDto].
extension ResponseUserDtoPatterns on ResponseUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseUserDto value)  $default,){
final _that = this;
switch (_that) {
case _ResponseUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String phoneNumber,  String username,  String role,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseUserDto() when $default != null:
return $default(_that.id,_that.email,_that.phoneNumber,_that.username,_that.role,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String phoneNumber,  String username,  String role,  String token)  $default,) {final _that = this;
switch (_that) {
case _ResponseUserDto():
return $default(_that.id,_that.email,_that.phoneNumber,_that.username,_that.role,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String phoneNumber,  String username,  String role,  String token)?  $default,) {final _that = this;
switch (_that) {
case _ResponseUserDto() when $default != null:
return $default(_that.id,_that.email,_that.phoneNumber,_that.username,_that.role,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseUserDto implements ResponseUserDto {
  const _ResponseUserDto({required this.id, required this.email, required this.phoneNumber, required this.username, required this.role, required this.token});
  factory _ResponseUserDto.fromJson(Map<String, dynamic> json) => _$ResponseUserDtoFromJson(json);

@override final  int id;
@override final  String email;
@override final  String phoneNumber;
@override final  String username;
@override final  String role;
@override final  String token;

/// Create a copy of ResponseUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseUserDtoCopyWith<_ResponseUserDto> get copyWith => __$ResponseUserDtoCopyWithImpl<_ResponseUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.username, username) || other.username == username)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,phoneNumber,username,role,token);

@override
String toString() {
  return 'ResponseUserDto(id: $id, email: $email, phoneNumber: $phoneNumber, username: $username, role: $role, token: $token)';
}


}

/// @nodoc
abstract mixin class _$ResponseUserDtoCopyWith<$Res> implements $ResponseUserDtoCopyWith<$Res> {
  factory _$ResponseUserDtoCopyWith(_ResponseUserDto value, $Res Function(_ResponseUserDto) _then) = __$ResponseUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String phoneNumber, String username, String role, String token
});




}
/// @nodoc
class __$ResponseUserDtoCopyWithImpl<$Res>
    implements _$ResponseUserDtoCopyWith<$Res> {
  __$ResponseUserDtoCopyWithImpl(this._self, this._then);

  final _ResponseUserDto _self;
  final $Res Function(_ResponseUserDto) _then;

/// Create a copy of ResponseUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? phoneNumber = null,Object? username = null,Object? role = null,Object? token = null,}) {
  return _then(_ResponseUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
