// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userinfo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfo implements DiagnosticableTreeMixin {

 String get nickName; String? get mobile; String? get avatarUrl; String? get country; String? get province; String? get city; String? get language; String? get gender; String? get tag; String? get userId;
/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoCopyWith<UserInfo> get copyWith => _$UserInfoCopyWithImpl<UserInfo>(this as UserInfo, _$identity);

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInfo'))
    ..add(DiagnosticsProperty('nickName', nickName))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('avatarUrl', avatarUrl))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('province', province))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('tag', tag))..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfo&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.country, country) || other.country == country)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.language, language) || other.language == language)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickName,mobile,avatarUrl,country,province,city,language,gender,tag,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInfo(nickName: $nickName, mobile: $mobile, avatarUrl: $avatarUrl, country: $country, province: $province, city: $city, language: $language, gender: $gender, tag: $tag, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserInfoCopyWith<$Res>  {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) _then) = _$UserInfoCopyWithImpl;
@useResult
$Res call({
 String nickName, String? mobile, String? avatarUrl, String? country, String? province, String? city, String? language, String? gender, String? tag, String? userId
});




}
/// @nodoc
class _$UserInfoCopyWithImpl<$Res>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._self, this._then);

  final UserInfo _self;
  final $Res Function(UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nickName = null,Object? mobile = freezed,Object? avatarUrl = freezed,Object? country = freezed,Object? province = freezed,Object? city = freezed,Object? language = freezed,Object? gender = freezed,Object? tag = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfo].
extension UserInfoPatterns on UserInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfo value)  $default,){
final _that = this;
switch (_that) {
case _UserInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfo value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nickName,  String? mobile,  String? avatarUrl,  String? country,  String? province,  String? city,  String? language,  String? gender,  String? tag,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.nickName,_that.mobile,_that.avatarUrl,_that.country,_that.province,_that.city,_that.language,_that.gender,_that.tag,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nickName,  String? mobile,  String? avatarUrl,  String? country,  String? province,  String? city,  String? language,  String? gender,  String? tag,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _UserInfo():
return $default(_that.nickName,_that.mobile,_that.avatarUrl,_that.country,_that.province,_that.city,_that.language,_that.gender,_that.tag,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nickName,  String? mobile,  String? avatarUrl,  String? country,  String? province,  String? city,  String? language,  String? gender,  String? tag,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _UserInfo() when $default != null:
return $default(_that.nickName,_that.mobile,_that.avatarUrl,_that.country,_that.province,_that.city,_that.language,_that.gender,_that.tag,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfo with DiagnosticableTreeMixin implements UserInfo {
  const _UserInfo({required this.nickName, this.mobile, this.avatarUrl, this.country, this.province, this.city, this.language, this.gender, this.tag, this.userId});
  factory _UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

@override final  String nickName;
@override final  String? mobile;
@override final  String? avatarUrl;
@override final  String? country;
@override final  String? province;
@override final  String? city;
@override final  String? language;
@override final  String? gender;
@override final  String? tag;
@override final  String? userId;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoCopyWith<_UserInfo> get copyWith => __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInfo'))
    ..add(DiagnosticsProperty('nickName', nickName))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('avatarUrl', avatarUrl))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('province', province))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('tag', tag))..add(DiagnosticsProperty('userId', userId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfo&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.country, country) || other.country == country)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.language, language) || other.language == language)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickName,mobile,avatarUrl,country,province,city,language,gender,tag,userId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInfo(nickName: $nickName, mobile: $mobile, avatarUrl: $avatarUrl, country: $country, province: $province, city: $city, language: $language, gender: $gender, tag: $tag, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) _then) = __$UserInfoCopyWithImpl;
@override @useResult
$Res call({
 String nickName, String? mobile, String? avatarUrl, String? country, String? province, String? city, String? language, String? gender, String? tag, String? userId
});




}
/// @nodoc
class __$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(this._self, this._then);

  final _UserInfo _self;
  final $Res Function(_UserInfo) _then;

/// Create a copy of UserInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nickName = null,Object? mobile = freezed,Object? avatarUrl = freezed,Object? country = freezed,Object? province = freezed,Object? city = freezed,Object? language = freezed,Object? gender = freezed,Object? tag = freezed,Object? userId = freezed,}) {
  return _then(_UserInfo(
nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
