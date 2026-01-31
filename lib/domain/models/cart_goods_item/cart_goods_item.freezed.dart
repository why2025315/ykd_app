// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_goods_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartGoodsItem implements DiagnosticableTreeMixin {

 int? get id; int? get customerId; int? get goodsId; int? get productId; String? get goodsSn; String? get goodsName; int? get price; int? get number; String? get goodsSpecVals; List<int>? get goodsSpecIds; int? get checked; String? get picUrl; int? get addTime; bool? get newProperty;
/// Create a copy of CartGoodsItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartGoodsItemCopyWith<CartGoodsItem> get copyWith => _$CartGoodsItemCopyWithImpl<CartGoodsItem>(this as CartGoodsItem, _$identity);

  /// Serializes this CartGoodsItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartGoodsItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('goodsSn', goodsSn))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('goodsSpecVals', goodsSpecVals))..add(DiagnosticsProperty('goodsSpecIds', goodsSpecIds))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartGoodsItem&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.goodsSn, goodsSn) || other.goodsSn == goodsSn)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.price, price) || other.price == price)&&(identical(other.number, number) || other.number == number)&&(identical(other.goodsSpecVals, goodsSpecVals) || other.goodsSpecVals == goodsSpecVals)&&const DeepCollectionEquality().equals(other.goodsSpecIds, goodsSpecIds)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,goodsId,productId,goodsSn,goodsName,price,number,goodsSpecVals,const DeepCollectionEquality().hash(goodsSpecIds),checked,picUrl,addTime,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartGoodsItem(id: $id, customerId: $customerId, goodsId: $goodsId, productId: $productId, goodsSn: $goodsSn, goodsName: $goodsName, price: $price, number: $number, goodsSpecVals: $goodsSpecVals, goodsSpecIds: $goodsSpecIds, checked: $checked, picUrl: $picUrl, addTime: $addTime, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $CartGoodsItemCopyWith<$Res>  {
  factory $CartGoodsItemCopyWith(CartGoodsItem value, $Res Function(CartGoodsItem) _then) = _$CartGoodsItemCopyWithImpl;
@useResult
$Res call({
 int? id, int? customerId, int? goodsId, int? productId, String? goodsSn, String? goodsName, int? price, int? number, String? goodsSpecVals, List<int>? goodsSpecIds, int? checked, String? picUrl, int? addTime, bool? newProperty
});




}
/// @nodoc
class _$CartGoodsItemCopyWithImpl<$Res>
    implements $CartGoodsItemCopyWith<$Res> {
  _$CartGoodsItemCopyWithImpl(this._self, this._then);

  final CartGoodsItem _self;
  final $Res Function(CartGoodsItem) _then;

/// Create a copy of CartGoodsItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerId = freezed,Object? goodsId = freezed,Object? productId = freezed,Object? goodsSn = freezed,Object? goodsName = freezed,Object? price = freezed,Object? number = freezed,Object? goodsSpecVals = freezed,Object? goodsSpecIds = freezed,Object? checked = freezed,Object? picUrl = freezed,Object? addTime = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,goodsSn: freezed == goodsSn ? _self.goodsSn : goodsSn // ignore: cast_nullable_to_non_nullable
as String?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,goodsSpecVals: freezed == goodsSpecVals ? _self.goodsSpecVals : goodsSpecVals // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecIds: freezed == goodsSpecIds ? _self.goodsSpecIds : goodsSpecIds // ignore: cast_nullable_to_non_nullable
as List<int>?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartGoodsItem].
extension CartGoodsItemPatterns on CartGoodsItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartGoodsItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartGoodsItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartGoodsItem value)  $default,){
final _that = this;
switch (_that) {
case _CartGoodsItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartGoodsItem value)?  $default,){
final _that = this;
switch (_that) {
case _CartGoodsItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? customerId,  int? goodsId,  int? productId,  String? goodsSn,  String? goodsName,  int? price,  int? number,  String? goodsSpecVals,  List<int>? goodsSpecIds,  int? checked,  String? picUrl,  int? addTime,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartGoodsItem() when $default != null:
return $default(_that.id,_that.customerId,_that.goodsId,_that.productId,_that.goodsSn,_that.goodsName,_that.price,_that.number,_that.goodsSpecVals,_that.goodsSpecIds,_that.checked,_that.picUrl,_that.addTime,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? customerId,  int? goodsId,  int? productId,  String? goodsSn,  String? goodsName,  int? price,  int? number,  String? goodsSpecVals,  List<int>? goodsSpecIds,  int? checked,  String? picUrl,  int? addTime,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _CartGoodsItem():
return $default(_that.id,_that.customerId,_that.goodsId,_that.productId,_that.goodsSn,_that.goodsName,_that.price,_that.number,_that.goodsSpecVals,_that.goodsSpecIds,_that.checked,_that.picUrl,_that.addTime,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? customerId,  int? goodsId,  int? productId,  String? goodsSn,  String? goodsName,  int? price,  int? number,  String? goodsSpecVals,  List<int>? goodsSpecIds,  int? checked,  String? picUrl,  int? addTime,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _CartGoodsItem() when $default != null:
return $default(_that.id,_that.customerId,_that.goodsId,_that.productId,_that.goodsSn,_that.goodsName,_that.price,_that.number,_that.goodsSpecVals,_that.goodsSpecIds,_that.checked,_that.picUrl,_that.addTime,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartGoodsItem with DiagnosticableTreeMixin implements CartGoodsItem {
  const _CartGoodsItem({this.id, this.customerId, this.goodsId, this.productId, this.goodsSn, this.goodsName, this.price, this.number, this.goodsSpecVals, final  List<int>? goodsSpecIds, this.checked, this.picUrl, this.addTime, this.newProperty}): _goodsSpecIds = goodsSpecIds;
  factory _CartGoodsItem.fromJson(Map<String, dynamic> json) => _$CartGoodsItemFromJson(json);

@override final  int? id;
@override final  int? customerId;
@override final  int? goodsId;
@override final  int? productId;
@override final  String? goodsSn;
@override final  String? goodsName;
@override final  int? price;
@override final  int? number;
@override final  String? goodsSpecVals;
 final  List<int>? _goodsSpecIds;
@override List<int>? get goodsSpecIds {
  final value = _goodsSpecIds;
  if (value == null) return null;
  if (_goodsSpecIds is EqualUnmodifiableListView) return _goodsSpecIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? checked;
@override final  String? picUrl;
@override final  int? addTime;
@override final  bool? newProperty;

/// Create a copy of CartGoodsItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartGoodsItemCopyWith<_CartGoodsItem> get copyWith => __$CartGoodsItemCopyWithImpl<_CartGoodsItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartGoodsItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartGoodsItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('goodsSn', goodsSn))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('goodsSpecVals', goodsSpecVals))..add(DiagnosticsProperty('goodsSpecIds', goodsSpecIds))..add(DiagnosticsProperty('checked', checked))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartGoodsItem&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.goodsSn, goodsSn) || other.goodsSn == goodsSn)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.price, price) || other.price == price)&&(identical(other.number, number) || other.number == number)&&(identical(other.goodsSpecVals, goodsSpecVals) || other.goodsSpecVals == goodsSpecVals)&&const DeepCollectionEquality().equals(other._goodsSpecIds, _goodsSpecIds)&&(identical(other.checked, checked) || other.checked == checked)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,goodsId,productId,goodsSn,goodsName,price,number,goodsSpecVals,const DeepCollectionEquality().hash(_goodsSpecIds),checked,picUrl,addTime,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartGoodsItem(id: $id, customerId: $customerId, goodsId: $goodsId, productId: $productId, goodsSn: $goodsSn, goodsName: $goodsName, price: $price, number: $number, goodsSpecVals: $goodsSpecVals, goodsSpecIds: $goodsSpecIds, checked: $checked, picUrl: $picUrl, addTime: $addTime, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$CartGoodsItemCopyWith<$Res> implements $CartGoodsItemCopyWith<$Res> {
  factory _$CartGoodsItemCopyWith(_CartGoodsItem value, $Res Function(_CartGoodsItem) _then) = __$CartGoodsItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? customerId, int? goodsId, int? productId, String? goodsSn, String? goodsName, int? price, int? number, String? goodsSpecVals, List<int>? goodsSpecIds, int? checked, String? picUrl, int? addTime, bool? newProperty
});




}
/// @nodoc
class __$CartGoodsItemCopyWithImpl<$Res>
    implements _$CartGoodsItemCopyWith<$Res> {
  __$CartGoodsItemCopyWithImpl(this._self, this._then);

  final _CartGoodsItem _self;
  final $Res Function(_CartGoodsItem) _then;

/// Create a copy of CartGoodsItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerId = freezed,Object? goodsId = freezed,Object? productId = freezed,Object? goodsSn = freezed,Object? goodsName = freezed,Object? price = freezed,Object? number = freezed,Object? goodsSpecVals = freezed,Object? goodsSpecIds = freezed,Object? checked = freezed,Object? picUrl = freezed,Object? addTime = freezed,Object? newProperty = freezed,}) {
  return _then(_CartGoodsItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,goodsSn: freezed == goodsSn ? _self.goodsSn : goodsSn // ignore: cast_nullable_to_non_nullable
as String?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,goodsSpecVals: freezed == goodsSpecVals ? _self.goodsSpecVals : goodsSpecVals // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecIds: freezed == goodsSpecIds ? _self._goodsSpecIds : goodsSpecIds // ignore: cast_nullable_to_non_nullable
as List<int>?,checked: freezed == checked ? _self.checked : checked // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
