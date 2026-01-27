// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_list_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsListApiModel {

 int? get count; List<Goods>? get goodsList;
/// Create a copy of GoodsListApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsListApiModelCopyWith<GoodsListApiModel> get copyWith => _$GoodsListApiModelCopyWithImpl<GoodsListApiModel>(this as GoodsListApiModel, _$identity);

  /// Serializes this GoodsListApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsListApiModel&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.goodsList, goodsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(goodsList));

@override
String toString() {
  return 'GoodsListApiModel(count: $count, goodsList: $goodsList)';
}


}

/// @nodoc
abstract mixin class $GoodsListApiModelCopyWith<$Res>  {
  factory $GoodsListApiModelCopyWith(GoodsListApiModel value, $Res Function(GoodsListApiModel) _then) = _$GoodsListApiModelCopyWithImpl;
@useResult
$Res call({
 int? count, List<Goods>? goodsList
});




}
/// @nodoc
class _$GoodsListApiModelCopyWithImpl<$Res>
    implements $GoodsListApiModelCopyWith<$Res> {
  _$GoodsListApiModelCopyWithImpl(this._self, this._then);

  final GoodsListApiModel _self;
  final $Res Function(GoodsListApiModel) _then;

/// Create a copy of GoodsListApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = freezed,Object? goodsList = freezed,}) {
  return _then(_self.copyWith(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,goodsList: freezed == goodsList ? _self.goodsList : goodsList // ignore: cast_nullable_to_non_nullable
as List<Goods>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoodsListApiModel].
extension GoodsListApiModelPatterns on GoodsListApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsListApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsListApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsListApiModel value)  $default,){
final _that = this;
switch (_that) {
case _GoodsListApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsListApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsListApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? count,  List<Goods>? goodsList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsListApiModel() when $default != null:
return $default(_that.count,_that.goodsList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? count,  List<Goods>? goodsList)  $default,) {final _that = this;
switch (_that) {
case _GoodsListApiModel():
return $default(_that.count,_that.goodsList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? count,  List<Goods>? goodsList)?  $default,) {final _that = this;
switch (_that) {
case _GoodsListApiModel() when $default != null:
return $default(_that.count,_that.goodsList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoodsListApiModel implements GoodsListApiModel {
  const _GoodsListApiModel({this.count, final  List<Goods>? goodsList}): _goodsList = goodsList;
  factory _GoodsListApiModel.fromJson(Map<String, dynamic> json) => _$GoodsListApiModelFromJson(json);

@override final  int? count;
 final  List<Goods>? _goodsList;
@override List<Goods>? get goodsList {
  final value = _goodsList;
  if (value == null) return null;
  if (_goodsList is EqualUnmodifiableListView) return _goodsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GoodsListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsListApiModelCopyWith<_GoodsListApiModel> get copyWith => __$GoodsListApiModelCopyWithImpl<_GoodsListApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodsListApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsListApiModel&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._goodsList, _goodsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_goodsList));

@override
String toString() {
  return 'GoodsListApiModel(count: $count, goodsList: $goodsList)';
}


}

/// @nodoc
abstract mixin class _$GoodsListApiModelCopyWith<$Res> implements $GoodsListApiModelCopyWith<$Res> {
  factory _$GoodsListApiModelCopyWith(_GoodsListApiModel value, $Res Function(_GoodsListApiModel) _then) = __$GoodsListApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? count, List<Goods>? goodsList
});




}
/// @nodoc
class __$GoodsListApiModelCopyWithImpl<$Res>
    implements _$GoodsListApiModelCopyWith<$Res> {
  __$GoodsListApiModelCopyWithImpl(this._self, this._then);

  final _GoodsListApiModel _self;
  final $Res Function(_GoodsListApiModel) _then;

/// Create a copy of GoodsListApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = freezed,Object? goodsList = freezed,}) {
  return _then(_GoodsListApiModel(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,goodsList: freezed == goodsList ? _self._goodsList : goodsList // ignore: cast_nullable_to_non_nullable
as List<Goods>?,
  ));
}


}

// dart format on
