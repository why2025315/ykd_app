// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_list_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartListApiModel implements DiagnosticableTreeMixin {

 CartTotal? get cartTotal; List<CartGoodsItem>? get cartList;
/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartListApiModelCopyWith<CartListApiModel> get copyWith => _$CartListApiModelCopyWithImpl<CartListApiModel>(this as CartListApiModel, _$identity);

  /// Serializes this CartListApiModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartListApiModel'))
    ..add(DiagnosticsProperty('cartTotal', cartTotal))..add(DiagnosticsProperty('cartList', cartList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartListApiModel&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&const DeepCollectionEquality().equals(other.cartList, cartList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartTotal,const DeepCollectionEquality().hash(cartList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartListApiModel(cartTotal: $cartTotal, cartList: $cartList)';
}


}

/// @nodoc
abstract mixin class $CartListApiModelCopyWith<$Res>  {
  factory $CartListApiModelCopyWith(CartListApiModel value, $Res Function(CartListApiModel) _then) = _$CartListApiModelCopyWithImpl;
@useResult
$Res call({
 CartTotal? cartTotal, List<CartGoodsItem>? cartList
});


$CartTotalCopyWith<$Res>? get cartTotal;

}
/// @nodoc
class _$CartListApiModelCopyWithImpl<$Res>
    implements $CartListApiModelCopyWith<$Res> {
  _$CartListApiModelCopyWithImpl(this._self, this._then);

  final CartListApiModel _self;
  final $Res Function(CartListApiModel) _then;

/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartTotal = freezed,Object? cartList = freezed,}) {
  return _then(_self.copyWith(
cartTotal: freezed == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as CartTotal?,cartList: freezed == cartList ? _self.cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<CartGoodsItem>?,
  ));
}
/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartTotalCopyWith<$Res>? get cartTotal {
    if (_self.cartTotal == null) {
    return null;
  }

  return $CartTotalCopyWith<$Res>(_self.cartTotal!, (value) {
    return _then(_self.copyWith(cartTotal: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartListApiModel].
extension CartListApiModelPatterns on CartListApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartListApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartListApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartListApiModel value)  $default,){
final _that = this;
switch (_that) {
case _CartListApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartListApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartListApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CartTotal? cartTotal,  List<CartGoodsItem>? cartList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartListApiModel() when $default != null:
return $default(_that.cartTotal,_that.cartList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CartTotal? cartTotal,  List<CartGoodsItem>? cartList)  $default,) {final _that = this;
switch (_that) {
case _CartListApiModel():
return $default(_that.cartTotal,_that.cartList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CartTotal? cartTotal,  List<CartGoodsItem>? cartList)?  $default,) {final _that = this;
switch (_that) {
case _CartListApiModel() when $default != null:
return $default(_that.cartTotal,_that.cartList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartListApiModel with DiagnosticableTreeMixin implements CartListApiModel {
  const _CartListApiModel({this.cartTotal, final  List<CartGoodsItem>? cartList}): _cartList = cartList;
  factory _CartListApiModel.fromJson(Map<String, dynamic> json) => _$CartListApiModelFromJson(json);

@override final  CartTotal? cartTotal;
 final  List<CartGoodsItem>? _cartList;
@override List<CartGoodsItem>? get cartList {
  final value = _cartList;
  if (value == null) return null;
  if (_cartList is EqualUnmodifiableListView) return _cartList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartListApiModelCopyWith<_CartListApiModel> get copyWith => __$CartListApiModelCopyWithImpl<_CartListApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartListApiModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CartListApiModel'))
    ..add(DiagnosticsProperty('cartTotal', cartTotal))..add(DiagnosticsProperty('cartList', cartList));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartListApiModel&&(identical(other.cartTotal, cartTotal) || other.cartTotal == cartTotal)&&const DeepCollectionEquality().equals(other._cartList, _cartList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cartTotal,const DeepCollectionEquality().hash(_cartList));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CartListApiModel(cartTotal: $cartTotal, cartList: $cartList)';
}


}

/// @nodoc
abstract mixin class _$CartListApiModelCopyWith<$Res> implements $CartListApiModelCopyWith<$Res> {
  factory _$CartListApiModelCopyWith(_CartListApiModel value, $Res Function(_CartListApiModel) _then) = __$CartListApiModelCopyWithImpl;
@override @useResult
$Res call({
 CartTotal? cartTotal, List<CartGoodsItem>? cartList
});


@override $CartTotalCopyWith<$Res>? get cartTotal;

}
/// @nodoc
class __$CartListApiModelCopyWithImpl<$Res>
    implements _$CartListApiModelCopyWith<$Res> {
  __$CartListApiModelCopyWithImpl(this._self, this._then);

  final _CartListApiModel _self;
  final $Res Function(_CartListApiModel) _then;

/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartTotal = freezed,Object? cartList = freezed,}) {
  return _then(_CartListApiModel(
cartTotal: freezed == cartTotal ? _self.cartTotal : cartTotal // ignore: cast_nullable_to_non_nullable
as CartTotal?,cartList: freezed == cartList ? _self._cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<CartGoodsItem>?,
  ));
}

/// Create a copy of CartListApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartTotalCopyWith<$Res>? get cartTotal {
    if (_self.cartTotal == null) {
    return null;
  }

  return $CartTotalCopyWith<$Res>(_self.cartTotal!, (value) {
    return _then(_self.copyWith(cartTotal: value));
  });
}
}

// dart format on
