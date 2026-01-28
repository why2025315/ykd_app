// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginApiModel implements DiagnosticableTreeMixin {

 UserInfo get userInfo; String get tokenExpire; String get token;
/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginApiModelCopyWith<LoginApiModel> get copyWith => _$LoginApiModelCopyWithImpl<LoginApiModel>(this as LoginApiModel, _$identity);

  /// Serializes this LoginApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoginApiModel'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('tokenExpire', tokenExpire))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginApiModel&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.tokenExpire, tokenExpire) || other.tokenExpire == tokenExpire)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userInfo,tokenExpire,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoginApiModel(userInfo: $userInfo, tokenExpire: $tokenExpire, token: $token)';
}


}

/// @nodoc
abstract mixin class $LoginApiModelCopyWith<$Res>  {
  factory $LoginApiModelCopyWith(LoginApiModel value, $Res Function(LoginApiModel) _then) = _$LoginApiModelCopyWithImpl;
@useResult
$Res call({
 UserInfo userInfo, String tokenExpire, String token
});


$UserInfoCopyWith<$Res> get userInfo;

}
/// @nodoc
class _$LoginApiModelCopyWithImpl<$Res>
    implements $LoginApiModelCopyWith<$Res> {
  _$LoginApiModelCopyWithImpl(this._self, this._then);

  final LoginApiModel _self;
  final $Res Function(LoginApiModel) _then;

/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userInfo = null,Object? tokenExpire = null,Object? token = null,}) {
  return _then(_self.copyWith(
userInfo: null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfo,tokenExpire: null == tokenExpire ? _self.tokenExpire : tokenExpire // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res> get userInfo {
  
  return $UserInfoCopyWith<$Res>(_self.userInfo, (value) {
    return _then(_self.copyWith(userInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginApiModel].
extension LoginApiModelPatterns on LoginApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginApiModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserInfo userInfo,  String tokenExpire,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginApiModel() when $default != null:
return $default(_that.userInfo,_that.tokenExpire,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserInfo userInfo,  String tokenExpire,  String token)  $default,) {final _that = this;
switch (_that) {
case _LoginApiModel():
return $default(_that.userInfo,_that.tokenExpire,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserInfo userInfo,  String tokenExpire,  String token)?  $default,) {final _that = this;
switch (_that) {
case _LoginApiModel() when $default != null:
return $default(_that.userInfo,_that.tokenExpire,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginApiModel with DiagnosticableTreeMixin implements LoginApiModel {
  const _LoginApiModel({required this.userInfo, required this.tokenExpire, required this.token});
  factory _LoginApiModel.fromJson(Map<String, dynamic> json) => _$LoginApiModelFromJson(json);

@override final  UserInfo userInfo;
@override final  String tokenExpire;
@override final  String token;

/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginApiModelCopyWith<_LoginApiModel> get copyWith => __$LoginApiModelCopyWithImpl<_LoginApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoginApiModel'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('tokenExpire', tokenExpire))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginApiModel&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.tokenExpire, tokenExpire) || other.tokenExpire == tokenExpire)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userInfo,tokenExpire,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoginApiModel(userInfo: $userInfo, tokenExpire: $tokenExpire, token: $token)';
}


}

/// @nodoc
abstract mixin class _$LoginApiModelCopyWith<$Res> implements $LoginApiModelCopyWith<$Res> {
  factory _$LoginApiModelCopyWith(_LoginApiModel value, $Res Function(_LoginApiModel) _then) = __$LoginApiModelCopyWithImpl;
@override @useResult
$Res call({
 UserInfo userInfo, String tokenExpire, String token
});


@override $UserInfoCopyWith<$Res> get userInfo;

}
/// @nodoc
class __$LoginApiModelCopyWithImpl<$Res>
    implements _$LoginApiModelCopyWith<$Res> {
  __$LoginApiModelCopyWithImpl(this._self, this._then);

  final _LoginApiModel _self;
  final $Res Function(_LoginApiModel) _then;

/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userInfo = null,Object? tokenExpire = null,Object? token = null,}) {
  return _then(_LoginApiModel(
userInfo: null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfo,tokenExpire: null == tokenExpire ? _self.tokenExpire : tokenExpire // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoCopyWith<$Res> get userInfo {
  
  return $UserInfoCopyWith<$Res>(_self.userInfo, (value) {
    return _then(_self.copyWith(userInfo: value));
  });
}
}

// dart format on
