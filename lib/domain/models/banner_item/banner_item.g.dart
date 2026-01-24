// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BannerItem _$BannerItemFromJson(Map<String, dynamic> json) => _BannerItem(
  id: (json['id'] as num?)?.toInt(),
  shopId: (json['shopId'] as num?)?.toInt(),
  position: (json['position'] as num?)?.toInt(),
  name: json['name'] as String?,
  link: json['link'] as String?,
  url: json['url'] as String?,
  content: json['content'] as String?,
  startTime: (json['startTime'] as num?)?.toInt(),
  endTime: (json['endTime'] as num?)?.toInt(),
  addTime: (json['addTime'] as num?)?.toInt(),
  status: json['status'] as String?,
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$BannerItemToJson(_BannerItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopId': instance.shopId,
      'position': instance.position,
      'name': instance.name,
      'link': instance.link,
      'url': instance.url,
      'content': instance.content,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'addTime': instance.addTime,
      'status': instance.status,
      'newProperty': instance.newProperty,
    };
