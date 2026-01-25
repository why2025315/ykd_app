// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sku _$SkuFromJson(Map<String, dynamic> json) => _Sku(
  id: (json['id'] as num?)?.toInt(),
  goodsId: (json['goodsId'] as num?)?.toInt(),
  value: json['value'] as String?,
  picUrl: json['picUrl'] as String?,
  specification: json['specification'] as String?,
  price: json['price'] as num?,
  stockNumber: (json['stockNumber'] as num?)?.toInt(),
  addTime: (json['addTime'] as num?)?.toInt(),
  status: json['status'] as String?,
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$SkuToJson(_Sku instance) => <String, dynamic>{
  'id': instance.id,
  'goodsId': instance.goodsId,
  'value': instance.value,
  'picUrl': instance.picUrl,
  'specification': instance.specification,
  'price': instance.price,
  'stockNumber': instance.stockNumber,
  'addTime': instance.addTime,
  'status': instance.status,
  'newProperty': instance.newProperty,
};
