// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: (json['id'] as num?)?.toInt(),
  goodsId: (json['goodsId'] as num?)?.toInt(),
  typeTitle: json['typeTitle'] as String?,
  typeDesc: json['typeDesc'] as String?,
  addTime: (json['addTime'] as num?)?.toInt(),
  couponPrice: (json['couponPrice'] as num?)?.toInt(),
  orderPrice: (json['orderPrice'] as num?)?.toInt(),
  newProperty: json['newProperty'] as bool?,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'goodsId': instance.goodsId,
  'typeTitle': instance.typeTitle,
  'typeDesc': instance.typeDesc,
  'addTime': instance.addTime,
  'couponPrice': instance.couponPrice,
  'orderPrice': instance.orderPrice,
  'newProperty': instance.newProperty,
};
