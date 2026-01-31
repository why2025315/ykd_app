// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_checkout_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartCheckoutApiModel implements DiagnosticableTreeMixin {

 int? get actualPrice; int? get orderTotalPrice; int? get couponId; int? get goodsTotalPrice; int? get addressId; int? get checkedCoupon; CheckedAddress? get checkedAddress; int? get activityFlag; String? get couponList; int? get couponPrice; int? get freightPrice; List<CartGoodsItem>? get checkedGoodsList;
/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCheckoutApiModelCopyWith<CartCheckoutApiModel> get copyWith => _$CartCheckoutApiModelCopyWithImpl<CartCheckoutApiModel>(this as CartCheckoutApiModel, _$identity);

  /// Serializes this CartCheckoutApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartCheckoutApiModel'))
    ..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('orderTotalPrice', orderTotalPrice))..add(DiagnosticsProperty('couponId', couponId))..add(DiagnosticsProperty('goodsTotalPrice', goodsTotalPrice))..add(DiagnosticsProperty('addressId', addressId))..add(DiagnosticsProperty('checkedCoupon', checkedCoupon))..add(DiagnosticsProperty('checkedAddress', checkedAddress))..add(DiagnosticsProperty('activityFlag', activityFlag))..add(DiagnosticsProperty('couponList', couponList))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('freightPrice', freightPrice))..add(DiagnosticsProperty('checkedGoodsList', checkedGoodsList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartCheckoutApiModel&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.orderTotalPrice, orderTotalPrice) || other.orderTotalPrice == orderTotalPrice)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.goodsTotalPrice, goodsTotalPrice) || other.goodsTotalPrice == goodsTotalPrice)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.checkedCoupon, checkedCoupon) || other.checkedCoupon == checkedCoupon)&&(identical(other.checkedAddress, checkedAddress) || other.checkedAddress == checkedAddress)&&(identical(other.activityFlag, activityFlag) || other.activityFlag == activityFlag)&&(identical(other.couponList, couponList) || other.couponList == couponList)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.freightPrice, freightPrice) || other.freightPrice == freightPrice)&&const DeepCollectionEquality().equals(other.checkedGoodsList, checkedGoodsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualPrice,orderTotalPrice,couponId,goodsTotalPrice,addressId,checkedCoupon,checkedAddress,activityFlag,couponList,couponPrice,freightPrice,const DeepCollectionEquality().hash(checkedGoodsList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartCheckoutApiModel(actualPrice: $actualPrice, orderTotalPrice: $orderTotalPrice, couponId: $couponId, goodsTotalPrice: $goodsTotalPrice, addressId: $addressId, checkedCoupon: $checkedCoupon, checkedAddress: $checkedAddress, activityFlag: $activityFlag, couponList: $couponList, couponPrice: $couponPrice, freightPrice: $freightPrice, checkedGoodsList: $checkedGoodsList)';
}


}

/// @nodoc
abstract mixin class $CartCheckoutApiModelCopyWith<$Res>  {
  factory $CartCheckoutApiModelCopyWith(CartCheckoutApiModel value, $Res Function(CartCheckoutApiModel) _then) = _$CartCheckoutApiModelCopyWithImpl;
@useResult
$Res call({
 int? actualPrice, int? orderTotalPrice, int? couponId, int? goodsTotalPrice, int? addressId, int? checkedCoupon, CheckedAddress? checkedAddress, int? activityFlag, String? couponList, int? couponPrice, int? freightPrice, List<CartGoodsItem>? checkedGoodsList
});


$CheckedAddressCopyWith<$Res>? get checkedAddress;

}
/// @nodoc
class _$CartCheckoutApiModelCopyWithImpl<$Res>
    implements $CartCheckoutApiModelCopyWith<$Res> {
  _$CartCheckoutApiModelCopyWithImpl(this._self, this._then);

  final CartCheckoutApiModel _self;
  final $Res Function(CartCheckoutApiModel) _then;

/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actualPrice = freezed,Object? orderTotalPrice = freezed,Object? couponId = freezed,Object? goodsTotalPrice = freezed,Object? addressId = freezed,Object? checkedCoupon = freezed,Object? checkedAddress = freezed,Object? activityFlag = freezed,Object? couponList = freezed,Object? couponPrice = freezed,Object? freightPrice = freezed,Object? checkedGoodsList = freezed,}) {
  return _then(_self.copyWith(
actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as int?,orderTotalPrice: freezed == orderTotalPrice ? _self.orderTotalPrice : orderTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as int?,goodsTotalPrice: freezed == goodsTotalPrice ? _self.goodsTotalPrice : goodsTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,checkedCoupon: freezed == checkedCoupon ? _self.checkedCoupon : checkedCoupon // ignore: cast_nullable_to_non_nullable
as int?,checkedAddress: freezed == checkedAddress ? _self.checkedAddress : checkedAddress // ignore: cast_nullable_to_non_nullable
as CheckedAddress?,activityFlag: freezed == activityFlag ? _self.activityFlag : activityFlag // ignore: cast_nullable_to_non_nullable
as int?,couponList: freezed == couponList ? _self.couponList : couponList // ignore: cast_nullable_to_non_nullable
as String?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,freightPrice: freezed == freightPrice ? _self.freightPrice : freightPrice // ignore: cast_nullable_to_non_nullable
as int?,checkedGoodsList: freezed == checkedGoodsList ? _self.checkedGoodsList : checkedGoodsList // ignore: cast_nullable_to_non_nullable
as List<CartGoodsItem>?,
  ));
}
/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckedAddressCopyWith<$Res>? get checkedAddress {
    if (_self.checkedAddress == null) {
    return null;
  }

  return $CheckedAddressCopyWith<$Res>(_self.checkedAddress!, (value) {
    return _then(_self.copyWith(checkedAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartCheckoutApiModel].
extension CartCheckoutApiModelPatterns on CartCheckoutApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartCheckoutApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartCheckoutApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartCheckoutApiModel value)  $default,){
final _that = this;
switch (_that) {
case _CartCheckoutApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartCheckoutApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartCheckoutApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? actualPrice,  int? orderTotalPrice,  int? couponId,  int? goodsTotalPrice,  int? addressId,  int? checkedCoupon,  CheckedAddress? checkedAddress,  int? activityFlag,  String? couponList,  int? couponPrice,  int? freightPrice,  List<CartGoodsItem>? checkedGoodsList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartCheckoutApiModel() when $default != null:
return $default(_that.actualPrice,_that.orderTotalPrice,_that.couponId,_that.goodsTotalPrice,_that.addressId,_that.checkedCoupon,_that.checkedAddress,_that.activityFlag,_that.couponList,_that.couponPrice,_that.freightPrice,_that.checkedGoodsList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? actualPrice,  int? orderTotalPrice,  int? couponId,  int? goodsTotalPrice,  int? addressId,  int? checkedCoupon,  CheckedAddress? checkedAddress,  int? activityFlag,  String? couponList,  int? couponPrice,  int? freightPrice,  List<CartGoodsItem>? checkedGoodsList)  $default,) {final _that = this;
switch (_that) {
case _CartCheckoutApiModel():
return $default(_that.actualPrice,_that.orderTotalPrice,_that.couponId,_that.goodsTotalPrice,_that.addressId,_that.checkedCoupon,_that.checkedAddress,_that.activityFlag,_that.couponList,_that.couponPrice,_that.freightPrice,_that.checkedGoodsList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? actualPrice,  int? orderTotalPrice,  int? couponId,  int? goodsTotalPrice,  int? addressId,  int? checkedCoupon,  CheckedAddress? checkedAddress,  int? activityFlag,  String? couponList,  int? couponPrice,  int? freightPrice,  List<CartGoodsItem>? checkedGoodsList)?  $default,) {final _that = this;
switch (_that) {
case _CartCheckoutApiModel() when $default != null:
return $default(_that.actualPrice,_that.orderTotalPrice,_that.couponId,_that.goodsTotalPrice,_that.addressId,_that.checkedCoupon,_that.checkedAddress,_that.activityFlag,_that.couponList,_that.couponPrice,_that.freightPrice,_that.checkedGoodsList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartCheckoutApiModel with DiagnosticableTreeMixin implements CartCheckoutApiModel {
  const _CartCheckoutApiModel({this.actualPrice, this.orderTotalPrice, this.couponId, this.goodsTotalPrice, this.addressId, this.checkedCoupon, this.checkedAddress, this.activityFlag, this.couponList, this.couponPrice, this.freightPrice, final  List<CartGoodsItem>? checkedGoodsList}): _checkedGoodsList = checkedGoodsList;
  factory _CartCheckoutApiModel.fromJson(Map<String, dynamic> json) => _$CartCheckoutApiModelFromJson(json);

@override final  int? actualPrice;
@override final  int? orderTotalPrice;
@override final  int? couponId;
@override final  int? goodsTotalPrice;
@override final  int? addressId;
@override final  int? checkedCoupon;
@override final  CheckedAddress? checkedAddress;
@override final  int? activityFlag;
@override final  String? couponList;
@override final  int? couponPrice;
@override final  int? freightPrice;
 final  List<CartGoodsItem>? _checkedGoodsList;
@override List<CartGoodsItem>? get checkedGoodsList {
  final value = _checkedGoodsList;
  if (value == null) return null;
  if (_checkedGoodsList is EqualUnmodifiableListView) return _checkedGoodsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCheckoutApiModelCopyWith<_CartCheckoutApiModel> get copyWith => __$CartCheckoutApiModelCopyWithImpl<_CartCheckoutApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartCheckoutApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartCheckoutApiModel'))
    ..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('orderTotalPrice', orderTotalPrice))..add(DiagnosticsProperty('couponId', couponId))..add(DiagnosticsProperty('goodsTotalPrice', goodsTotalPrice))..add(DiagnosticsProperty('addressId', addressId))..add(DiagnosticsProperty('checkedCoupon', checkedCoupon))..add(DiagnosticsProperty('checkedAddress', checkedAddress))..add(DiagnosticsProperty('activityFlag', activityFlag))..add(DiagnosticsProperty('couponList', couponList))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('freightPrice', freightPrice))..add(DiagnosticsProperty('checkedGoodsList', checkedGoodsList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCheckoutApiModel&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.orderTotalPrice, orderTotalPrice) || other.orderTotalPrice == orderTotalPrice)&&(identical(other.couponId, couponId) || other.couponId == couponId)&&(identical(other.goodsTotalPrice, goodsTotalPrice) || other.goodsTotalPrice == goodsTotalPrice)&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.checkedCoupon, checkedCoupon) || other.checkedCoupon == checkedCoupon)&&(identical(other.checkedAddress, checkedAddress) || other.checkedAddress == checkedAddress)&&(identical(other.activityFlag, activityFlag) || other.activityFlag == activityFlag)&&(identical(other.couponList, couponList) || other.couponList == couponList)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.freightPrice, freightPrice) || other.freightPrice == freightPrice)&&const DeepCollectionEquality().equals(other._checkedGoodsList, _checkedGoodsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,actualPrice,orderTotalPrice,couponId,goodsTotalPrice,addressId,checkedCoupon,checkedAddress,activityFlag,couponList,couponPrice,freightPrice,const DeepCollectionEquality().hash(_checkedGoodsList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartCheckoutApiModel(actualPrice: $actualPrice, orderTotalPrice: $orderTotalPrice, couponId: $couponId, goodsTotalPrice: $goodsTotalPrice, addressId: $addressId, checkedCoupon: $checkedCoupon, checkedAddress: $checkedAddress, activityFlag: $activityFlag, couponList: $couponList, couponPrice: $couponPrice, freightPrice: $freightPrice, checkedGoodsList: $checkedGoodsList)';
}


}

/// @nodoc
abstract mixin class _$CartCheckoutApiModelCopyWith<$Res> implements $CartCheckoutApiModelCopyWith<$Res> {
  factory _$CartCheckoutApiModelCopyWith(_CartCheckoutApiModel value, $Res Function(_CartCheckoutApiModel) _then) = __$CartCheckoutApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? actualPrice, int? orderTotalPrice, int? couponId, int? goodsTotalPrice, int? addressId, int? checkedCoupon, CheckedAddress? checkedAddress, int? activityFlag, String? couponList, int? couponPrice, int? freightPrice, List<CartGoodsItem>? checkedGoodsList
});


@override $CheckedAddressCopyWith<$Res>? get checkedAddress;

}
/// @nodoc
class __$CartCheckoutApiModelCopyWithImpl<$Res>
    implements _$CartCheckoutApiModelCopyWith<$Res> {
  __$CartCheckoutApiModelCopyWithImpl(this._self, this._then);

  final _CartCheckoutApiModel _self;
  final $Res Function(_CartCheckoutApiModel) _then;

/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actualPrice = freezed,Object? orderTotalPrice = freezed,Object? couponId = freezed,Object? goodsTotalPrice = freezed,Object? addressId = freezed,Object? checkedCoupon = freezed,Object? checkedAddress = freezed,Object? activityFlag = freezed,Object? couponList = freezed,Object? couponPrice = freezed,Object? freightPrice = freezed,Object? checkedGoodsList = freezed,}) {
  return _then(_CartCheckoutApiModel(
actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as int?,orderTotalPrice: freezed == orderTotalPrice ? _self.orderTotalPrice : orderTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,couponId: freezed == couponId ? _self.couponId : couponId // ignore: cast_nullable_to_non_nullable
as int?,goodsTotalPrice: freezed == goodsTotalPrice ? _self.goodsTotalPrice : goodsTotalPrice // ignore: cast_nullable_to_non_nullable
as int?,addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as int?,checkedCoupon: freezed == checkedCoupon ? _self.checkedCoupon : checkedCoupon // ignore: cast_nullable_to_non_nullable
as int?,checkedAddress: freezed == checkedAddress ? _self.checkedAddress : checkedAddress // ignore: cast_nullable_to_non_nullable
as CheckedAddress?,activityFlag: freezed == activityFlag ? _self.activityFlag : activityFlag // ignore: cast_nullable_to_non_nullable
as int?,couponList: freezed == couponList ? _self.couponList : couponList // ignore: cast_nullable_to_non_nullable
as String?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,freightPrice: freezed == freightPrice ? _self.freightPrice : freightPrice // ignore: cast_nullable_to_non_nullable
as int?,checkedGoodsList: freezed == checkedGoodsList ? _self._checkedGoodsList : checkedGoodsList // ignore: cast_nullable_to_non_nullable
as List<CartGoodsItem>?,
  ));
}

/// Create a copy of CartCheckoutApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckedAddressCopyWith<$Res>? get checkedAddress {
    if (_self.checkedAddress == null) {
    return null;
  }

  return $CheckedAddressCopyWith<$Res>(_self.checkedAddress!, (value) {
    return _then(_self.copyWith(checkedAddress: value));
  });
}
}


/// @nodoc
mixin _$CheckedAddress implements DiagnosticableTreeMixin {

 int? get id; int? get customerId; String? get name; int? get provinceId; int? get cityId; int? get areaId; String? get address; String? get mobile; bool? get isDefault; int? get addTime; dynamic get status; bool? get newProperty;
/// Create a copy of CheckedAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckedAddressCopyWith<CheckedAddress> get copyWith => _$CheckedAddressCopyWithImpl<CheckedAddress>(this as CheckedAddress, _$identity);

  /// Serializes this CheckedAddress to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckedAddress'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('provinceId', provinceId))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('areaId', areaId))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckedAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.address, address) || other.address == address)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,name,provinceId,cityId,areaId,address,mobile,isDefault,addTime,const DeepCollectionEquality().hash(status),newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckedAddress(id: $id, customerId: $customerId, name: $name, provinceId: $provinceId, cityId: $cityId, areaId: $areaId, address: $address, mobile: $mobile, isDefault: $isDefault, addTime: $addTime, status: $status, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $CheckedAddressCopyWith<$Res>  {
  factory $CheckedAddressCopyWith(CheckedAddress value, $Res Function(CheckedAddress) _then) = _$CheckedAddressCopyWithImpl;
@useResult
$Res call({
 int? id, int? customerId, String? name, int? provinceId, int? cityId, int? areaId, String? address, String? mobile, bool? isDefault, int? addTime, dynamic status, bool? newProperty
});




}
/// @nodoc
class _$CheckedAddressCopyWithImpl<$Res>
    implements $CheckedAddressCopyWith<$Res> {
  _$CheckedAddressCopyWithImpl(this._self, this._then);

  final CheckedAddress _self;
  final $Res Function(CheckedAddress) _then;

/// Create a copy of CheckedAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customerId = freezed,Object? name = freezed,Object? provinceId = freezed,Object? cityId = freezed,Object? areaId = freezed,Object? address = freezed,Object? mobile = freezed,Object? isDefault = freezed,Object? addTime = freezed,Object? status = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckedAddress].
extension CheckedAddressPatterns on CheckedAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckedAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckedAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckedAddress value)  $default,){
final _that = this;
switch (_that) {
case _CheckedAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckedAddress value)?  $default,){
final _that = this;
switch (_that) {
case _CheckedAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? customerId,  String? name,  int? provinceId,  int? cityId,  int? areaId,  String? address,  String? mobile,  bool? isDefault,  int? addTime,  dynamic status,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckedAddress() when $default != null:
return $default(_that.id,_that.customerId,_that.name,_that.provinceId,_that.cityId,_that.areaId,_that.address,_that.mobile,_that.isDefault,_that.addTime,_that.status,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? customerId,  String? name,  int? provinceId,  int? cityId,  int? areaId,  String? address,  String? mobile,  bool? isDefault,  int? addTime,  dynamic status,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _CheckedAddress():
return $default(_that.id,_that.customerId,_that.name,_that.provinceId,_that.cityId,_that.areaId,_that.address,_that.mobile,_that.isDefault,_that.addTime,_that.status,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? customerId,  String? name,  int? provinceId,  int? cityId,  int? areaId,  String? address,  String? mobile,  bool? isDefault,  int? addTime,  dynamic status,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _CheckedAddress() when $default != null:
return $default(_that.id,_that.customerId,_that.name,_that.provinceId,_that.cityId,_that.areaId,_that.address,_that.mobile,_that.isDefault,_that.addTime,_that.status,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckedAddress with DiagnosticableTreeMixin implements CheckedAddress {
  const _CheckedAddress({this.id, this.customerId, this.name, this.provinceId, this.cityId, this.areaId, this.address, this.mobile, this.isDefault, this.addTime, this.status, this.newProperty});
  factory _CheckedAddress.fromJson(Map<String, dynamic> json) => _$CheckedAddressFromJson(json);

@override final  int? id;
@override final  int? customerId;
@override final  String? name;
@override final  int? provinceId;
@override final  int? cityId;
@override final  int? areaId;
@override final  String? address;
@override final  String? mobile;
@override final  bool? isDefault;
@override final  int? addTime;
@override final  dynamic status;
@override final  bool? newProperty;

/// Create a copy of CheckedAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckedAddressCopyWith<_CheckedAddress> get copyWith => __$CheckedAddressCopyWithImpl<_CheckedAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckedAddressToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckedAddress'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('provinceId', provinceId))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('areaId', areaId))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckedAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.name, name) || other.name == name)&&(identical(other.provinceId, provinceId) || other.provinceId == provinceId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.areaId, areaId) || other.areaId == areaId)&&(identical(other.address, address) || other.address == address)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerId,name,provinceId,cityId,areaId,address,mobile,isDefault,addTime,const DeepCollectionEquality().hash(status),newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckedAddress(id: $id, customerId: $customerId, name: $name, provinceId: $provinceId, cityId: $cityId, areaId: $areaId, address: $address, mobile: $mobile, isDefault: $isDefault, addTime: $addTime, status: $status, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$CheckedAddressCopyWith<$Res> implements $CheckedAddressCopyWith<$Res> {
  factory _$CheckedAddressCopyWith(_CheckedAddress value, $Res Function(_CheckedAddress) _then) = __$CheckedAddressCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? customerId, String? name, int? provinceId, int? cityId, int? areaId, String? address, String? mobile, bool? isDefault, int? addTime, dynamic status, bool? newProperty
});




}
/// @nodoc
class __$CheckedAddressCopyWithImpl<$Res>
    implements _$CheckedAddressCopyWith<$Res> {
  __$CheckedAddressCopyWithImpl(this._self, this._then);

  final _CheckedAddress _self;
  final $Res Function(_CheckedAddress) _then;

/// Create a copy of CheckedAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customerId = freezed,Object? name = freezed,Object? provinceId = freezed,Object? cityId = freezed,Object? areaId = freezed,Object? address = freezed,Object? mobile = freezed,Object? isDefault = freezed,Object? addTime = freezed,Object? status = freezed,Object? newProperty = freezed,}) {
  return _then(_CheckedAddress(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,provinceId: freezed == provinceId ? _self.provinceId : provinceId // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,areaId: freezed == areaId ? _self.areaId : areaId // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
