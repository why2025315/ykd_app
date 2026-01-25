// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_detail_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsDetailApiModel {

 List<Specification>? get specificationList; List<Question>? get issue; int? get userHasCollect; List<dynamic>? get attribute; Goods? get info;
/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsDetailApiModelCopyWith<GoodsDetailApiModel> get copyWith => _$GoodsDetailApiModelCopyWithImpl<GoodsDetailApiModel>(this as GoodsDetailApiModel, _$identity);

  /// Serializes this GoodsDetailApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoodsDetailApiModel&&const DeepCollectionEquality().equals(other.specificationList, specificationList)&&const DeepCollectionEquality().equals(other.issue, issue)&&(identical(other.userHasCollect, userHasCollect) || other.userHasCollect == userHasCollect)&&const DeepCollectionEquality().equals(other.attribute, attribute)&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(specificationList),const DeepCollectionEquality().hash(issue),userHasCollect,const DeepCollectionEquality().hash(attribute),info);

@override
String toString() {
  return 'GoodsDetailApiModel(specificationList: $specificationList, issue: $issue, userHasCollect: $userHasCollect, attribute: $attribute, info: $info)';
}


}

/// @nodoc
abstract mixin class $GoodsDetailApiModelCopyWith<$Res>  {
  factory $GoodsDetailApiModelCopyWith(GoodsDetailApiModel value, $Res Function(GoodsDetailApiModel) _then) = _$GoodsDetailApiModelCopyWithImpl;
@useResult
$Res call({
 List<Specification>? specificationList, List<Question>? issue, int? userHasCollect, List<dynamic>? attribute, Goods? info
});


$GoodsCopyWith<$Res>? get info;

}
/// @nodoc
class _$GoodsDetailApiModelCopyWithImpl<$Res>
    implements $GoodsDetailApiModelCopyWith<$Res> {
  _$GoodsDetailApiModelCopyWithImpl(this._self, this._then);

  final GoodsDetailApiModel _self;
  final $Res Function(GoodsDetailApiModel) _then;

/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? specificationList = freezed,Object? issue = freezed,Object? userHasCollect = freezed,Object? attribute = freezed,Object? info = freezed,}) {
  return _then(_self.copyWith(
specificationList: freezed == specificationList ? _self.specificationList : specificationList // ignore: cast_nullable_to_non_nullable
as List<Specification>?,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as List<Question>?,userHasCollect: freezed == userHasCollect ? _self.userHasCollect : userHasCollect // ignore: cast_nullable_to_non_nullable
as int?,attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Goods?,
  ));
}
/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoodsCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $GoodsCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoodsDetailApiModel].
extension GoodsDetailApiModelPatterns on GoodsDetailApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoodsDetailApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoodsDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoodsDetailApiModel value)  $default,){
final _that = this;
switch (_that) {
case _GoodsDetailApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoodsDetailApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _GoodsDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Specification>? specificationList,  List<Question>? issue,  int? userHasCollect,  List<dynamic>? attribute,  Goods? info)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoodsDetailApiModel() when $default != null:
return $default(_that.specificationList,_that.issue,_that.userHasCollect,_that.attribute,_that.info);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Specification>? specificationList,  List<Question>? issue,  int? userHasCollect,  List<dynamic>? attribute,  Goods? info)  $default,) {final _that = this;
switch (_that) {
case _GoodsDetailApiModel():
return $default(_that.specificationList,_that.issue,_that.userHasCollect,_that.attribute,_that.info);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Specification>? specificationList,  List<Question>? issue,  int? userHasCollect,  List<dynamic>? attribute,  Goods? info)?  $default,) {final _that = this;
switch (_that) {
case _GoodsDetailApiModel() when $default != null:
return $default(_that.specificationList,_that.issue,_that.userHasCollect,_that.attribute,_that.info);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoodsDetailApiModel implements GoodsDetailApiModel {
  const _GoodsDetailApiModel({final  List<Specification>? specificationList, final  List<Question>? issue, this.userHasCollect, final  List<dynamic>? attribute, this.info}): _specificationList = specificationList,_issue = issue,_attribute = attribute;
  factory _GoodsDetailApiModel.fromJson(Map<String, dynamic> json) => _$GoodsDetailApiModelFromJson(json);

 final  List<Specification>? _specificationList;
@override List<Specification>? get specificationList {
  final value = _specificationList;
  if (value == null) return null;
  if (_specificationList is EqualUnmodifiableListView) return _specificationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Question>? _issue;
@override List<Question>? get issue {
  final value = _issue;
  if (value == null) return null;
  if (_issue is EqualUnmodifiableListView) return _issue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? userHasCollect;
 final  List<dynamic>? _attribute;
@override List<dynamic>? get attribute {
  final value = _attribute;
  if (value == null) return null;
  if (_attribute is EqualUnmodifiableListView) return _attribute;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Goods? info;

/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoodsDetailApiModelCopyWith<_GoodsDetailApiModel> get copyWith => __$GoodsDetailApiModelCopyWithImpl<_GoodsDetailApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoodsDetailApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoodsDetailApiModel&&const DeepCollectionEquality().equals(other._specificationList, _specificationList)&&const DeepCollectionEquality().equals(other._issue, _issue)&&(identical(other.userHasCollect, userHasCollect) || other.userHasCollect == userHasCollect)&&const DeepCollectionEquality().equals(other._attribute, _attribute)&&(identical(other.info, info) || other.info == info));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specificationList),const DeepCollectionEquality().hash(_issue),userHasCollect,const DeepCollectionEquality().hash(_attribute),info);

@override
String toString() {
  return 'GoodsDetailApiModel(specificationList: $specificationList, issue: $issue, userHasCollect: $userHasCollect, attribute: $attribute, info: $info)';
}


}

/// @nodoc
abstract mixin class _$GoodsDetailApiModelCopyWith<$Res> implements $GoodsDetailApiModelCopyWith<$Res> {
  factory _$GoodsDetailApiModelCopyWith(_GoodsDetailApiModel value, $Res Function(_GoodsDetailApiModel) _then) = __$GoodsDetailApiModelCopyWithImpl;
@override @useResult
$Res call({
 List<Specification>? specificationList, List<Question>? issue, int? userHasCollect, List<dynamic>? attribute, Goods? info
});


@override $GoodsCopyWith<$Res>? get info;

}
/// @nodoc
class __$GoodsDetailApiModelCopyWithImpl<$Res>
    implements _$GoodsDetailApiModelCopyWith<$Res> {
  __$GoodsDetailApiModelCopyWithImpl(this._self, this._then);

  final _GoodsDetailApiModel _self;
  final $Res Function(_GoodsDetailApiModel) _then;

/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? specificationList = freezed,Object? issue = freezed,Object? userHasCollect = freezed,Object? attribute = freezed,Object? info = freezed,}) {
  return _then(_GoodsDetailApiModel(
specificationList: freezed == specificationList ? _self._specificationList : specificationList // ignore: cast_nullable_to_non_nullable
as List<Specification>?,issue: freezed == issue ? _self._issue : issue // ignore: cast_nullable_to_non_nullable
as List<Question>?,userHasCollect: freezed == userHasCollect ? _self.userHasCollect : userHasCollect // ignore: cast_nullable_to_non_nullable
as int?,attribute: freezed == attribute ? _self._attribute : attribute // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Goods?,
  ));
}

/// Create a copy of GoodsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoodsCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $GoodsCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
