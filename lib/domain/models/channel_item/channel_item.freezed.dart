// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChannelItem implements DiagnosticableTreeMixin {

 int? get id; int? get shopId; String? get name; String? get keywords; String? get frontDesc; int? get parentId; int? get sortOrder; int? get showIndex; int? get isShow; String? get bannerUrl; String? get iconUrl; String? get imgUrl; String? get wapBannerUrl; String? get level; int? get type; String? get frontName; int? get addTime; String? get status; List<int>? get subCategoryList; bool? get newProperty;
/// Create a copy of ChannelItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelItemCopyWith<ChannelItem> get copyWith => _$ChannelItemCopyWithImpl<ChannelItem>(this as ChannelItem, _$identity);

  /// Serializes this ChannelItem to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChannelItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('shopId', shopId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('keywords', keywords))..add(DiagnosticsProperty('frontDesc', frontDesc))..add(DiagnosticsProperty('parentId', parentId))..add(DiagnosticsProperty('sortOrder', sortOrder))..add(DiagnosticsProperty('showIndex', showIndex))..add(DiagnosticsProperty('isShow', isShow))..add(DiagnosticsProperty('bannerUrl', bannerUrl))..add(DiagnosticsProperty('iconUrl', iconUrl))..add(DiagnosticsProperty('imgUrl', imgUrl))..add(DiagnosticsProperty('wapBannerUrl', wapBannerUrl))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('frontName', frontName))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('subCategoryList', subCategoryList))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelItem&&(identical(other.id, id) || other.id == id)&&(identical(other.shopId, shopId) || other.shopId == shopId)&&(identical(other.name, name) || other.name == name)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.frontDesc, frontDesc) || other.frontDesc == frontDesc)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.showIndex, showIndex) || other.showIndex == showIndex)&&(identical(other.isShow, isShow) || other.isShow == isShow)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.wapBannerUrl, wapBannerUrl) || other.wapBannerUrl == wapBannerUrl)&&(identical(other.level, level) || other.level == level)&&(identical(other.type, type) || other.type == type)&&(identical(other.frontName, frontName) || other.frontName == frontName)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.subCategoryList, subCategoryList)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,shopId,name,keywords,frontDesc,parentId,sortOrder,showIndex,isShow,bannerUrl,iconUrl,imgUrl,wapBannerUrl,level,type,frontName,addTime,status,const DeepCollectionEquality().hash(subCategoryList),newProperty]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChannelItem(id: $id, shopId: $shopId, name: $name, keywords: $keywords, frontDesc: $frontDesc, parentId: $parentId, sortOrder: $sortOrder, showIndex: $showIndex, isShow: $isShow, bannerUrl: $bannerUrl, iconUrl: $iconUrl, imgUrl: $imgUrl, wapBannerUrl: $wapBannerUrl, level: $level, type: $type, frontName: $frontName, addTime: $addTime, status: $status, subCategoryList: $subCategoryList, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $ChannelItemCopyWith<$Res>  {
  factory $ChannelItemCopyWith(ChannelItem value, $Res Function(ChannelItem) _then) = _$ChannelItemCopyWithImpl;
@useResult
$Res call({
 int? id, int? shopId, String? name, String? keywords, String? frontDesc, int? parentId, int? sortOrder, int? showIndex, int? isShow, String? bannerUrl, String? iconUrl, String? imgUrl, String? wapBannerUrl, String? level, int? type, String? frontName, int? addTime, String? status, List<int>? subCategoryList, bool? newProperty
});




}
/// @nodoc
class _$ChannelItemCopyWithImpl<$Res>
    implements $ChannelItemCopyWith<$Res> {
  _$ChannelItemCopyWithImpl(this._self, this._then);

  final ChannelItem _self;
  final $Res Function(ChannelItem) _then;

/// Create a copy of ChannelItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? shopId = freezed,Object? name = freezed,Object? keywords = freezed,Object? frontDesc = freezed,Object? parentId = freezed,Object? sortOrder = freezed,Object? showIndex = freezed,Object? isShow = freezed,Object? bannerUrl = freezed,Object? iconUrl = freezed,Object? imgUrl = freezed,Object? wapBannerUrl = freezed,Object? level = freezed,Object? type = freezed,Object? frontName = freezed,Object? addTime = freezed,Object? status = freezed,Object? subCategoryList = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,shopId: freezed == shopId ? _self.shopId : shopId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String?,frontDesc: freezed == frontDesc ? _self.frontDesc : frontDesc // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,showIndex: freezed == showIndex ? _self.showIndex : showIndex // ignore: cast_nullable_to_non_nullable
as int?,isShow: freezed == isShow ? _self.isShow : isShow // ignore: cast_nullable_to_non_nullable
as int?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,wapBannerUrl: freezed == wapBannerUrl ? _self.wapBannerUrl : wapBannerUrl // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,frontName: freezed == frontName ? _self.frontName : frontName // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,subCategoryList: freezed == subCategoryList ? _self.subCategoryList : subCategoryList // ignore: cast_nullable_to_non_nullable
as List<int>?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelItem].
extension ChannelItemPatterns on ChannelItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelItem value)  $default,){
final _that = this;
switch (_that) {
case _ChannelItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelItem value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? shopId,  String? name,  String? keywords,  String? frontDesc,  int? parentId,  int? sortOrder,  int? showIndex,  int? isShow,  String? bannerUrl,  String? iconUrl,  String? imgUrl,  String? wapBannerUrl,  String? level,  int? type,  String? frontName,  int? addTime,  String? status,  List<int>? subCategoryList,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelItem() when $default != null:
return $default(_that.id,_that.shopId,_that.name,_that.keywords,_that.frontDesc,_that.parentId,_that.sortOrder,_that.showIndex,_that.isShow,_that.bannerUrl,_that.iconUrl,_that.imgUrl,_that.wapBannerUrl,_that.level,_that.type,_that.frontName,_that.addTime,_that.status,_that.subCategoryList,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? shopId,  String? name,  String? keywords,  String? frontDesc,  int? parentId,  int? sortOrder,  int? showIndex,  int? isShow,  String? bannerUrl,  String? iconUrl,  String? imgUrl,  String? wapBannerUrl,  String? level,  int? type,  String? frontName,  int? addTime,  String? status,  List<int>? subCategoryList,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _ChannelItem():
return $default(_that.id,_that.shopId,_that.name,_that.keywords,_that.frontDesc,_that.parentId,_that.sortOrder,_that.showIndex,_that.isShow,_that.bannerUrl,_that.iconUrl,_that.imgUrl,_that.wapBannerUrl,_that.level,_that.type,_that.frontName,_that.addTime,_that.status,_that.subCategoryList,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? shopId,  String? name,  String? keywords,  String? frontDesc,  int? parentId,  int? sortOrder,  int? showIndex,  int? isShow,  String? bannerUrl,  String? iconUrl,  String? imgUrl,  String? wapBannerUrl,  String? level,  int? type,  String? frontName,  int? addTime,  String? status,  List<int>? subCategoryList,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _ChannelItem() when $default != null:
return $default(_that.id,_that.shopId,_that.name,_that.keywords,_that.frontDesc,_that.parentId,_that.sortOrder,_that.showIndex,_that.isShow,_that.bannerUrl,_that.iconUrl,_that.imgUrl,_that.wapBannerUrl,_that.level,_that.type,_that.frontName,_that.addTime,_that.status,_that.subCategoryList,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChannelItem with DiagnosticableTreeMixin implements ChannelItem {
  const _ChannelItem({this.id, this.shopId, this.name, this.keywords, this.frontDesc, this.parentId, this.sortOrder, this.showIndex, this.isShow, this.bannerUrl, this.iconUrl, this.imgUrl, this.wapBannerUrl, this.level, this.type, this.frontName, this.addTime, this.status, final  List<int>? subCategoryList, this.newProperty}): _subCategoryList = subCategoryList;
  factory _ChannelItem.fromJson(Map<String, dynamic> json) => _$ChannelItemFromJson(json);

@override final  int? id;
@override final  int? shopId;
@override final  String? name;
@override final  String? keywords;
@override final  String? frontDesc;
@override final  int? parentId;
@override final  int? sortOrder;
@override final  int? showIndex;
@override final  int? isShow;
@override final  String? bannerUrl;
@override final  String? iconUrl;
@override final  String? imgUrl;
@override final  String? wapBannerUrl;
@override final  String? level;
@override final  int? type;
@override final  String? frontName;
@override final  int? addTime;
@override final  String? status;
 final  List<int>? _subCategoryList;
@override List<int>? get subCategoryList {
  final value = _subCategoryList;
  if (value == null) return null;
  if (_subCategoryList is EqualUnmodifiableListView) return _subCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? newProperty;

/// Create a copy of ChannelItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelItemCopyWith<_ChannelItem> get copyWith => __$ChannelItemCopyWithImpl<_ChannelItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelItemToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ChannelItem'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('shopId', shopId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('keywords', keywords))..add(DiagnosticsProperty('frontDesc', frontDesc))..add(DiagnosticsProperty('parentId', parentId))..add(DiagnosticsProperty('sortOrder', sortOrder))..add(DiagnosticsProperty('showIndex', showIndex))..add(DiagnosticsProperty('isShow', isShow))..add(DiagnosticsProperty('bannerUrl', bannerUrl))..add(DiagnosticsProperty('iconUrl', iconUrl))..add(DiagnosticsProperty('imgUrl', imgUrl))..add(DiagnosticsProperty('wapBannerUrl', wapBannerUrl))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('frontName', frontName))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('subCategoryList', subCategoryList))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelItem&&(identical(other.id, id) || other.id == id)&&(identical(other.shopId, shopId) || other.shopId == shopId)&&(identical(other.name, name) || other.name == name)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.frontDesc, frontDesc) || other.frontDesc == frontDesc)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.showIndex, showIndex) || other.showIndex == showIndex)&&(identical(other.isShow, isShow) || other.isShow == isShow)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.wapBannerUrl, wapBannerUrl) || other.wapBannerUrl == wapBannerUrl)&&(identical(other.level, level) || other.level == level)&&(identical(other.type, type) || other.type == type)&&(identical(other.frontName, frontName) || other.frontName == frontName)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._subCategoryList, _subCategoryList)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,shopId,name,keywords,frontDesc,parentId,sortOrder,showIndex,isShow,bannerUrl,iconUrl,imgUrl,wapBannerUrl,level,type,frontName,addTime,status,const DeepCollectionEquality().hash(_subCategoryList),newProperty]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ChannelItem(id: $id, shopId: $shopId, name: $name, keywords: $keywords, frontDesc: $frontDesc, parentId: $parentId, sortOrder: $sortOrder, showIndex: $showIndex, isShow: $isShow, bannerUrl: $bannerUrl, iconUrl: $iconUrl, imgUrl: $imgUrl, wapBannerUrl: $wapBannerUrl, level: $level, type: $type, frontName: $frontName, addTime: $addTime, status: $status, subCategoryList: $subCategoryList, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$ChannelItemCopyWith<$Res> implements $ChannelItemCopyWith<$Res> {
  factory _$ChannelItemCopyWith(_ChannelItem value, $Res Function(_ChannelItem) _then) = __$ChannelItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? shopId, String? name, String? keywords, String? frontDesc, int? parentId, int? sortOrder, int? showIndex, int? isShow, String? bannerUrl, String? iconUrl, String? imgUrl, String? wapBannerUrl, String? level, int? type, String? frontName, int? addTime, String? status, List<int>? subCategoryList, bool? newProperty
});




}
/// @nodoc
class __$ChannelItemCopyWithImpl<$Res>
    implements _$ChannelItemCopyWith<$Res> {
  __$ChannelItemCopyWithImpl(this._self, this._then);

  final _ChannelItem _self;
  final $Res Function(_ChannelItem) _then;

/// Create a copy of ChannelItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? shopId = freezed,Object? name = freezed,Object? keywords = freezed,Object? frontDesc = freezed,Object? parentId = freezed,Object? sortOrder = freezed,Object? showIndex = freezed,Object? isShow = freezed,Object? bannerUrl = freezed,Object? iconUrl = freezed,Object? imgUrl = freezed,Object? wapBannerUrl = freezed,Object? level = freezed,Object? type = freezed,Object? frontName = freezed,Object? addTime = freezed,Object? status = freezed,Object? subCategoryList = freezed,Object? newProperty = freezed,}) {
  return _then(_ChannelItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,shopId: freezed == shopId ? _self.shopId : shopId // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String?,frontDesc: freezed == frontDesc ? _self.frontDesc : frontDesc // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,showIndex: freezed == showIndex ? _self.showIndex : showIndex // ignore: cast_nullable_to_non_nullable
as int?,isShow: freezed == isShow ? _self.isShow : isShow // ignore: cast_nullable_to_non_nullable
as int?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,wapBannerUrl: freezed == wapBannerUrl ? _self.wapBannerUrl : wapBannerUrl // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int?,frontName: freezed == frontName ? _self.frontName : frontName // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,subCategoryList: freezed == subCategoryList ? _self._subCategoryList : subCategoryList // ignore: cast_nullable_to_non_nullable
as List<int>?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
