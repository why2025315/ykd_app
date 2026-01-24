// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_buy_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommunityBuyItem _$CommunityBuyItemFromJson(Map<String, dynamic> json) =>
    _CommunityBuyItem(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      imgUrl: json['imgUrl'] as String?,
      addTime: (json['addTime'] as num?)?.toInt(),
      deleteFlag: json['deleteFlag'] as String?,
      name: json['name'] as String?,
      groupBy: json['groupBy'] as String?,
      homepageFlag: json['homepageFlag'] as String?,
      newProperty: json['newProperty'] as bool?,
    );

Map<String, dynamic> _$CommunityBuyItemToJson(_CommunityBuyItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'imgUrl': instance.imgUrl,
      'addTime': instance.addTime,
      'deleteFlag': instance.deleteFlag,
      'name': instance.name,
      'groupBy': instance.groupBy,
      'homepageFlag': instance.homepageFlag,
      'newProperty': instance.newProperty,
    };
