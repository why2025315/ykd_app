// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num?)?.toInt(),
  goodsId: (json['goodsId'] as num?)?.toInt(),
  goodsName: json['goodsName'] as String?,
  goodsSpecificationNames: json['goodsSpecificationNames'] as String?,
  goodsSpecificationIds: (json['goodsSpecificationIds'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  goodsNumber: (json['goodsNumber'] as num?)?.toInt(),
  retailPrice: (json['retailPrice'] as num?)?.toInt(),
  url: json['url'] as String?,
  addTime: (json['addTime'] as num?)?.toInt(),
  deleted: (json['deleted'] as num?)?.toInt(),
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'goodsId': instance.goodsId,
  'goodsName': instance.goodsName,
  'goodsSpecificationNames': instance.goodsSpecificationNames,
  'goodsSpecificationIds': instance.goodsSpecificationIds,
  'goodsNumber': instance.goodsNumber,
  'retailPrice': instance.retailPrice,
  'url': instance.url,
  'addTime': instance.addTime,
  'deleted': instance.deleted,
  'newProperty': instance.newProperty,
};
