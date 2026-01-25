// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sku implements DiagnosticableTreeMixin {

 int? get id; int? get goodsId; String? get value; String? get picUrl; String? get specification; num? get price; int? get stockNumber; int? get addTime; String? get status; bool? get newProperty;
/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkuCopyWith<Sku> get copyWith => _$SkuCopyWithImpl<Sku>(this as Sku, _$identity);

  /// Serializes this Sku to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Sku'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('specification', specification))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('stockNumber', stockNumber))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sku&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.value, value) || other.value == value)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.specification, specification) || other.specification == specification)&&(identical(other.price, price) || other.price == price)&&(identical(other.stockNumber, stockNumber) || other.stockNumber == stockNumber)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,value,picUrl,specification,price,stockNumber,addTime,status,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Sku(id: $id, goodsId: $goodsId, value: $value, picUrl: $picUrl, specification: $specification, price: $price, stockNumber: $stockNumber, addTime: $addTime, status: $status, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $SkuCopyWith<$Res>  {
  factory $SkuCopyWith(Sku value, $Res Function(Sku) _then) = _$SkuCopyWithImpl;
@useResult
$Res call({
 int? id, int? goodsId, String? value, String? picUrl, String? specification, num? price, int? stockNumber, int? addTime, String? status, bool? newProperty
});




}
/// @nodoc
class _$SkuCopyWithImpl<$Res>
    implements $SkuCopyWith<$Res> {
  _$SkuCopyWithImpl(this._self, this._then);

  final Sku _self;
  final $Res Function(Sku) _then;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? goodsId = freezed,Object? value = freezed,Object? picUrl = freezed,Object? specification = freezed,Object? price = freezed,Object? stockNumber = freezed,Object? addTime = freezed,Object? status = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,specification: freezed == specification ? _self.specification : specification // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,stockNumber: freezed == stockNumber ? _self.stockNumber : stockNumber // ignore: cast_nullable_to_non_nullable
as int?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sku].
extension SkuPatterns on Sku {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sku value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sku() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sku value)  $default,){
final _that = this;
switch (_that) {
case _Sku():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sku value)?  $default,){
final _that = this;
switch (_that) {
case _Sku() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? value,  String? picUrl,  String? specification,  num? price,  int? stockNumber,  int? addTime,  String? status,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sku() when $default != null:
return $default(_that.id,_that.goodsId,_that.value,_that.picUrl,_that.specification,_that.price,_that.stockNumber,_that.addTime,_that.status,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? value,  String? picUrl,  String? specification,  num? price,  int? stockNumber,  int? addTime,  String? status,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _Sku():
return $default(_that.id,_that.goodsId,_that.value,_that.picUrl,_that.specification,_that.price,_that.stockNumber,_that.addTime,_that.status,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? goodsId,  String? value,  String? picUrl,  String? specification,  num? price,  int? stockNumber,  int? addTime,  String? status,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _Sku() when $default != null:
return $default(_that.id,_that.goodsId,_that.value,_that.picUrl,_that.specification,_that.price,_that.stockNumber,_that.addTime,_that.status,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sku with DiagnosticableTreeMixin implements Sku {
  const _Sku({this.id, this.goodsId, this.value, this.picUrl, this.specification, this.price, this.stockNumber, this.addTime, this.status, this.newProperty});
  factory _Sku.fromJson(Map<String, dynamic> json) => _$SkuFromJson(json);

@override final  int? id;
@override final  int? goodsId;
@override final  String? value;
@override final  String? picUrl;
@override final  String? specification;
@override final  num? price;
@override final  int? stockNumber;
@override final  int? addTime;
@override final  String? status;
@override final  bool? newProperty;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkuCopyWith<_Sku> get copyWith => __$SkuCopyWithImpl<_Sku>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkuToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Sku'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('value', value))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('specification', specification))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('stockNumber', stockNumber))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sku&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.value, value) || other.value == value)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.specification, specification) || other.specification == specification)&&(identical(other.price, price) || other.price == price)&&(identical(other.stockNumber, stockNumber) || other.stockNumber == stockNumber)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,value,picUrl,specification,price,stockNumber,addTime,status,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Sku(id: $id, goodsId: $goodsId, value: $value, picUrl: $picUrl, specification: $specification, price: $price, stockNumber: $stockNumber, addTime: $addTime, status: $status, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$SkuCopyWith<$Res> implements $SkuCopyWith<$Res> {
  factory _$SkuCopyWith(_Sku value, $Res Function(_Sku) _then) = __$SkuCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? goodsId, String? value, String? picUrl, String? specification, num? price, int? stockNumber, int? addTime, String? status, bool? newProperty
});




}
/// @nodoc
class __$SkuCopyWithImpl<$Res>
    implements _$SkuCopyWith<$Res> {
  __$SkuCopyWithImpl(this._self, this._then);

  final _Sku _self;
  final $Res Function(_Sku) _then;

/// Create a copy of Sku
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? goodsId = freezed,Object? value = freezed,Object? picUrl = freezed,Object? specification = freezed,Object? price = freezed,Object? stockNumber = freezed,Object? addTime = freezed,Object? status = freezed,Object? newProperty = freezed,}) {
  return _then(_Sku(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,specification: freezed == specification ? _self.specification : specification // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,stockNumber: freezed == stockNumber ? _self.stockNumber : stockNumber // ignore: cast_nullable_to_non_nullable
as int?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
