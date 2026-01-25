// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Goods _$GoodsFromJson(
  Map<String, dynamic> json
) {
    return _goods.fromJson(
      json
    );
}

/// @nodoc
mixin _$Goods implements DiagnosticableTreeMixin {

 int? get id; int? get brandId; int? get categoryId; String? get brandName; String? get categoryName; String? get goodsSn; String? get name; List<String>? get gallery; String? get keywords; String? get goodsBrief; int? get isOnSale; int? get sortOrder; int? get counterPrice; bool? get isNewly; String? get primaryPicUrl; String? get listPicUrl; int? get isHot; String? get goodsUnit; int? get retailPrice; String? get goodsDesc; String? get attributes; int? get addTime; String? get status; int? get salesNum; String? get integralper; int? get homePageFlag; int? get homePageCateCode; String? get homePageCateDesc; int? get stockNum; int? get activityFlag; int? get activityId; int? get goodsType; String? get goodsOwnerMobile; String? get goodsOwnerId; String? get specificationValue; bool? get newProperty;
/// Create a copy of Goods
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoodsCopyWith<Goods> get copyWith => _$GoodsCopyWithImpl<Goods>(this as Goods, _$identity);

  /// Serializes this Goods to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Goods'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('brandId', brandId))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('brandName', brandName))..add(DiagnosticsProperty('categoryName', categoryName))..add(DiagnosticsProperty('goodsSn', goodsSn))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('gallery', gallery))..add(DiagnosticsProperty('keywords', keywords))..add(DiagnosticsProperty('goodsBrief', goodsBrief))..add(DiagnosticsProperty('isOnSale', isOnSale))..add(DiagnosticsProperty('sortOrder', sortOrder))..add(DiagnosticsProperty('counterPrice', counterPrice))..add(DiagnosticsProperty('isNewly', isNewly))..add(DiagnosticsProperty('primaryPicUrl', primaryPicUrl))..add(DiagnosticsProperty('listPicUrl', listPicUrl))..add(DiagnosticsProperty('isHot', isHot))..add(DiagnosticsProperty('goodsUnit', goodsUnit))..add(DiagnosticsProperty('retailPrice', retailPrice))..add(DiagnosticsProperty('goodsDesc', goodsDesc))..add(DiagnosticsProperty('attributes', attributes))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('salesNum', salesNum))..add(DiagnosticsProperty('integralper', integralper))..add(DiagnosticsProperty('homePageFlag', homePageFlag))..add(DiagnosticsProperty('homePageCateCode', homePageCateCode))..add(DiagnosticsProperty('homePageCateDesc', homePageCateDesc))..add(DiagnosticsProperty('stockNum', stockNum))..add(DiagnosticsProperty('activityFlag', activityFlag))..add(DiagnosticsProperty('activityId', activityId))..add(DiagnosticsProperty('goodsType', goodsType))..add(DiagnosticsProperty('goodsOwnerMobile', goodsOwnerMobile))..add(DiagnosticsProperty('goodsOwnerId', goodsOwnerId))..add(DiagnosticsProperty('specificationValue', specificationValue))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Goods&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.goodsSn, goodsSn) || other.goodsSn == goodsSn)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.goodsBrief, goodsBrief) || other.goodsBrief == goodsBrief)&&(identical(other.isOnSale, isOnSale) || other.isOnSale == isOnSale)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.counterPrice, counterPrice) || other.counterPrice == counterPrice)&&(identical(other.isNewly, isNewly) || other.isNewly == isNewly)&&(identical(other.primaryPicUrl, primaryPicUrl) || other.primaryPicUrl == primaryPicUrl)&&(identical(other.listPicUrl, listPicUrl) || other.listPicUrl == listPicUrl)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.goodsUnit, goodsUnit) || other.goodsUnit == goodsUnit)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.goodsDesc, goodsDesc) || other.goodsDesc == goodsDesc)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.salesNum, salesNum) || other.salesNum == salesNum)&&(identical(other.integralper, integralper) || other.integralper == integralper)&&(identical(other.homePageFlag, homePageFlag) || other.homePageFlag == homePageFlag)&&(identical(other.homePageCateCode, homePageCateCode) || other.homePageCateCode == homePageCateCode)&&(identical(other.homePageCateDesc, homePageCateDesc) || other.homePageCateDesc == homePageCateDesc)&&(identical(other.stockNum, stockNum) || other.stockNum == stockNum)&&(identical(other.activityFlag, activityFlag) || other.activityFlag == activityFlag)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.goodsType, goodsType) || other.goodsType == goodsType)&&(identical(other.goodsOwnerMobile, goodsOwnerMobile) || other.goodsOwnerMobile == goodsOwnerMobile)&&(identical(other.goodsOwnerId, goodsOwnerId) || other.goodsOwnerId == goodsOwnerId)&&(identical(other.specificationValue, specificationValue) || other.specificationValue == specificationValue)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,brandId,categoryId,brandName,categoryName,goodsSn,name,const DeepCollectionEquality().hash(gallery),keywords,goodsBrief,isOnSale,sortOrder,counterPrice,isNewly,primaryPicUrl,listPicUrl,isHot,goodsUnit,retailPrice,goodsDesc,attributes,addTime,status,salesNum,integralper,homePageFlag,homePageCateCode,homePageCateDesc,stockNum,activityFlag,activityId,goodsType,goodsOwnerMobile,goodsOwnerId,specificationValue,newProperty]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Goods(id: $id, brandId: $brandId, categoryId: $categoryId, brandName: $brandName, categoryName: $categoryName, goodsSn: $goodsSn, name: $name, gallery: $gallery, keywords: $keywords, goodsBrief: $goodsBrief, isOnSale: $isOnSale, sortOrder: $sortOrder, counterPrice: $counterPrice, isNewly: $isNewly, primaryPicUrl: $primaryPicUrl, listPicUrl: $listPicUrl, isHot: $isHot, goodsUnit: $goodsUnit, retailPrice: $retailPrice, goodsDesc: $goodsDesc, attributes: $attributes, addTime: $addTime, status: $status, salesNum: $salesNum, integralper: $integralper, homePageFlag: $homePageFlag, homePageCateCode: $homePageCateCode, homePageCateDesc: $homePageCateDesc, stockNum: $stockNum, activityFlag: $activityFlag, activityId: $activityId, goodsType: $goodsType, goodsOwnerMobile: $goodsOwnerMobile, goodsOwnerId: $goodsOwnerId, specificationValue: $specificationValue, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class $GoodsCopyWith<$Res>  {
  factory $GoodsCopyWith(Goods value, $Res Function(Goods) _then) = _$GoodsCopyWithImpl;
@useResult
$Res call({
 int? id, int? brandId, int? categoryId, String? brandName, String? categoryName, String? goodsSn, String? name, List<String>? gallery, String? keywords, String? goodsBrief, int? isOnSale, int? sortOrder, int? counterPrice, bool? isNewly, String? primaryPicUrl, String? listPicUrl, int? isHot, String? goodsUnit, int? retailPrice, String? goodsDesc, String? attributes, int? addTime, String? status, int? salesNum, String? integralper, int? homePageFlag, int? homePageCateCode, String? homePageCateDesc, int? stockNum, int? activityFlag, int? activityId, int? goodsType, String? goodsOwnerMobile, String? goodsOwnerId, String? specificationValue, bool? newProperty
});




}
/// @nodoc
class _$GoodsCopyWithImpl<$Res>
    implements $GoodsCopyWith<$Res> {
  _$GoodsCopyWithImpl(this._self, this._then);

  final Goods _self;
  final $Res Function(Goods) _then;

/// Create a copy of Goods
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? brandId = freezed,Object? categoryId = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? goodsSn = freezed,Object? name = freezed,Object? gallery = freezed,Object? keywords = freezed,Object? goodsBrief = freezed,Object? isOnSale = freezed,Object? sortOrder = freezed,Object? counterPrice = freezed,Object? isNewly = freezed,Object? primaryPicUrl = freezed,Object? listPicUrl = freezed,Object? isHot = freezed,Object? goodsUnit = freezed,Object? retailPrice = freezed,Object? goodsDesc = freezed,Object? attributes = freezed,Object? addTime = freezed,Object? status = freezed,Object? salesNum = freezed,Object? integralper = freezed,Object? homePageFlag = freezed,Object? homePageCateCode = freezed,Object? homePageCateDesc = freezed,Object? stockNum = freezed,Object? activityFlag = freezed,Object? activityId = freezed,Object? goodsType = freezed,Object? goodsOwnerMobile = freezed,Object? goodsOwnerId = freezed,Object? specificationValue = freezed,Object? newProperty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,goodsSn: freezed == goodsSn ? _self.goodsSn : goodsSn // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,gallery: freezed == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String?,goodsBrief: freezed == goodsBrief ? _self.goodsBrief : goodsBrief // ignore: cast_nullable_to_non_nullable
as String?,isOnSale: freezed == isOnSale ? _self.isOnSale : isOnSale // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,counterPrice: freezed == counterPrice ? _self.counterPrice : counterPrice // ignore: cast_nullable_to_non_nullable
as int?,isNewly: freezed == isNewly ? _self.isNewly : isNewly // ignore: cast_nullable_to_non_nullable
as bool?,primaryPicUrl: freezed == primaryPicUrl ? _self.primaryPicUrl : primaryPicUrl // ignore: cast_nullable_to_non_nullable
as String?,listPicUrl: freezed == listPicUrl ? _self.listPicUrl : listPicUrl // ignore: cast_nullable_to_non_nullable
as String?,isHot: freezed == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as int?,goodsUnit: freezed == goodsUnit ? _self.goodsUnit : goodsUnit // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,goodsDesc: freezed == goodsDesc ? _self.goodsDesc : goodsDesc // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,salesNum: freezed == salesNum ? _self.salesNum : salesNum // ignore: cast_nullable_to_non_nullable
as int?,integralper: freezed == integralper ? _self.integralper : integralper // ignore: cast_nullable_to_non_nullable
as String?,homePageFlag: freezed == homePageFlag ? _self.homePageFlag : homePageFlag // ignore: cast_nullable_to_non_nullable
as int?,homePageCateCode: freezed == homePageCateCode ? _self.homePageCateCode : homePageCateCode // ignore: cast_nullable_to_non_nullable
as int?,homePageCateDesc: freezed == homePageCateDesc ? _self.homePageCateDesc : homePageCateDesc // ignore: cast_nullable_to_non_nullable
as String?,stockNum: freezed == stockNum ? _self.stockNum : stockNum // ignore: cast_nullable_to_non_nullable
as int?,activityFlag: freezed == activityFlag ? _self.activityFlag : activityFlag // ignore: cast_nullable_to_non_nullable
as int?,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,goodsType: freezed == goodsType ? _self.goodsType : goodsType // ignore: cast_nullable_to_non_nullable
as int?,goodsOwnerMobile: freezed == goodsOwnerMobile ? _self.goodsOwnerMobile : goodsOwnerMobile // ignore: cast_nullable_to_non_nullable
as String?,goodsOwnerId: freezed == goodsOwnerId ? _self.goodsOwnerId : goodsOwnerId // ignore: cast_nullable_to_non_nullable
as String?,specificationValue: freezed == specificationValue ? _self.specificationValue : specificationValue // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Goods].
extension GoodsPatterns on Goods {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _goods value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _goods() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _goods value)  $default,){
final _that = this;
switch (_that) {
case _goods():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _goods value)?  $default,){
final _that = this;
switch (_that) {
case _goods() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? brandId,  int? categoryId,  String? brandName,  String? categoryName,  String? goodsSn,  String? name,  List<String>? gallery,  String? keywords,  String? goodsBrief,  int? isOnSale,  int? sortOrder,  int? counterPrice,  bool? isNewly,  String? primaryPicUrl,  String? listPicUrl,  int? isHot,  String? goodsUnit,  int? retailPrice,  String? goodsDesc,  String? attributes,  int? addTime,  String? status,  int? salesNum,  String? integralper,  int? homePageFlag,  int? homePageCateCode,  String? homePageCateDesc,  int? stockNum,  int? activityFlag,  int? activityId,  int? goodsType,  String? goodsOwnerMobile,  String? goodsOwnerId,  String? specificationValue,  bool? newProperty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _goods() when $default != null:
return $default(_that.id,_that.brandId,_that.categoryId,_that.brandName,_that.categoryName,_that.goodsSn,_that.name,_that.gallery,_that.keywords,_that.goodsBrief,_that.isOnSale,_that.sortOrder,_that.counterPrice,_that.isNewly,_that.primaryPicUrl,_that.listPicUrl,_that.isHot,_that.goodsUnit,_that.retailPrice,_that.goodsDesc,_that.attributes,_that.addTime,_that.status,_that.salesNum,_that.integralper,_that.homePageFlag,_that.homePageCateCode,_that.homePageCateDesc,_that.stockNum,_that.activityFlag,_that.activityId,_that.goodsType,_that.goodsOwnerMobile,_that.goodsOwnerId,_that.specificationValue,_that.newProperty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? brandId,  int? categoryId,  String? brandName,  String? categoryName,  String? goodsSn,  String? name,  List<String>? gallery,  String? keywords,  String? goodsBrief,  int? isOnSale,  int? sortOrder,  int? counterPrice,  bool? isNewly,  String? primaryPicUrl,  String? listPicUrl,  int? isHot,  String? goodsUnit,  int? retailPrice,  String? goodsDesc,  String? attributes,  int? addTime,  String? status,  int? salesNum,  String? integralper,  int? homePageFlag,  int? homePageCateCode,  String? homePageCateDesc,  int? stockNum,  int? activityFlag,  int? activityId,  int? goodsType,  String? goodsOwnerMobile,  String? goodsOwnerId,  String? specificationValue,  bool? newProperty)  $default,) {final _that = this;
switch (_that) {
case _goods():
return $default(_that.id,_that.brandId,_that.categoryId,_that.brandName,_that.categoryName,_that.goodsSn,_that.name,_that.gallery,_that.keywords,_that.goodsBrief,_that.isOnSale,_that.sortOrder,_that.counterPrice,_that.isNewly,_that.primaryPicUrl,_that.listPicUrl,_that.isHot,_that.goodsUnit,_that.retailPrice,_that.goodsDesc,_that.attributes,_that.addTime,_that.status,_that.salesNum,_that.integralper,_that.homePageFlag,_that.homePageCateCode,_that.homePageCateDesc,_that.stockNum,_that.activityFlag,_that.activityId,_that.goodsType,_that.goodsOwnerMobile,_that.goodsOwnerId,_that.specificationValue,_that.newProperty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? brandId,  int? categoryId,  String? brandName,  String? categoryName,  String? goodsSn,  String? name,  List<String>? gallery,  String? keywords,  String? goodsBrief,  int? isOnSale,  int? sortOrder,  int? counterPrice,  bool? isNewly,  String? primaryPicUrl,  String? listPicUrl,  int? isHot,  String? goodsUnit,  int? retailPrice,  String? goodsDesc,  String? attributes,  int? addTime,  String? status,  int? salesNum,  String? integralper,  int? homePageFlag,  int? homePageCateCode,  String? homePageCateDesc,  int? stockNum,  int? activityFlag,  int? activityId,  int? goodsType,  String? goodsOwnerMobile,  String? goodsOwnerId,  String? specificationValue,  bool? newProperty)?  $default,) {final _that = this;
switch (_that) {
case _goods() when $default != null:
return $default(_that.id,_that.brandId,_that.categoryId,_that.brandName,_that.categoryName,_that.goodsSn,_that.name,_that.gallery,_that.keywords,_that.goodsBrief,_that.isOnSale,_that.sortOrder,_that.counterPrice,_that.isNewly,_that.primaryPicUrl,_that.listPicUrl,_that.isHot,_that.goodsUnit,_that.retailPrice,_that.goodsDesc,_that.attributes,_that.addTime,_that.status,_that.salesNum,_that.integralper,_that.homePageFlag,_that.homePageCateCode,_that.homePageCateDesc,_that.stockNum,_that.activityFlag,_that.activityId,_that.goodsType,_that.goodsOwnerMobile,_that.goodsOwnerId,_that.specificationValue,_that.newProperty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _goods with DiagnosticableTreeMixin implements Goods {
  const _goods({this.id, this.brandId, this.categoryId, this.brandName, this.categoryName, this.goodsSn, this.name, final  List<String>? gallery, this.keywords, this.goodsBrief, this.isOnSale, this.sortOrder, this.counterPrice, this.isNewly, this.primaryPicUrl, this.listPicUrl, this.isHot, this.goodsUnit, this.retailPrice, this.goodsDesc, this.attributes, this.addTime, this.status, this.salesNum, this.integralper, this.homePageFlag, this.homePageCateCode, this.homePageCateDesc, this.stockNum, this.activityFlag, this.activityId, this.goodsType, this.goodsOwnerMobile, this.goodsOwnerId, this.specificationValue, this.newProperty}): _gallery = gallery;
  factory _goods.fromJson(Map<String, dynamic> json) => _$goodsFromJson(json);

@override final  int? id;
@override final  int? brandId;
@override final  int? categoryId;
@override final  String? brandName;
@override final  String? categoryName;
@override final  String? goodsSn;
@override final  String? name;
 final  List<String>? _gallery;
@override List<String>? get gallery {
  final value = _gallery;
  if (value == null) return null;
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? keywords;
@override final  String? goodsBrief;
@override final  int? isOnSale;
@override final  int? sortOrder;
@override final  int? counterPrice;
@override final  bool? isNewly;
@override final  String? primaryPicUrl;
@override final  String? listPicUrl;
@override final  int? isHot;
@override final  String? goodsUnit;
@override final  int? retailPrice;
@override final  String? goodsDesc;
@override final  String? attributes;
@override final  int? addTime;
@override final  String? status;
@override final  int? salesNum;
@override final  String? integralper;
@override final  int? homePageFlag;
@override final  int? homePageCateCode;
@override final  String? homePageCateDesc;
@override final  int? stockNum;
@override final  int? activityFlag;
@override final  int? activityId;
@override final  int? goodsType;
@override final  String? goodsOwnerMobile;
@override final  String? goodsOwnerId;
@override final  String? specificationValue;
@override final  bool? newProperty;

/// Create a copy of Goods
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$goodsCopyWith<_goods> get copyWith => __$goodsCopyWithImpl<_goods>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$goodsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Goods'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('brandId', brandId))..add(DiagnosticsProperty('categoryId', categoryId))..add(DiagnosticsProperty('brandName', brandName))..add(DiagnosticsProperty('categoryName', categoryName))..add(DiagnosticsProperty('goodsSn', goodsSn))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('gallery', gallery))..add(DiagnosticsProperty('keywords', keywords))..add(DiagnosticsProperty('goodsBrief', goodsBrief))..add(DiagnosticsProperty('isOnSale', isOnSale))..add(DiagnosticsProperty('sortOrder', sortOrder))..add(DiagnosticsProperty('counterPrice', counterPrice))..add(DiagnosticsProperty('isNewly', isNewly))..add(DiagnosticsProperty('primaryPicUrl', primaryPicUrl))..add(DiagnosticsProperty('listPicUrl', listPicUrl))..add(DiagnosticsProperty('isHot', isHot))..add(DiagnosticsProperty('goodsUnit', goodsUnit))..add(DiagnosticsProperty('retailPrice', retailPrice))..add(DiagnosticsProperty('goodsDesc', goodsDesc))..add(DiagnosticsProperty('attributes', attributes))..add(DiagnosticsProperty('addTime', addTime))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('salesNum', salesNum))..add(DiagnosticsProperty('integralper', integralper))..add(DiagnosticsProperty('homePageFlag', homePageFlag))..add(DiagnosticsProperty('homePageCateCode', homePageCateCode))..add(DiagnosticsProperty('homePageCateDesc', homePageCateDesc))..add(DiagnosticsProperty('stockNum', stockNum))..add(DiagnosticsProperty('activityFlag', activityFlag))..add(DiagnosticsProperty('activityId', activityId))..add(DiagnosticsProperty('goodsType', goodsType))..add(DiagnosticsProperty('goodsOwnerMobile', goodsOwnerMobile))..add(DiagnosticsProperty('goodsOwnerId', goodsOwnerId))..add(DiagnosticsProperty('specificationValue', specificationValue))..add(DiagnosticsProperty('newProperty', newProperty));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _goods&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.goodsSn, goodsSn) || other.goodsSn == goodsSn)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&(identical(other.keywords, keywords) || other.keywords == keywords)&&(identical(other.goodsBrief, goodsBrief) || other.goodsBrief == goodsBrief)&&(identical(other.isOnSale, isOnSale) || other.isOnSale == isOnSale)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.counterPrice, counterPrice) || other.counterPrice == counterPrice)&&(identical(other.isNewly, isNewly) || other.isNewly == isNewly)&&(identical(other.primaryPicUrl, primaryPicUrl) || other.primaryPicUrl == primaryPicUrl)&&(identical(other.listPicUrl, listPicUrl) || other.listPicUrl == listPicUrl)&&(identical(other.isHot, isHot) || other.isHot == isHot)&&(identical(other.goodsUnit, goodsUnit) || other.goodsUnit == goodsUnit)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.goodsDesc, goodsDesc) || other.goodsDesc == goodsDesc)&&(identical(other.attributes, attributes) || other.attributes == attributes)&&(identical(other.addTime, addTime) || other.addTime == addTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.salesNum, salesNum) || other.salesNum == salesNum)&&(identical(other.integralper, integralper) || other.integralper == integralper)&&(identical(other.homePageFlag, homePageFlag) || other.homePageFlag == homePageFlag)&&(identical(other.homePageCateCode, homePageCateCode) || other.homePageCateCode == homePageCateCode)&&(identical(other.homePageCateDesc, homePageCateDesc) || other.homePageCateDesc == homePageCateDesc)&&(identical(other.stockNum, stockNum) || other.stockNum == stockNum)&&(identical(other.activityFlag, activityFlag) || other.activityFlag == activityFlag)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.goodsType, goodsType) || other.goodsType == goodsType)&&(identical(other.goodsOwnerMobile, goodsOwnerMobile) || other.goodsOwnerMobile == goodsOwnerMobile)&&(identical(other.goodsOwnerId, goodsOwnerId) || other.goodsOwnerId == goodsOwnerId)&&(identical(other.specificationValue, specificationValue) || other.specificationValue == specificationValue)&&(identical(other.newProperty, newProperty) || other.newProperty == newProperty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,brandId,categoryId,brandName,categoryName,goodsSn,name,const DeepCollectionEquality().hash(_gallery),keywords,goodsBrief,isOnSale,sortOrder,counterPrice,isNewly,primaryPicUrl,listPicUrl,isHot,goodsUnit,retailPrice,goodsDesc,attributes,addTime,status,salesNum,integralper,homePageFlag,homePageCateCode,homePageCateDesc,stockNum,activityFlag,activityId,goodsType,goodsOwnerMobile,goodsOwnerId,specificationValue,newProperty]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Goods(id: $id, brandId: $brandId, categoryId: $categoryId, brandName: $brandName, categoryName: $categoryName, goodsSn: $goodsSn, name: $name, gallery: $gallery, keywords: $keywords, goodsBrief: $goodsBrief, isOnSale: $isOnSale, sortOrder: $sortOrder, counterPrice: $counterPrice, isNewly: $isNewly, primaryPicUrl: $primaryPicUrl, listPicUrl: $listPicUrl, isHot: $isHot, goodsUnit: $goodsUnit, retailPrice: $retailPrice, goodsDesc: $goodsDesc, attributes: $attributes, addTime: $addTime, status: $status, salesNum: $salesNum, integralper: $integralper, homePageFlag: $homePageFlag, homePageCateCode: $homePageCateCode, homePageCateDesc: $homePageCateDesc, stockNum: $stockNum, activityFlag: $activityFlag, activityId: $activityId, goodsType: $goodsType, goodsOwnerMobile: $goodsOwnerMobile, goodsOwnerId: $goodsOwnerId, specificationValue: $specificationValue, newProperty: $newProperty)';
}


}

/// @nodoc
abstract mixin class _$goodsCopyWith<$Res> implements $GoodsCopyWith<$Res> {
  factory _$goodsCopyWith(_goods value, $Res Function(_goods) _then) = __$goodsCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? brandId, int? categoryId, String? brandName, String? categoryName, String? goodsSn, String? name, List<String>? gallery, String? keywords, String? goodsBrief, int? isOnSale, int? sortOrder, int? counterPrice, bool? isNewly, String? primaryPicUrl, String? listPicUrl, int? isHot, String? goodsUnit, int? retailPrice, String? goodsDesc, String? attributes, int? addTime, String? status, int? salesNum, String? integralper, int? homePageFlag, int? homePageCateCode, String? homePageCateDesc, int? stockNum, int? activityFlag, int? activityId, int? goodsType, String? goodsOwnerMobile, String? goodsOwnerId, String? specificationValue, bool? newProperty
});




}
/// @nodoc
class __$goodsCopyWithImpl<$Res>
    implements _$goodsCopyWith<$Res> {
  __$goodsCopyWithImpl(this._self, this._then);

  final _goods _self;
  final $Res Function(_goods) _then;

/// Create a copy of Goods
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? brandId = freezed,Object? categoryId = freezed,Object? brandName = freezed,Object? categoryName = freezed,Object? goodsSn = freezed,Object? name = freezed,Object? gallery = freezed,Object? keywords = freezed,Object? goodsBrief = freezed,Object? isOnSale = freezed,Object? sortOrder = freezed,Object? counterPrice = freezed,Object? isNewly = freezed,Object? primaryPicUrl = freezed,Object? listPicUrl = freezed,Object? isHot = freezed,Object? goodsUnit = freezed,Object? retailPrice = freezed,Object? goodsDesc = freezed,Object? attributes = freezed,Object? addTime = freezed,Object? status = freezed,Object? salesNum = freezed,Object? integralper = freezed,Object? homePageFlag = freezed,Object? homePageCateCode = freezed,Object? homePageCateDesc = freezed,Object? stockNum = freezed,Object? activityFlag = freezed,Object? activityId = freezed,Object? goodsType = freezed,Object? goodsOwnerMobile = freezed,Object? goodsOwnerId = freezed,Object? specificationValue = freezed,Object? newProperty = freezed,}) {
  return _then(_goods(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,brandId: freezed == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,brandName: freezed == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,goodsSn: freezed == goodsSn ? _self.goodsSn : goodsSn // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,gallery: freezed == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>?,keywords: freezed == keywords ? _self.keywords : keywords // ignore: cast_nullable_to_non_nullable
as String?,goodsBrief: freezed == goodsBrief ? _self.goodsBrief : goodsBrief // ignore: cast_nullable_to_non_nullable
as String?,isOnSale: freezed == isOnSale ? _self.isOnSale : isOnSale // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,counterPrice: freezed == counterPrice ? _self.counterPrice : counterPrice // ignore: cast_nullable_to_non_nullable
as int?,isNewly: freezed == isNewly ? _self.isNewly : isNewly // ignore: cast_nullable_to_non_nullable
as bool?,primaryPicUrl: freezed == primaryPicUrl ? _self.primaryPicUrl : primaryPicUrl // ignore: cast_nullable_to_non_nullable
as String?,listPicUrl: freezed == listPicUrl ? _self.listPicUrl : listPicUrl // ignore: cast_nullable_to_non_nullable
as String?,isHot: freezed == isHot ? _self.isHot : isHot // ignore: cast_nullable_to_non_nullable
as int?,goodsUnit: freezed == goodsUnit ? _self.goodsUnit : goodsUnit // ignore: cast_nullable_to_non_nullable
as String?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as int?,goodsDesc: freezed == goodsDesc ? _self.goodsDesc : goodsDesc // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as String?,addTime: freezed == addTime ? _self.addTime : addTime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,salesNum: freezed == salesNum ? _self.salesNum : salesNum // ignore: cast_nullable_to_non_nullable
as int?,integralper: freezed == integralper ? _self.integralper : integralper // ignore: cast_nullable_to_non_nullable
as String?,homePageFlag: freezed == homePageFlag ? _self.homePageFlag : homePageFlag // ignore: cast_nullable_to_non_nullable
as int?,homePageCateCode: freezed == homePageCateCode ? _self.homePageCateCode : homePageCateCode // ignore: cast_nullable_to_non_nullable
as int?,homePageCateDesc: freezed == homePageCateDesc ? _self.homePageCateDesc : homePageCateDesc // ignore: cast_nullable_to_non_nullable
as String?,stockNum: freezed == stockNum ? _self.stockNum : stockNum // ignore: cast_nullable_to_non_nullable
as int?,activityFlag: freezed == activityFlag ? _self.activityFlag : activityFlag // ignore: cast_nullable_to_non_nullable
as int?,activityId: freezed == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as int?,goodsType: freezed == goodsType ? _self.goodsType : goodsType // ignore: cast_nullable_to_non_nullable
as int?,goodsOwnerMobile: freezed == goodsOwnerMobile ? _self.goodsOwnerMobile : goodsOwnerMobile // ignore: cast_nullable_to_non_nullable
as String?,goodsOwnerId: freezed == goodsOwnerId ? _self.goodsOwnerId : goodsOwnerId // ignore: cast_nullable_to_non_nullable
as String?,specificationValue: freezed == specificationValue ? _self.specificationValue : specificationValue // ignore: cast_nullable_to_non_nullable
as String?,newProperty: freezed == newProperty ? _self.newProperty : newProperty // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
