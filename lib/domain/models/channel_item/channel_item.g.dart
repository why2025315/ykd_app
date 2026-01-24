// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelItem _$ChannelItemFromJson(Map<String, dynamic> json) => _ChannelItem(
  id: (json['id'] as num?)?.toInt(),
  shopId: (json['shopId'] as num?)?.toInt(),
  name: json['name'] as String?,
  keywords: json['keywords'] as String?,
  frontDesc: json['frontDesc'] as String?,
  parentId: (json['parentId'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  showIndex: (json['showIndex'] as num?)?.toInt(),
  isShow: (json['isShow'] as num?)?.toInt(),
  bannerUrl: json['bannerUrl'] as String?,
  iconUrl: json['iconUrl'] as String?,
  imgUrl: json['imgUrl'] as String?,
  wapBannerUrl: json['wapBannerUrl'] as String?,
  level: json['level'] as String?,
  type: (json['type'] as num?)?.toInt(),
  frontName: json['frontName'] as String?,
  addTime: (json['addTime'] as num?)?.toInt(),
  status: json['status'] as String?,
  subCategoryList: (json['subCategoryList'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$ChannelItemToJson(_ChannelItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopId': instance.shopId,
      'name': instance.name,
      'keywords': instance.keywords,
      'frontDesc': instance.frontDesc,
      'parentId': instance.parentId,
      'sortOrder': instance.sortOrder,
      'showIndex': instance.showIndex,
      'isShow': instance.isShow,
      'bannerUrl': instance.bannerUrl,
      'iconUrl': instance.iconUrl,
      'imgUrl': instance.imgUrl,
      'wapBannerUrl': instance.wapBannerUrl,
      'level': instance.level,
      'type': instance.type,
      'frontName': instance.frontName,
      'addTime': instance.addTime,
      'status': instance.status,
      'subCategoryList': instance.subCategoryList,
      'newProperty': instance.newProperty,
    };
