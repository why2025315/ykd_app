// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product implements DiagnosticableTreeMixin {

 int? get id; int? get goodsId; String? get goodsName; String? get goodsSpecificationNames; List<int>? get goodsSpecificationIds; int? get goodsNumber; int? get retailPrice; String? get url; int? get addTime; int? get deleted; bool? get newProperty;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('goodsSpecificationNames', goodsSpecificationNames))..add(DiagnosticsProperty('goodsSpecificationIds', goodsSpecificationIds))..add(DiagnosticsProperty('goodsNumber', goodsNumber))..add(DiagnosticsProperty('retailPrice', retailPrice))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('deleted', deleted))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.goodsSpecificationNames, goodsSpecificationNames) || other.goodsSpecificationNames == goodsSpecificationNames)&&const DeepCollectionEquality().equals(other.goodsSpecificationIds, goodsSpecificationIds)&&(identical(other.goodsNumber, goodsNumber) || other.goodsNumber == goodsNumber)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.url, url) || other.url == url)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,goodsName,goodsSpecificationNames,const DeepCollectionEquality().hash(goodsSpecificationIds),goodsNumber,retailPrice,url,addTime,deleted,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, goodsId: $goodsId, goodsName: $goodsName, goodsSpecificationNames: $goodsSpecificationNames, goodsSpecificationIds: $goodsSpecificationIds, goodsNumber: $goodsNumber, retailPrice: $retailPrice, url: $url, addTime: $addTime, deleted: $deleted, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int? id, int? goodsId, String? goodsName, String? goodsSpecificationNames, List<int>? goodsSpecificationIds, int? goodsNumber, int? retailPrice, String? url, int? addTime, int? deleted, bool? newProperty
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? goodsId = freezed,Object? goodsName = freezed,Object? goodsSpecificationNames = freezed,Object? goodsSpecificationIds = freezed,Object? goodsNumber = freezed,Object? retailPrice = freezed,Object? url = freezed,Object? addTime = freezed,Object? deleted = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecificationNames: freezed == goodsSpecificationNames ? _self.goodsSpecificationNames : goodsSpecificationNames // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecificationIds: freezed == goodsSpecificationIds ? _self.goodsSpecificationIds : goodsSpecificationIds // ignore: cast_nullable_to_non_nullable
as List<int>?,goodsNumber: freezed == goodsNumber ? _self.goodsNumber : goodsNumber // ignore: cast_nullable_to_non_nullable
as int?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? goodsName,  String? goodsSpecificationNames,  List<int>? goodsSpecificationIds,  int? goodsNumber,  int? retailPrice,  String? url,  int? addTime,  int? deleted,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.goodsId,_that.goodsName,_that.goodsSpecificationNames,_that.goodsSpecificationIds,_that.goodsNumber,_that.retailPrice,_that.url,_that.addTime,_that.deleted,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? goodsId,  String? goodsName,  String? goodsSpecificationNames,  List<int>? goodsSpecificationIds,  int? goodsNumber,  int? retailPrice,  String? url,  int? addTime,  int? deleted,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.goodsId,_that.goodsName,_that.goodsSpecificationNames,_that.goodsSpecificationIds,_that.goodsNumber,_that.retailPrice,_that.url,_that.addTime,_that.deleted,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? goodsId,  String? goodsName,  String? goodsSpecificationNames,  List<int>? goodsSpecificationIds,  int? goodsNumber,  int? retailPrice,  String? url,  int? addTime,  int? deleted,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.goodsId,_that.goodsName,_that.goodsSpecificationNames,_that.goodsSpecificationIds,_that.goodsNumber,_that.retailPrice,_that.url,_that.addTime,_that.deleted,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product with DiagnosticableTreeMixin implements Product {
  const _Product({this.id, this.goodsId, this.goodsName, this.goodsSpecificationNames, final  List<int>? goodsSpecificationIds, this.goodsNumber, this.retailPrice, this.url, this.addTime, this.deleted, this.newProperty}): _goodsSpecificationIds = goodsSpecificationIds;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int? id;
@override final  int? goodsId;
@override final  String? goodsName;
@override final  String? goodsSpecificationNames;
 final  List<int>? _goodsSpecificationIds;
@override List<int>? get goodsSpecificationIds {
  final value = _goodsSpecificationIds;
  if (value == null) return null;
  if (_goodsSpecificationIds is EqualUnmodifiableListView) return _goodsSpecificationIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? goodsNumber;
@override final  int? retailPrice;
@override final  String? url;
@override final  int? addTime;
@override final  int? deleted;
@override final  bool? newProperty;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Product'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('goodsId', goodsId))..add(DiagnosticsProperty('goodsName', goodsName))..add(DiagnosticsProperty('goodsSpecificationNames', goodsSpecificationNames))..add(DiagnosticsProperty('goodsSpecificationIds', goodsSpecificationIds))..add(DiagnosticsProperty('goodsNumber', goodsNumber))..add(DiagnosticsProperty('retailPrice', retailPrice))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('deleted', deleted))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.goodsId, goodsId) || other.goodsId == goodsId)&&(identical(other.goodsName, goodsName) || other.goodsName == goodsName)&&(identical(other.goodsSpecificationNames, goodsSpecificationNames) || other.goodsSpecificationNames == goodsSpecificationNames)&&const DeepCollectionEquality().equals(other._goodsSpecificationIds, _goodsSpecificationIds)&&(identical(other.goodsNumber, goodsNumber) || other.goodsNumber == goodsNumber)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.url, url) || other.url == url)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,goodsId,goodsName,goodsSpecificationNames,const DeepCollectionEquality().hash(_goodsSpecificationIds),goodsNumber,retailPrice,url,addTime,deleted,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Product(id: $id, goodsId: $goodsId, goodsName: $goodsName, goodsSpecificationNames: $goodsSpecificationNames, goodsSpecificationIds: $goodsSpecificationIds, goodsNumber: $goodsNumber, retailPrice: $retailPrice, url: $url, addTime: $addTime, deleted: $deleted, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? goodsId, String? goodsName, String? goodsSpecificationNames, List<int>? goodsSpecificationIds, int? goodsNumber, int? retailPrice, String? url, int? addTime, int? deleted, bool? newProperty
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? goodsId = freezed,Object? goodsName = freezed,Object? goodsSpecificationNames = freezed,Object? goodsSpecificationIds = freezed,Object? goodsNumber = freezed,Object? retailPrice = freezed,Object? url = freezed,Object? addTime = freezed,Object? deleted = freezed,Object? newProperty = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,goodsId: freezed == goodsId ? _self.goodsId : goodsId // ignore: cast_nullable_to_non_nullable
as int?,goodsName: freezed == goodsName ? _self.goodsName : goodsName // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecificationNames: freezed == goodsSpecificationNames ? _self.goodsSpecificationNames : goodsSpecificationNames // ignore: cast_nullable_to_non_nullable
as String?,goodsSpecificationIds: freezed == goodsSpecificationIds ? _self._goodsSpecificationIds : goodsSpecificationIds // ignore: cast_nullable_to_non_nullable
as List<int>?,goodsNumber: freezed == goodsNumber ? _self.goodsNumber : goodsNumber // ignore: cast_nullable_to_non_nullable
as int?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as int?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
