// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailApiModel implements DiagnosticableTreeMixin {

 OrderInfo? get orderInfo; List<OrderGoods>? get orderGoods;
/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailApiModelCopyWith<OrderDetailApiModel> get copyWith => _$OrderDetailApiModelCopyWithImpl<OrderDetailApiModel>(this as OrderDetailApiModel, _$identity);

  /// Serializes this OrderDetailApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderDetailApiModel'))
    ..add(DiagnosticsProperty('orderInfo', orderInfo))..add(DiagnosticsProperty('orderGoods', orderGoods));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailApiModel&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&const DeepCollectionEquality().equals(other.orderGoods, orderGoods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderInfo,const DeepCollectionEquality().hash(orderGoods));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderDetailApiModel(orderInfo: $orderInfo, orderGoods: $orderGoods)';
}


}

/// @nodoc
abstract mixin class $OrderDetailApiModelCopyWith<$Res>  {
  factory $OrderDetailApiModelCopyWith(OrderDetailApiModel value, $Res Function(OrderDetailApiModel) _then) = _$OrderDetailApiModelCopyWithImpl;
@useResult
$Res call({
 OrderInfo? orderInfo, List<OrderGoods>? orderGoods
});


$OrderInfoCopyWith<$Res>? get orderInfo;

}
/// @nodoc
class _$OrderDetailApiModelCopyWithImpl<$Res>
    implements $OrderDetailApiModelCopyWith<$Res> {
  _$OrderDetailApiModelCopyWithImpl(this._self, this._then);

  final OrderDetailApiModel _self;
  final $Res Function(OrderDetailApiModel) _then;

/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderInfo = freezed,Object? orderGoods = freezed,}) {
  return _then(_self.copyWith(
orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderInfo?,orderGoods: freezed == orderGoods ? _self.orderGoods : orderGoods // ignore: cast_nullable_to_non_nullable
as List<OrderGoods>?,
  ));
}
/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderInfoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderInfoCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailApiModel].
extension OrderDetailApiModelPatterns on OrderDetailApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailApiModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrderInfo? orderInfo,  List<OrderGoods>? orderGoods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailApiModel() when $default != null:
return $default(_that.orderInfo,_that.orderGoods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrderInfo? orderInfo,  List<OrderGoods>? orderGoods)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailApiModel():
return $default(_that.orderInfo,_that.orderGoods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrderInfo? orderInfo,  List<OrderGoods>? orderGoods)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailApiModel() when $default != null:
return $default(_that.orderInfo,_that.orderGoods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailApiModel with DiagnosticableTreeMixin implements OrderDetailApiModel {
  const _OrderDetailApiModel({this.orderInfo, final  List<OrderGoods>? orderGoods}): _orderGoods = orderGoods;
  factory _OrderDetailApiModel.fromJson(Map<String, dynamic> json) => _$OrderDetailApiModelFromJson(json);

@override final  OrderInfo? orderInfo;
 final  List<OrderGoods>? _orderGoods;
@override List<OrderGoods>? get orderGoods {
  final value = _orderGoods;
  if (value == null) return null;
  if (_orderGoods is EqualUnmodifiableListView) return _orderGoods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailApiModelCopyWith<_OrderDetailApiModel> get copyWith => __$OrderDetailApiModelCopyWithImpl<_OrderDetailApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderDetailApiModel'))
    ..add(DiagnosticsProperty('orderInfo', orderInfo))..add(DiagnosticsProperty('orderGoods', orderGoods));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailApiModel&&(identical(other.orderInfo, orderInfo) || other.orderInfo == orderInfo)&&const DeepCollectionEquality().equals(other._orderGoods, _orderGoods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderInfo,const DeepCollectionEquality().hash(_orderGoods));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderDetailApiModel(orderInfo: $orderInfo, orderGoods: $orderGoods)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailApiModelCopyWith<$Res> implements $OrderDetailApiModelCopyWith<$Res> {
  factory _$OrderDetailApiModelCopyWith(_OrderDetailApiModel value, $Res Function(_OrderDetailApiModel) _then) = __$OrderDetailApiModelCopyWithImpl;
@override @useResult
$Res call({
 OrderInfo? orderInfo, List<OrderGoods>? orderGoods
});


@override $OrderInfoCopyWith<$Res>? get orderInfo;

}
/// @nodoc
class __$OrderDetailApiModelCopyWithImpl<$Res>
    implements _$OrderDetailApiModelCopyWith<$Res> {
  __$OrderDetailApiModelCopyWithImpl(this._self, this._then);

  final _OrderDetailApiModel _self;
  final $Res Function(_OrderDetailApiModel) _then;

/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderInfo = freezed,Object? orderGoods = freezed,}) {
  return _then(_OrderDetailApiModel(
orderInfo: freezed == orderInfo ? _self.orderInfo : orderInfo // ignore: cast_nullable_to_non_nullable
as OrderInfo?,orderGoods: freezed == orderGoods ? _self._orderGoods : orderGoods // ignore: cast_nullable_to_non_nullable
as List<OrderGoods>?,
  ));
}

/// Create a copy of OrderDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderInfoCopyWith<$Res>? get orderInfo {
    if (_self.orderInfo == null) {
    return null;
  }

  return $OrderInfoCopyWith<$Res>(_self.orderInfo!, (value) {
    return _then(_self.copyWith(orderInfo: value));
  });
}
}


/// @nodoc
mixin _$OrderInfo implements DiagnosticableTreeMixin {

 String? get consignee; String? get address; int? get addTime; String? get orderSn; int? get actualPrice; String? get leaveWord; String? get mobile; String? get shipChannel; String? get orderStatusText; int? get goodsPrice; int? get couponPrice; int? get id; int? get freightPrice; int? get integralPrice; HandleOption? get handleOption; String? get shipSn;
/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderInfoCopyWith<OrderInfo> get copyWith => _$OrderInfoCopyWithImpl<OrderInfo>(this as OrderInfo, _$identity);

  /// Serializes this OrderInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderInfo'))
    ..add(DiagnosticsProperty('consignee', consignee))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('orderSn', orderSn))..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('leaveWord', leaveWord))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('shipChannel', shipChannel))..add(DiagnosticsProperty('orderStatusText', orderStatusText))..add(DiagnosticsProperty('goodsPrice', goodsPrice))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('freightPrice', freightPrice))..add(DiagnosticsProperty('integralPrice', integralPrice))..add(DiagnosticsProperty('handleOption', handleOption))..add(DiagnosticsProperty('shipSn', shipSn));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderInfo&&(identical(other.consignee, consignee) || other.consignee == consignee)&&(identical(other.address, address) || other.address == address)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.orderSn, orderSn) || other.orderSn == orderSn)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.leaveWord, leaveWord) || other.leaveWord == leaveWord)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.shipChannel, shipChannel) || other.shipChannel == shipChannel)&&(identical(other.orderStatusText, orderStatusText) || other.orderStatusText == orderStatusText)&&(identical(other.goodsPrice, goodsPrice) || other.goodsPrice == goodsPrice)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPrice, freightPrice) || other.freightPrice == freightPrice)&&(identical(other.integralPrice, integralPrice) || other.integralPrice == integralPrice)&&(identical(other.handleOption, handleOption) || other.handleOption == handleOption)&&(identical(other.shipSn, shipSn) || other.shipSn == shipSn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,consignee,address,addTime,orderSn,actualPrice,leaveWord,mobile,shipChannel,orderStatusText,goodsPrice,couponPrice,id,freightPrice,integralPrice,handleOption,shipSn);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderInfo(consignee: $consignee, address: $address, addTime: $addTime, orderSn: $orderSn, actualPrice: $actualPrice, leaveWord: $leaveWord, mobile: $mobile, shipChannel: $shipChannel, orderStatusText: $orderStatusText, goodsPrice: $goodsPrice, couponPrice: $couponPrice, id: $id, freightPrice: $freightPrice, integralPrice: $integralPrice, handleOption: $handleOption, shipSn: $shipSn)';
}


}

/// @nodoc
abstract mixin class $OrderInfoCopyWith<$Res>  {
  factory $OrderInfoCopyWith(OrderInfo value, $Res Function(OrderInfo) _then) = _$OrderInfoCopyWithImpl;
@useResult
$Res call({
 String? consignee, String? address, int? addTime, String? orderSn, int? actualPrice, String? leaveWord, String? mobile, String? shipChannel, String? orderStatusText, int? goodsPrice, int? couponPrice, int? id, int? freightPrice, int? integralPrice, HandleOption? handleOption, String? shipSn
});


$HandleOptionCopyWith<$Res>? get handleOption;

}
/// @nodoc
class _$OrderInfoCopyWithImpl<$Res>
    implements $OrderInfoCopyWith<$Res> {
  _$OrderInfoCopyWithImpl(this._self, this._then);

  final OrderInfo _self;
  final $Res Function(OrderInfo) _then;

/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? consignee = freezed,Object? address = freezed,Object? addTime = freezed,Object? orderSn = freezed,Object? actualPrice = freezed,Object? leaveWord = freezed,Object? mobile = freezed,Object? shipChannel = freezed,Object? orderStatusText = freezed,Object? goodsPrice = freezed,Object? couponPrice = freezed,Object? id = freezed,Object? freightPrice = freezed,Object? integralPrice = freezed,Object? handleOption = freezed,Object? shipSn = freezed,}) {
  return _then(_self.copyWith(
consignee: freezed == consignee ? _self.consignee : consignee // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,orderSn: freezed == orderSn ? _self.orderSn : orderSn // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as int?,leaveWord: freezed == leaveWord ? _self.leaveWord : leaveWord // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,shipChannel: freezed == shipChannel ? _self.shipChannel : shipChannel // ignore: cast_nullable_to_non_nullable
as String?,orderStatusText: freezed == orderStatusText ? _self.orderStatusText : orderStatusText // ignore: cast_nullable_to_non_nullable
as String?,goodsPrice: freezed == goodsPrice ? _self.goodsPrice : goodsPrice // ignore: cast_nullable_to_non_nullable
as int?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,freightPrice: freezed == freightPrice ? _self.freightPrice : freightPrice // ignore: cast_nullable_to_non_nullable
as int?,integralPrice: freezed == integralPrice ? _self.integralPrice : integralPrice // ignore: cast_nullable_to_non_nullable
as int?,handleOption: freezed == handleOption ? _self.handleOption : handleOption // ignore: cast_nullable_to_non_nullable
as HandleOption?,shipSn: freezed == shipSn ? _self.shipSn : shipSn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<$Res>? get handleOption {
    if (_self.handleOption == null) {
    return null;
  }

  return $HandleOptionCopyWith<$Res>(_self.handleOption!, (value) {
    return _then(_self.copyWith(handleOption: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderInfo].
extension OrderInfoPatterns on OrderInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderInfo value)  $default,){
final _that = this;
switch (_that) {
case _OrderInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderInfo value)?  $default,){
final _that = this;
switch (_that) {
case _OrderInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? consignee,  String? address,  int? addTime,  String? orderSn,  int? actualPrice,  String? leaveWord,  String? mobile,  String? shipChannel,  String? orderStatusText,  int? goodsPrice,  int? couponPrice,  int? id,  int? freightPrice,  int? integralPrice,  HandleOption? handleOption,  String? shipSn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderInfo() when $default != null:
return $default(_that.consignee,_that.address,_that.addTime,_that.orderSn,_that.actualPrice,_that.leaveWord,_that.mobile,_that.shipChannel,_that.orderStatusText,_that.goodsPrice,_that.couponPrice,_that.id,_that.freightPrice,_that.integralPrice,_that.handleOption,_that.shipSn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? consignee,  String? address,  int? addTime,  String? orderSn,  int? actualPrice,  String? leaveWord,  String? mobile,  String? shipChannel,  String? orderStatusText,  int? goodsPrice,  int? couponPrice,  int? id,  int? freightPrice,  int? integralPrice,  HandleOption? handleOption,  String? shipSn)  $default,) {final _that = this;
switch (_that) {
case _OrderInfo():
return $default(_that.consignee,_that.address,_that.addTime,_that.orderSn,_that.actualPrice,_that.leaveWord,_that.mobile,_that.shipChannel,_that.orderStatusText,_that.goodsPrice,_that.couponPrice,_that.id,_that.freightPrice,_that.integralPrice,_that.handleOption,_that.shipSn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? consignee,  String? address,  int? addTime,  String? orderSn,  int? actualPrice,  String? leaveWord,  String? mobile,  String? shipChannel,  String? orderStatusText,  int? goodsPrice,  int? couponPrice,  int? id,  int? freightPrice,  int? integralPrice,  HandleOption? handleOption,  String? shipSn)?  $default,) {final _that = this;
switch (_that) {
case _OrderInfo() when $default != null:
return $default(_that.consignee,_that.address,_that.addTime,_that.orderSn,_that.actualPrice,_that.leaveWord,_that.mobile,_that.shipChannel,_that.orderStatusText,_that.goodsPrice,_that.couponPrice,_that.id,_that.freightPrice,_that.integralPrice,_that.handleOption,_that.shipSn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderInfo with DiagnosticableTreeMixin implements OrderInfo {
  const _OrderInfo({this.consignee, this.address, this.addTime, this.orderSn, this.actualPrice, this.leaveWord, this.mobile, this.shipChannel, this.orderStatusText, this.goodsPrice, this.couponPrice, this.id, this.freightPrice, this.integralPrice, this.handleOption, this.shipSn});
  factory _OrderInfo.fromJson(Map<String, dynamic> json) => _$OrderInfoFromJson(json);

@override final  String? consignee;
@override final  String? address;
@override final  int? addTime;
@override final  String? orderSn;
@override final  int? actualPrice;
@override final  String? leaveWord;
@override final  String? mobile;
@override final  String? shipChannel;
@override final  String? orderStatusText;
@override final  int? goodsPrice;
@override final  int? couponPrice;
@override final  int? id;
@override final  int? freightPrice;
@override final  int? integralPrice;
@override final  HandleOption? handleOption;
@override final  String? shipSn;

/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderInfoCopyWith<_OrderInfo> get copyWith => __$OrderInfoCopyWithImpl<_OrderInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderInfo'))
    ..add(DiagnosticsProperty('consignee', consignee))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('orderSn', orderSn))..add(DiagnosticsProperty('actualPrice', actualPrice))..add(DiagnosticsProperty('leaveWord', leaveWord))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('shipChannel', shipChannel))..add(DiagnosticsProperty('orderStatusText', orderStatusText))..add(DiagnosticsProperty('goodsPrice', goodsPrice))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('freightPrice', freightPrice))..add(DiagnosticsProperty('integralPrice', integralPrice))..add(DiagnosticsProperty('handleOption', handleOption))..add(DiagnosticsProperty('shipSn', shipSn));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderInfo&&(identical(other.consignee, consignee) || other.consignee == consignee)&&(identical(other.address, address) || other.address == address)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.orderSn, orderSn) || other.orderSn == orderSn)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.leaveWord, leaveWord) || other.leaveWord == leaveWord)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.shipChannel, shipChannel) || other.shipChannel == shipChannel)&&(identical(other.orderStatusText, orderStatusText) || other.orderStatusText == orderStatusText)&&(identical(other.goodsPrice, goodsPrice) || other.goodsPrice == goodsPrice)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.id, id) || other.id == id)&&(identical(other.freightPrice, freightPrice) || other.freightPrice == freightPrice)&&(identical(other.integralPrice, integralPrice) || other.integralPrice == integralPrice)&&(identical(other.handleOption, handleOption) || other.handleOption == handleOption)&&(identical(other.shipSn, shipSn) || other.shipSn == shipSn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,consignee,address,addTime,orderSn,actualPrice,leaveWord,mobile,shipChannel,orderStatusText,goodsPrice,couponPrice,id,freightPrice,integralPrice,handleOption,shipSn);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderInfo(consignee: $consignee, address: $address, addTime: $addTime, orderSn: $orderSn, actualPrice: $actualPrice, leaveWord: $leaveWord, mobile: $mobile, shipChannel: $shipChannel, orderStatusText: $orderStatusText, goodsPrice: $goodsPrice, couponPrice: $couponPrice, id: $id, freightPrice: $freightPrice, integralPrice: $integralPrice, handleOption: $handleOption, shipSn: $shipSn)';
}


}

/// @nodoc
abstract mixin class _$OrderInfoCopyWith<$Res> implements $OrderInfoCopyWith<$Res> {
  factory _$OrderInfoCopyWith(_OrderInfo value, $Res Function(_OrderInfo) _then) = __$OrderInfoCopyWithImpl;
@override @useResult
$Res call({
 String? consignee, String? address, int? addTime, String? orderSn, int? actualPrice, String? leaveWord, String? mobile, String? shipChannel, String? orderStatusText, int? goodsPrice, int? couponPrice, int? id, int? freightPrice, int? integralPrice, HandleOption? handleOption, String? shipSn
});


@override $HandleOptionCopyWith<$Res>? get handleOption;

}
/// @nodoc
class __$OrderInfoCopyWithImpl<$Res>
    implements _$OrderInfoCopyWith<$Res> {
  __$OrderInfoCopyWithImpl(this._self, this._then);

  final _OrderInfo _self;
  final $Res Function(_OrderInfo) _then;

/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? consignee = freezed,Object? address = freezed,Object? addTime = freezed,Object? orderSn = freezed,Object? actualPrice = freezed,Object? leaveWord = freezed,Object? mobile = freezed,Object? shipChannel = freezed,Object? orderStatusText = freezed,Object? goodsPrice = freezed,Object? couponPrice = freezed,Object? id = freezed,Object? freightPrice = freezed,Object? integralPrice = freezed,Object? handleOption = freezed,Object? shipSn = freezed,}) {
  return _then(_OrderInfo(
consignee: freezed == consignee ? _self.consignee : consignee // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,orderSn: freezed == orderSn ? _self.orderSn : orderSn // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: freezed == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as int?,leaveWord: freezed == leaveWord ? _self.leaveWord : leaveWord // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,shipChannel: freezed == shipChannel ? _self.shipChannel : shipChannel // ignore: cast_nullable_to_non_nullable
as String?,orderStatusText: freezed == orderStatusText ? _self.orderStatusText : orderStatusText // ignore: cast_nullable_to_non_nullable
as String?,goodsPrice: freezed == goodsPrice ? _self.goodsPrice : goodsPrice // ignore: cast_nullable_to_non_nullable
as int?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,freightPrice: freezed == freightPrice ? _self.freightPrice : freightPrice // ignore: cast_nullable_to_non_nullable
as int?,integralPrice: freezed == integralPrice ? _self.integralPrice : integralPrice // ignore: cast_nullable_to_non_nullable
as int?,handleOption: freezed == handleOption ? _self.handleOption : handleOption // ignore: cast_nullable_to_non_nullable
as HandleOption?,shipSn: freezed == shipSn ? _self.shipSn : shipSn // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<$Res>? get handleOption {
    if (_self.handleOption == null) {
    return null;
  }

  return $HandleOptionCopyWith<$Res>(_self.handleOption!, (value) {
    return _then(_self.copyWith(handleOption: value));
  });
}
}


/// @nodoc
mixin _$HandleOption implements DiagnosticableTreeMixin {

 bool? get cancel; bool? get delete; bool? get pay; bool? get comment; bool? get confirm; bool? get refund; bool? get rebuy;
/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandleOptionCopyWith<HandleOption> get copyWith => _$HandleOptionCopyWithImpl<HandleOption>(this as HandleOption, _$identity);

  /// Serializes this HandleOption to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandleOption'))
    ..add(DiagnosticsProperty('cancel', cancel))..add(DiagnosticsProperty('delete', delete))..add(DiagnosticsProperty('pay', pay))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('confirm', confirm))..add(DiagnosticsProperty('refund', refund))..add(DiagnosticsProperty('rebuy', rebuy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandleOption&&(identical(other.cancel, cancel) || other.cancel == cancel)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.confirm, confirm) || other.confirm == confirm)&&(identical(other.refund, refund) || other.refund == refund)&&(identical(other.rebuy, rebuy) || other.rebuy == rebuy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancel,delete,pay,comment,confirm,refund,rebuy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandleOption(cancel: $cancel, delete: $delete, pay: $pay, comment: $comment, confirm: $confirm, refund: $refund, rebuy: $rebuy)';
}


}

/// @nodoc
abstract mixin class $HandleOptionCopyWith<$Res>  {
  factory $HandleOptionCopyWith(HandleOption value, $Res Function(HandleOption) _then) = _$HandleOptionCopyWithImpl;
@useResult
$Res call({
 bool? cancel, bool? delete, bool? pay, bool? comment, bool? confirm, bool? refund, bool? rebuy
});




}
/// @nodoc
class _$HandleOptionCopyWithImpl<$Res>
    implements $HandleOptionCopyWith<$Res> {
  _$HandleOptionCopyWithImpl(this._self, this._then);

  final HandleOption _self;
  final $Res Function(HandleOption) _then;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cancel = freezed,Object? delete = freezed,Object? pay = freezed,Object? comment = freezed,Object? confirm = freezed,Object? refund = freezed,Object? rebuy = freezed,}) {
  return _then(_self.copyWith(
cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as bool?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool?,pay: freezed == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as bool?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as bool?,confirm: freezed == confirm ? _self.confirm : confirm // ignore: cast_nullable_to_non_nullable
as bool?,refund: freezed == refund ? _self.refund : refund // ignore: cast_nullable_to_non_nullable
as bool?,rebuy: freezed == rebuy ? _self.rebuy : rebuy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandleOption].
extension HandleOptionPatterns on HandleOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandleOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandleOption value)  $default,){
final _that = this;
switch (_that) {
case _HandleOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandleOption value)?  $default,){
final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)  $default,) {final _that = this;
switch (_that) {
case _HandleOption():
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? cancel,  bool? delete,  bool? pay,  bool? comment,  bool? confirm,  bool? refund,  bool? rebuy)?  $default,) {final _that = this;
switch (_that) {
case _HandleOption() when $default != null:
return $default(_that.cancel,_that.delete,_that.pay,_that.comment,_that.confirm,_that.refund,_that.rebuy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandleOption with DiagnosticableTreeMixin implements HandleOption {
  const _HandleOption({this.cancel, this.delete, this.pay, this.comment, this.confirm, this.refund, this.rebuy});
  factory _HandleOption.fromJson(Map<String, dynamic> json) => _$HandleOptionFromJson(json);

@override final  bool? cancel;
@override final  bool? delete;
@override final  bool? pay;
@override final  bool? comment;
@override final  bool? confirm;
@override final  bool? refund;
@override final  bool? rebuy;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandleOptionCopyWith<_HandleOption> get copyWith => __$HandleOptionCopyWithImpl<_HandleOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandleOptionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HandleOption'))
    ..add(DiagnosticsProperty('cancel', cancel))..add(DiagnosticsProperty('delete', delete))..add(DiagnosticsProperty('pay', pay))..add(DiagnosticsProperty('comment', comment))..add(DiagnosticsProperty('confirm', confirm))..add(DiagnosticsProperty('refund', refund))..add(DiagnosticsProperty('rebuy', rebuy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandleOption&&(identical(other.cancel, cancel) || other.cancel == cancel)&&(identical(other.delete, delete) || other.delete == delete)&&(identical(other.pay, pay) || other.pay == pay)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.confirm, confirm) || other.confirm == confirm)&&(identical(other.refund, refund) || other.refund == refund)&&(identical(other.rebuy, rebuy) || other.rebuy == rebuy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cancel,delete,pay,comment,confirm,refund,rebuy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HandleOption(cancel: $cancel, delete: $delete, pay: $pay, comment: $comment, confirm: $confirm, refund: $refund, rebuy: $rebuy)';
}


}

/// @nodoc
abstract mixin class _$HandleOptionCopyWith<$Res> implements $HandleOptionCopyWith<$Res> {
  factory _$HandleOptionCopyWith(_HandleOption value, $Res Function(_HandleOption) _then) = __$HandleOptionCopyWithImpl;
@override @useResult
$Res call({
 bool? cancel, bool? delete, bool? pay, bool? comment, bool? confirm, bool? refund, bool? rebuy
});




}
/// @nodoc
class __$HandleOptionCopyWithImpl<$Res>
    implements _$HandleOptionCopyWith<$Res> {
  __$HandleOptionCopyWithImpl(this._self, this._then);

  final _HandleOption _self;
  final $Res Function(_HandleOption) _then;

/// Create a copy of HandleOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cancel = freezed,Object? delete = freezed,Object? pay = freezed,Object? comment = freezed,Object? confirm = freezed,Object? refund = freezed,Object? rebuy = freezed,}) {
  return _then(_HandleOption(
cancel: freezed == cancel ? _self.cancel : cancel // ignore: cast_nullable_to_non_nullable
as bool?,delete: freezed == delete ? _self.delete : delete // ignore: cast_nullable_to_non_nullable
as bool?,pay: freezed == pay ? _self.pay : pay // ignore: cast_nullable_to_non_nullable
as bool?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as bool?,confirm: freezed == confirm ? _self.confirm : confirm // ignore: cast_nullable_to_non_nullable
as bool?,refund: freezed == refund ? _self.refund : refund // ignore: cast_nullable_to_non_nullable
as bool?,rebuy: freezed == rebuy ? _self.rebuy : rebuy // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$OrderGoods implements DiagnosticableTreeMixin {

 int? get number; String? get picUrl; int? get orderId; int? get goodsId; dynamic? get goodsSpecificationValues; int? get id; String? get goodsName; int? get retailPrice;
/// Create a copy of OrderGoods
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderGoodsCopyWith<OrderGoods> get copyWith => _$OrderGoodsCopyWithImpl<OrderGoods>(this as OrderGoods, _$identity);

  /// Serializes this OrderGoods to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderGoods'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('goodsSpecificationValues', goodsSpecificationValues))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('retailPrice', retailPrice));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderGoods&&(identical(other.number, number) || other.number == number)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&const DeepCollectionEquality().equals(other.goodsSpecificationValues, goodsSpecificationValues)&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,picUrl,orderId,goodsId,const DeepCollectionEquality().hash(goodsSpecificationValues),id,goodsName,retailPrice);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderGoods(number: $number, picUrl: $picUrl, orderId: $orderId, goodsId: $goodsId, goodsSpecificationValues: $goodsSpecificationValues, id: $id, goodsName: $goodsName, retailPrice: $retailPrice)';
}


}

/// @nodoc
abstract mixin class $OrderGoodsCopyWith<$Res>  {
  factory $OrderGoodsCopyWith(OrderGoods value, $Res Function(OrderGoods) _then) = _$OrderGoodsCopyWithImpl;
@useResult
$Res call({
 int? number, String? picUrl, int? orderId, int? goodsId, dynamic? goodsSpecificationValues, int? id, String? goodsName, int? retailPrice
});




}
/// @nodoc
class _$OrderGoodsCopyWithImpl<$Res>
    implements $OrderGoodsCopyWith<$Res> {
  _$OrderGoodsCopyWithImpl(this._self, this._then);

  final OrderGoods _self;
  final $Res Function(OrderGoods) _then;

/// Create a copy of OrderGoods
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? picUrl = freezed,Object? orderId = freezed,Object? goodsId = freezed,Object? goodsSpecificationValues = freezed,Object? id = freezed,Object? goodsName = freezed,Object? retailPrice = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,goodsSpecificationValues: freezed == goodsSpecificationValues ? _self.goodsSpecificationValues : goodsSpecificationValues // ignore: cast_nullable_to_non_nullable
as dynamic?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderGoods].
extension OrderGoodsPatterns on OrderGoods {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderGoods value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderGoods() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderGoods value)  $default,){
final _that = this;
switch (_that) {
case _OrderGoods():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderGoods value)?  $default,){
final _that = this;
switch (_that) {
case _OrderGoods() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? number,  String? picUrl,  int? orderId,  int? goodsId,  dynamic? goodsSpecificationValues,  int? id,  String? goodsName,  int? retailPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderGoods() when $default != null:
return $default(_that.number,_that.picUrl,_that.orderId,_that.goodsId,_that.goodsSpecificationValues,_that.id,_that.goodsName,_that.retailPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? number,  String? picUrl,  int? orderId,  int? goodsId,  dynamic? goodsSpecificationValues,  int? id,  String? goodsName,  int? retailPrice)  $default,) {final _that = this;
switch (_that) {
case _OrderGoods():
return $default(_that.number,_that.picUrl,_that.orderId,_that.goodsId,_that.goodsSpecificationValues,_that.id,_that.goodsName,_that.retailPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? number,  String? picUrl,  int? orderId,  int? goodsId,  dynamic? goodsSpecificationValues,  int? id,  String? goodsName,  int? retailPrice)?  $default,) {final _that = this;
switch (_that) {
case _OrderGoods() when $default != null:
return $default(_that.number,_that.picUrl,_that.orderId,_that.goodsId,_that.goodsSpecificationValues,_that.id,_that.goodsName,_that.retailPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderGoods with DiagnosticableTreeMixin implements OrderGoods {
  const _OrderGoods({this.number, this.picUrl, this.orderId, this.goodsId, this.goodsSpecificationValues, this.id, this.goodsName, this.retailPrice});
  factory _OrderGoods.fromJson(Map<String, dynamic> json) => _$OrderGoodsFromJson(json);

@override final  int? number;
@override final  String? picUrl;
@override final  int? orderId;
@override final  int? goodsId;
@override final  dynamic? goodsSpecificationValues;
@override final  int? id;
@override final  String? goodsName;
@override final  int? retailPrice;

/// Create a copy of OrderGoods
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderGoodsCopyWith<_OrderGoods> get copyWith => __$OrderGoodsCopyWithImpl<_OrderGoods>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderGoodsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderGoods'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('picUrl', picUrl))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('goodsSpecificationValues', goodsSpecificationValues))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('retailPrice', retailPrice));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderGoods&&(identical(other.number, number) || other.number == number)&&(identical(other.picUrl, picUrl) || other.picUrl == picUrl)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&const DeepCollectionEquality().equals(other.goodsSpecificationValues, goodsSpecificationValues)&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,picUrl,orderId,goodsId,const DeepCollectionEquality().hash(goodsSpecificationValues),id,goodsName,retailPrice);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderGoods(number: $number, picUrl: $picUrl, orderId: $orderId, goodsId: $goodsId, goodsSpecificationValues: $goodsSpecificationValues, id: $id, goodsName: $goodsName, retailPrice: $retailPrice)';
}


}

/// @nodoc
abstract mixin class _$OrderGoodsCopyWith<$Res> implements $OrderGoodsCopyWith<$Res> {
  factory _$OrderGoodsCopyWith(_OrderGoods value, $Res Function(_OrderGoods) _then) = __$OrderGoodsCopyWithImpl;
@override @useResult
$Res call({
 int? number, String? picUrl, int? orderId, int? goodsId, dynamic? goodsSpecificationValues, int? id, String? goodsName, int? retailPrice
});




}
/// @nodoc
class __$OrderGoodsCopyWithImpl<$Res>
    implements _$OrderGoodsCopyWith<$Res> {
  __$OrderGoodsCopyWithImpl(this._self, this._then);

  final _OrderGoods _self;
  final $Res Function(_OrderGoods) _then;

/// Create a copy of OrderGoods
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? picUrl = freezed,Object? orderId = freezed,Object? goodsId = freezed,Object? goodsSpecificationValues = freezed,Object? id = freezed,Object? goodsName = freezed,Object? retailPrice = freezed,}) {
  return _then(_OrderGoods(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,picUrl: freezed == picUrl ? _self.picUrl : picUrl // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,goodsSpecificationValues: freezed == goodsSpecificationValues ? _self.goodsSpecificationValues : goodsSpecificationValues // ignore: cast_nullable_to_non_nullable
as dynamic?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
