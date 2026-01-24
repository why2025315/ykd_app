// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_buy_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityBuyItem implements DiagnosticableTreeMixin {

 int? get id; int? get categoryId; String? get imgUrl; int? get addTime; String? get deleteFlag; String? get name; String? get groupBy; String? get homepageFlag; bool? get newProperty;
/// Create a copy of CommunityBuyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunityBuyItemCopyWith<CommunityBuyItem> get copyWith => _$CommunityBuyItemCopyWithImpl<CommunityBuyItem>(this as CommunityBuyItem, _$identity);

  /// Serializes this CommunityBuyItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommunityBuyItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('imgUrl', imgUrl))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('deleteFlag', deleteFlag))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupBy', groupBy))..add(DiagnosticsProperty('homepageFlag', homepageFlag))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommunityBuyItem&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.deleteFlag, deleteFlag) || other.deleteFlag == deleteFlag)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy)&&(identical(other.homepageFlag, homepageFlag) || other.homepageFlag == homepageFlag)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,imgUrl,addTime,deleteFlag,name,groupBy,homepageFlag,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommunityBuyItem(id: $id, categoryId: $categoryId, imgUrl: $imgUrl, addTime: $addTime, deleteFlag: $deleteFlag, name: $name, groupBy: $groupBy, homepageFlag: $homepageFlag, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $CommunityBuyItemCopyWith<$Res>  {
  factory $CommunityBuyItemCopyWith(CommunityBuyItem value, $Res Function(CommunityBuyItem) _then) = _$CommunityBuyItemCopyWithImpl;
@useResult
$Res call({
 int? id, int? categoryId, String? imgUrl, int? addTime, String? deleteFlag, String? name, String? groupBy, String? homepageFlag, bool? newProperty
});




}
/// @nodoc
class _$CommunityBuyItemCopyWithImpl<$Res>
    implements $CommunityBuyItemCopyWith<$Res> {
  _$CommunityBuyItemCopyWithImpl(this._self, this._then);

  final CommunityBuyItem _self;
  final $Res Function(CommunityBuyItem) _then;

/// Create a copy of CommunityBuyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? categoryId = freezed,Object? imgUrl = freezed,Object? addTime = freezed,Object? deleteFlag = freezed,Object? name = freezed,Object? groupBy = freezed,Object? homepageFlag = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,deleteFlag: freezed == deleteFlag ? _self.deleteFlag : deleteFlag // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,homepageFlag: freezed == homepageFlag ? _self.homepageFlag : homepageFlag // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommunityBuyItem].
extension CommunityBuyItemPatterns on CommunityBuyItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommunityBuyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommunityBuyItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommunityBuyItem value)  $default,){
final _that = this;
switch (_that) {
case _CommunityBuyItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommunityBuyItem value)?  $default,){
final _that = this;
switch (_that) {
case _CommunityBuyItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? categoryId,  String? imgUrl,  int? addTime,  String? deleteFlag,  String? name,  String? groupBy,  String? homepageFlag,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommunityBuyItem() when $default != null:
return $default(_that.id,_that.categoryId,_that.imgUrl,_that.addTime,_that.deleteFlag,_that.name,_that.groupBy,_that.homepageFlag,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? categoryId,  String? imgUrl,  int? addTime,  String? deleteFlag,  String? name,  String? groupBy,  String? homepageFlag,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _CommunityBuyItem():
return $default(_that.id,_that.categoryId,_that.imgUrl,_that.addTime,_that.deleteFlag,_that.name,_that.groupBy,_that.homepageFlag,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? categoryId,  String? imgUrl,  int? addTime,  String? deleteFlag,  String? name,  String? groupBy,  String? homepageFlag,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _CommunityBuyItem() when $default != null:
return $default(_that.id,_that.categoryId,_that.imgUrl,_that.addTime,_that.deleteFlag,_that.name,_that.groupBy,_that.homepageFlag,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommunityBuyItem with DiagnosticableTreeMixin implements CommunityBuyItem {
  const _CommunityBuyItem({this.id, this.categoryId, this.imgUrl, this.addTime, this.deleteFlag, this.name, this.groupBy, this.homepageFlag, this.newProperty});
  factory _CommunityBuyItem.fromJson(Map<String, dynamic> json) => _$CommunityBuyItemFromJson(json);

@override final  int? id;
@override final  int? categoryId;
@override final  String? imgUrl;
@override final  int? addTime;
@override final  String? deleteFlag;
@override final  String? name;
@override final  String? groupBy;
@override final  String? homepageFlag;
@override final  bool? newProperty;

/// Create a copy of CommunityBuyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunityBuyItemCopyWith<_CommunityBuyItem> get copyWith => __$CommunityBuyItemCopyWithImpl<_CommunityBuyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunityBuyItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommunityBuyItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('imgUrl', imgUrl))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('deleteFlag', deleteFlag))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('groupBy', groupBy))..add(DiagnosticsProperty('homepageFlag', homepageFlag))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommunityBuyItem&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.deleteFlag, deleteFlag) || other.deleteFlag == deleteFlag)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupBy, groupBy) || other.groupBy == groupBy)&&(identical(other.homepageFlag, homepageFlag) || other.homepageFlag == homepageFlag)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,imgUrl,addTime,deleteFlag,name,groupBy,homepageFlag,newProperty);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommunityBuyItem(id: $id, categoryId: $categoryId, imgUrl: $imgUrl, addTime: $addTime, deleteFlag: $deleteFlag, name: $name, groupBy: $groupBy, homepageFlag: $homepageFlag, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$CommunityBuyItemCopyWith<$Res> implements $CommunityBuyItemCopyWith<$Res> {
  factory _$CommunityBuyItemCopyWith(_CommunityBuyItem value, $Res Function(_CommunityBuyItem) _then) = __$CommunityBuyItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? categoryId, String? imgUrl, int? addTime, String? deleteFlag, String? name, String? groupBy, String? homepageFlag, bool? newProperty
});




}
/// @nodoc
class __$CommunityBuyItemCopyWithImpl<$Res>
    implements _$CommunityBuyItemCopyWith<$Res> {
  __$CommunityBuyItemCopyWithImpl(this._self, this._then);

  final _CommunityBuyItem _self;
  final $Res Function(_CommunityBuyItem) _then;

/// Create a copy of CommunityBuyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? categoryId = freezed,Object? imgUrl = freezed,Object? addTime = freezed,Object? deleteFlag = freezed,Object? name = freezed,Object? groupBy = freezed,Object? homepageFlag = freezed,Object? newProperty = freezed,}) {
  return _then(_CommunityBuyItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,deleteFlag: freezed == deleteFlag ? _self.deleteFlag : deleteFlag // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,groupBy: freezed == groupBy ? _self.groupBy : groupBy // ignore: cast_nullable_to_non_nullable
as String?,homepageFlag: freezed == homepageFlag ? _self.homepageFlag : homepageFlag // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
