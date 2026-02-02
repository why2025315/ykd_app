// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Payment implements DiagnosticableTreeMixin {

 int? get id; int? get goodsId; String? get typeTitle; String? get typeDesc; int? get addTime; int? get couponPrice; int? get orderPrice; bool? get newProperty;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payment'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('typeTitle', typeTitle))..add(DiagnosticsProperty('typeDesc', typeDesc))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('orderPrice', orderPrice))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.typeTitle, typeTitle) || other.typeTitle == typeTitle)&&(identical(other.typeDesc, typeDesc) || other.typeDesc == typeDesc)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.orderPrice, orderPrice) || other.orderPrice == orderPrice)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,typeTitle,typeDesc,addTime,couponPrice,orderPrice,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payment(id: $id, goodsId: $goodsId, typeTitle: $typeTitle, typeDesc: $typeDesc, addTime: $addTime, couponPrice: $couponPrice, orderPrice: $orderPrice, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 int? id, int? goodsId, String? typeTitle, String? typeDesc, int? addTime, int? couponPrice, int? orderPrice, bool? newProperty
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? goodsId = freezed,Object? typeTitle = freezed,Object? typeDesc = freezed,Object? addTime = freezed,Object? couponPrice = freezed,Object? orderPrice = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,typeTitle: freezed == typeTitle ? _self.typeTitle : typeTitle // ignore: cast_nullable_to_non_nullable
as String?,typeDesc: freezed == typeDesc ? _self.typeDesc : typeDesc // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,orderPrice: freezed == orderPrice ? _self.orderPrice : orderPrice // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? typeTitle,  String? typeDesc,  int? addTime,  int? couponPrice,  int? orderPrice,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.goodsId,_that.typeTitle,_that.typeDesc,_that.addTime,_that.couponPrice,_that.orderPrice,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? typeTitle,  String? typeDesc,  int? addTime,  int? couponPrice,  int? orderPrice,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.goodsId,_that.typeTitle,_that.typeDesc,_that.addTime,_that.couponPrice,_that.orderPrice,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? goodsId,  String? typeTitle,  String? typeDesc,  int? addTime,  int? couponPrice,  int? orderPrice,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.goodsId,_that.typeTitle,_that.typeDesc,_that.addTime,_that.couponPrice,_that.orderPrice,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payment with DiagnosticableTreeMixin implements Payment {
  const _Payment({this.id, this.goodsId, this.typeTitle, this.typeDesc, this.addTime, this.couponPrice, this.orderPrice, this.newProperty});
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  int? id;
@override final  int? goodsId;
@override final  String? typeTitle;
@override final  String? typeDesc;
@override final  int? addTime;
@override final  int? couponPrice;
@override final  int? orderPrice;
@override final  bool? newProperty;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payment'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('typeTitle', typeTitle))..add(DiagnosticsProperty('typeDesc', typeDesc))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('couponPrice', couponPrice))..add(DiagnosticsProperty('orderPrice', orderPrice))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.typeTitle, typeTitle) || other.typeTitle == typeTitle)&&(identical(other.typeDesc, typeDesc) || other.typeDesc == typeDesc)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice)&&(identical(other.orderPrice, orderPrice) || other.orderPrice == orderPrice)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,typeTitle,typeDesc,addTime,couponPrice,orderPrice,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payment(id: $id, goodsId: $goodsId, typeTitle: $typeTitle, typeDesc: $typeDesc, addTime: $addTime, couponPrice: $couponPrice, orderPrice: $orderPrice, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? goodsId, String? typeTitle, String? typeDesc, int? addTime, int? couponPrice, int? orderPrice, bool? newProperty
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? goodsId = freezed,Object? typeTitle = freezed,Object? typeDesc = freezed,Object? addTime = freezed,Object? couponPrice = freezed,Object? orderPrice = freezed,Object? newProperty = freezed,}) {
  return _then(_Payment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,typeTitle: freezed == typeTitle ? _self.typeTitle : typeTitle // ignore: cast_nullable_to_non_nullable
as String?,typeDesc: freezed == typeDesc ? _self.typeDesc : typeDesc // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,couponPrice: freezed == couponPrice ? _self.couponPrice : couponPrice // ignore: cast_nullable_to_non_nullable
as int?,orderPrice: freezed == orderPrice ? _self.orderPrice : orderPrice // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
