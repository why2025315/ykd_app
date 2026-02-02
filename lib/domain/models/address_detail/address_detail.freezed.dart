// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressDetail implements DiagnosticableTreeMixin {

 bool? get isDefault; int? get districtId; String? get address; String? get cityName; String? get areaName; String? get name; String? get mobile; int? get id; int? get cityId; String? get provinceName; int? get provinceId;
/// Create a copy of AddressDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDetailCopyWith<AddressDetail> get copyWith => _$AddressDetailCopyWithImpl<AddressDetail>(this as AddressDetail, _$identity);

  /// Serializes this AddressDetail to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddressDetail'))
    ..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('districtId', districtId))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('cityName', cityName))..add(DiagnosticsProperty('areaName', areaName))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('provinceName', provinceName))..add(DiagnosticsProperty('provinceId', provinceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDetail&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.id, id) || other.id == id)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isDefault,districtId,address,cityName,areaName,name,mobile,id,cityId,provinceName,provinceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddressDetail(isDefault: $isDefault, districtId: $districtId, address: $address, cityName: $cityName, areaName: $areaName, name: $name, mobile: $mobile, id: $id, cityId: $cityId, provinceName: $provinceName, provinceId: $provinceId)';
}


}

/// @nodoc
abstract mixin class $AddressDetailCopyWith<$Res>  {
  factory $AddressDetailCopyWith(AddressDetail value, $Res Function(AddressDetail) _then) = _$AddressDetailCopyWithImpl;
@useResult
$Res call({
 bool? isDefault, int? districtId, String? address, String? cityName, String? areaName, String? name, String? mobile, int? id, int? cityId, String? provinceName, int? provinceId
});




}
/// @nodoc
class _$AddressDetailCopyWithImpl<$Res>
    implements $AddressDetailCopyWith<$Res> {
  _$AddressDetailCopyWithImpl(this._self, this._then);

  final AddressDetail _self;
  final $Res Function(AddressDetail) _then;

/// Create a copy of AddressDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isDefault = freezed,Object? districtId = freezed,Object? address = freezed,Object? cityName = freezed,Object? areaName = freezed,Object? name = freezed,Object? mobile = freezed,Object? id = freezed,Object? cityId = freezed,Object? provinceName = freezed,Object? provinceId = freezed,}) {
  return _then(_self.copyWith(
isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,provinceName: freezed == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressDetail].
extension AddressDetailPatterns on AddressDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressDetail value)  $default,){
final _that = this;
switch (_that) {
case _AddressDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressDetail value)?  $default,){
final _that = this;
switch (_that) {
case _AddressDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isDefault,  int? districtId,  String? address,  String? cityName,  String? areaName,  String? name,  String? mobile,  int? id,  int? cityId,  String? provinceName,  int? provinceId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressDetail() when $default != null:
return $default(_that.isDefault,_that.districtId,_that.address,_that.cityName,_that.areaName,_that.name,_that.mobile,_that.id,_that.cityId,_that.provinceName,_that.provinceId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isDefault,  int? districtId,  String? address,  String? cityName,  String? areaName,  String? name,  String? mobile,  int? id,  int? cityId,  String? provinceName,  int? provinceId)  $default,) {final _that = this;
switch (_that) {
case _AddressDetail():
return $default(_that.isDefault,_that.districtId,_that.address,_that.cityName,_that.areaName,_that.name,_that.mobile,_that.id,_that.cityId,_that.provinceName,_that.provinceId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isDefault,  int? districtId,  String? address,  String? cityName,  String? areaName,  String? name,  String? mobile,  int? id,  int? cityId,  String? provinceName,  int? provinceId)?  $default,) {final _that = this;
switch (_that) {
case _AddressDetail() when $default != null:
return $default(_that.isDefault,_that.districtId,_that.address,_that.cityName,_that.areaName,_that.name,_that.mobile,_that.id,_that.cityId,_that.provinceName,_that.provinceId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressDetail with DiagnosticableTreeMixin implements AddressDetail {
  const _AddressDetail({this.isDefault, this.districtId, this.address, this.cityName, this.areaName, this.name, this.mobile, this.id, this.cityId, this.provinceName, this.provinceId});
  factory _AddressDetail.fromJson(Map<String, dynamic> json) => _$AddressDetailFromJson(json);

@override final  bool? isDefault;
@override final  int? districtId;
@override final  String? address;
@override final  String? cityName;
@override final  String? areaName;
@override final  String? name;
@override final  String? mobile;
@override final  int? id;
@override final  int? cityId;
@override final  String? provinceName;
@override final  int? provinceId;

/// Create a copy of AddressDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDetailCopyWith<_AddressDetail> get copyWith => __$AddressDetailCopyWithImpl<_AddressDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDetailToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AddressDetail'))
    ..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('districtId', districtId))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('cityName', cityName))..add(DiagnosticsProperty('areaName', areaName))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('provinceName', provinceName))..add(DiagnosticsProperty('provinceId', provinceId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDetail&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.address, address) || other.address == address)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.areaName, areaName) || other.areaName == areaName)&&(identical(other.name, name) || other.name == name)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.id, id) || other.id == id)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.provinceName, provinceName) || other.provinceName == provinceName)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isDefault,districtId,address,cityName,areaName,name,mobile,id,cityId,provinceName,provinceId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AddressDetail(isDefault: $isDefault, districtId: $districtId, address: $address, cityName: $cityName, areaName: $areaName, name: $name, mobile: $mobile, id: $id, cityId: $cityId, provinceName: $provinceName, provinceId: $provinceId)';
}


}

/// @nodoc
abstract mixin class _$AddressDetailCopyWith<$Res> implements $AddressDetailCopyWith<$Res> {
  factory _$AddressDetailCopyWith(_AddressDetail value, $Res Function(_AddressDetail) _then) = __$AddressDetailCopyWithImpl;
@override @useResult
$Res call({
 bool? isDefault, int? districtId, String? address, String? cityName, String? areaName, String? name, String? mobile, int? id, int? cityId, String? provinceName, int? provinceId
});




}
/// @nodoc
class __$AddressDetailCopyWithImpl<$Res>
    implements _$AddressDetailCopyWith<$Res> {
  __$AddressDetailCopyWithImpl(this._self, this._then);

  final _AddressDetail _self;
  final $Res Function(_AddressDetail) _then;

/// Create a copy of AddressDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isDefault = freezed,Object? districtId = freezed,Object? address = freezed,Object? cityName = freezed,Object? areaName = freezed,Object? name = freezed,Object? mobile = freezed,Object? id = freezed,Object? cityId = freezed,Object? provinceName = freezed,Object? provinceId = freezed,}) {
  return _then(_AddressDetail(
isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,areaName: freezed == areaName ? _self.areaName : areaName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,provinceName: freezed == provinceName ? _self.provinceName : provinceName // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
