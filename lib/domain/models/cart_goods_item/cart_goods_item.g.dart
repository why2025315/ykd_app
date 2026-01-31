// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_goods_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartGoodsItem _$CartGoodsItemFromJson(Map<String, dynamic> json) =>
    _CartGoodsItem(
      id: (json['id'] as num?)?.toInt(),
      customerId: (json['customerId'] as num?)?.toInt(),
      goodsId: (json['goodsId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      goodsSn: json['goodsSn'] as String?,
      goodsName: json['goodsName'] as String?,
      price: (json['price'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      goodsSpecVals: json['goodsSpecVals'] as String?,
      goodsSpecIds: (json['goodsSpecIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      checked: (json['checked'] as num?)?.toInt(),
      picUrl: json['picUrl'] as String?,
      addTime: (json['addTime'] as num?)?.toInt(),
      newProperty: json['newProperty'] as bool?,
    );

Map<String, dynamic> _$CartGoodsItemToJson(_CartGoodsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'goodsId': instance.goodsId,
      'productId': instance.productId,
      'goodsSn': instance.goodsSn,
      'goodsName': instance.goodsName,
      'price': instance.price,
      'number': instance.number,
      'goodsSpecVals': instance.goodsSpecVals,
      'goodsSpecIds': instance.goodsSpecIds,
      'checked': instance.checked,
      'picUrl': instance.picUrl,
      'addTime': instance.addTime,
      'newProperty': instance.newProperty,
    };
