// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_total.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartTotal implements DiagnosticableTreeMixin {

 int? get goodsCount; int? get checkedGoodsCount; double? get goodsAmount; double? get checkedGoodsAmount;
/// Create a copy of CartTotal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartTotalCopyWith<CartTotal> get copyWith => _$CartTotalCopyWithImpl<CartTotal>(this as CartTotal, _$identity);

  /// Serializes this CartTotal to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartTotal'))
    ..add(DiagnosticsProperty('goodsCount', goodsCount))..add(DiagnosticsProperty('checkedGoodsCount', checkedGoodsCount))..add(DiagnosticsProperty('goodsAmount', goodsAmount))..add(DiagnosticsProperty('checkedGoodsAmount', checkedGoodsAmount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartTotal&&(identical(other.goodsCount, goodsCount) || other.goodsCount == goodsCount)&&(identical(other.checkedGoodsCount, checkedGoodsCount) || other.checkedGoodsCount == checkedGoodsCount)&&(identical(other.goodsAmount, goodsAmount) || other.goodsAmount == goodsAmount)&&(identical(other.checkedGoodsAmount, checkedGoodsAmount) || other.checkedGoodsAmount == checkedGoodsAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goodsCount,checkedGoodsCount,goodsAmount,checkedGoodsAmount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartTotal(goodsCount: $goodsCount, checkedGoodsCount: $checkedGoodsCount, goodsAmount: $goodsAmount, checkedGoodsAmount: $checkedGoodsAmount)';
}


}

/// @nodoc
abstract mixin class $CartTotalCopyWith<$Res>  {
  factory $CartTotalCopyWith(CartTotal value, $Res Function(CartTotal) _then) = _$CartTotalCopyWithImpl;
@useResult
$Res call({
 int? goodsCount, int? checkedGoodsCount, double? goodsAmount, double? checkedGoodsAmount
});




}
/// @nodoc
class _$CartTotalCopyWithImpl<$Res>
    implements $CartTotalCopyWith<$Res> {
  _$CartTotalCopyWithImpl(this._self, this._then);

  final CartTotal _self;
  final $Res Function(CartTotal) _then;

/// Create a copy of CartTotal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goodsCount = freezed,Object? checkedGoodsCount = freezed,Object? goodsAmount = freezed,Object? checkedGoodsAmount = freezed,}) {
  return _then(_self.copyWith(
goodsCount: freezed == goodsCount ? _self.goodsCount : goodsCount // ignore: cast_nullable_to_non_nullable
as int?,checkedGoodsCount: freezed == checkedGoodsCount ? _self.checkedGoodsCount : checkedGoodsCount // ignore: cast_nullable_to_non_nullable
as int?,goodsAmount: freezed == goodsAmount ? _self.goodsAmount : goodsAmount // ignore: cast_nullable_to_non_nullable
as double?,checkedGoodsAmount: freezed == checkedGoodsAmount ? _self.checkedGoodsAmount : checkedGoodsAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartTotal].
extension CartTotalPatterns on CartTotal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartTotal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartTotal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartTotal value)  $default,){
final _that = this;
switch (_that) {
case _CartTotal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartTotal value)?  $default,){
final _that = this;
switch (_that) {
case _CartTotal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? goodsCount,  int? checkedGoodsCount,  double? goodsAmount,  double? checkedGoodsAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartTotal() when $default != null:
return $default(_that.goodsCount,_that.checkedGoodsCount,_that.goodsAmount,_that.checkedGoodsAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? goodsCount,  int? checkedGoodsCount,  double? goodsAmount,  double? checkedGoodsAmount)  $default,) {final _that = this;
switch (_that) {
case _CartTotal():
return $default(_that.goodsCount,_that.checkedGoodsCount,_that.goodsAmount,_that.checkedGoodsAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? goodsCount,  int? checkedGoodsCount,  double? goodsAmount,  double? checkedGoodsAmount)?  $default,) {final _that = this;
switch (_that) {
case _CartTotal() when $default != null:
return $default(_that.goodsCount,_that.checkedGoodsCount,_that.goodsAmount,_that.checkedGoodsAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartTotal with DiagnosticableTreeMixin implements CartTotal {
  const _CartTotal({this.goodsCount, this.checkedGoodsCount, this.goodsAmount, this.checkedGoodsAmount});
  factory _CartTotal.fromJson(Map<String, dynamic> json) => _$CartTotalFromJson(json);

@override final  int? goodsCount;
@override final  int? checkedGoodsCount;
@override final  double? goodsAmount;
@override final  double? checkedGoodsAmount;

/// Create a copy of CartTotal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartTotalCopyWith<_CartTotal> get copyWith => __$CartTotalCopyWithImpl<_CartTotal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartTotalToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartTotal'))
    ..add(DiagnosticsProperty('goodsCount', goodsCount))..add(DiagnosticsProperty('checkedGoodsCount', checkedGoodsCount))..add(DiagnosticsProperty('goodsAmount', goodsAmount))..add(DiagnosticsProperty('checkedGoodsAmount', checkedGoodsAmount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartTotal&&(identical(other.goodsCount, goodsCount) || other.goodsCount == goodsCount)&&(identical(other.checkedGoodsCount, checkedGoodsCount) || other.checkedGoodsCount == checkedGoodsCount)&&(identical(other.goodsAmount, goodsAmount) || other.goodsAmount == goodsAmount)&&(identical(other.checkedGoodsAmount, checkedGoodsAmount) || other.checkedGoodsAmount == checkedGoodsAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goodsCount,checkedGoodsCount,goodsAmount,checkedGoodsAmount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartTotal(goodsCount: $goodsCount, checkedGoodsCount: $checkedGoodsCount, goodsAmount: $goodsAmount, checkedGoodsAmount: $checkedGoodsAmount)';
}


}

/// @nodoc
abstract mixin class _$CartTotalCopyWith<$Res> implements $CartTotalCopyWith<$Res> {
  factory _$CartTotalCopyWith(_CartTotal value, $Res Function(_CartTotal) _then) = __$CartTotalCopyWithImpl;
@override @useResult
$Res call({
 int? goodsCount, int? checkedGoodsCount, double? goodsAmount, double? checkedGoodsAmount
});




}
/// @nodoc
class __$CartTotalCopyWithImpl<$Res>
    implements _$CartTotalCopyWith<$Res> {
  __$CartTotalCopyWithImpl(this._self, this._then);

  final _CartTotal _self;
  final $Res Function(_CartTotal) _then;

/// Create a copy of CartTotal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goodsCount = freezed,Object? checkedGoodsCount = freezed,Object? goodsAmount = freezed,Object? checkedGoodsAmount = freezed,}) {
  return _then(_CartTotal(
goodsCount: freezed == goodsCount ? _self.goodsCount : goodsCount // ignore: cast_nullable_to_non_nullable
as int?,checkedGoodsCount: freezed == checkedGoodsCount ? _self.checkedGoodsCount : checkedGoodsCount // ignore: cast_nullable_to_non_nullable
as int?,goodsAmount: freezed == goodsAmount ? _self.goodsAmount : goodsAmount // ignore: cast_nullable_to_non_nullable
as double?,checkedGoodsAmount: freezed == checkedGoodsAmount ? _self.checkedGoodsAmount : checkedGoodsAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
