// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailApiModel _$OrderDetailApiModelFromJson(Map<String, dynamic> json) =>
    _OrderDetailApiModel(
      orderInfo: json['orderInfo'] == null
          ? null
          : OrderInfo.fromJson(json['orderInfo'] as Map<String, dynamic>),
      orderGoods: (json['orderGoods'] as List<dynamic>?)
          ?.map((e) => OrderGoods.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailApiModelToJson(
  _OrderDetailApiModel instance,
) => <String, dynamic>{
  'orderInfo': instance.orderInfo,
  'orderGoods': instance.orderGoods,
};

_OrderInfo _$OrderInfoFromJson(Map<String, dynamic> json) => _OrderInfo(
  consignee: json['consignee'] as String?,
  address: json['address'] as String?,
  addTime: (json['addTime'] as num?)?.toInt(),
  orderSn: json['orderSn'] as String?,
  actualPrice: (json['actualPrice'] as num?)?.toInt(),
  leaveWord: json['leaveWord'] as String?,
  mobile: json['mobile'] as String?,
  shipChannel: json['shipChannel'] as String?,
  orderStatusText: json['orderStatusText'] as String?,
  goodsPrice: (json['goodsPrice'] as num?)?.toInt(),
  couponPrice: (json['couponPrice'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  freightPrice: (json['freightPrice'] as num?)?.toInt(),
  integralPrice: (json['integralPrice'] as num?)?.toInt(),
  handleOption: json['handleOption'] == null
      ? null
      : HandleOption.fromJson(json['handleOption'] as Map<String, dynamic>),
  shipSn: json['shipSn'] as String?,
);

Map<String, dynamic> _$OrderInfoToJson(_OrderInfo instance) =>
    <String, dynamic>{
      'consignee': instance.consignee,
      'address': instance.address,
      'addTime': instance.addTime,
      'orderSn': instance.orderSn,
      'actualPrice': instance.actualPrice,
      'leaveWord': instance.leaveWord,
      'mobile': instance.mobile,
      'shipChannel': instance.shipChannel,
      'orderStatusText': instance.orderStatusText,
      'goodsPrice': instance.goodsPrice,
      'couponPrice': instance.couponPrice,
      'id': instance.id,
      'freightPrice': instance.freightPrice,
      'integralPrice': instance.integralPrice,
      'handleOption': instance.handleOption,
      'shipSn': instance.shipSn,
    };

_HandleOption _$HandleOptionFromJson(Map<String, dynamic> json) =>
    _HandleOption(
      cancel: json['cancel'] as bool?,
      delete: json['delete'] as bool?,
      pay: json['pay'] as bool?,
      comment: json['comment'] as bool?,
      confirm: json['confirm'] as bool?,
      refund: json['refund'] as bool?,
      rebuy: json['rebuy'] as bool?,
    );

Map<String, dynamic> _$HandleOptionToJson(_HandleOption instance) =>
    <String, dynamic>{
      'cancel': instance.cancel,
      'delete': instance.delete,
      'pay': instance.pay,
      'comment': instance.comment,
      'confirm': instance.confirm,
      'refund': instance.refund,
      'rebuy': instance.rebuy,
    };

_OrderGoods _$OrderGoodsFromJson(Map<String, dynamic> json) => _OrderGoods(
  number: (json['number'] as num?)?.toInt(),
  picUrl: json['picUrl'] as String?,
  orderId: (json['orderId'] as num?)?.toInt(),
  goodsId: (json['goodsId'] as num?)?.toInt(),
  goodsSpecificationValues: json['goodsSpecificationValues'],
  id: (json['id'] as num?)?.toInt(),
  goodsName: json['goodsName'] as String?,
  retailPrice: (json['retailPrice'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderGoodsToJson(_OrderGoods instance) =>
    <String, dynamic>{
      'number': instance.number,
      'picUrl': instance.picUrl,
      'orderId': instance.orderId,
      'goodsId': instance.goodsId,
      'goodsSpecificationValues': instance.goodsSpecificationValues,
      'id': instance.id,
      'goodsName': instance.goodsName,
      'retailPrice': instance.retailPrice,
    };
