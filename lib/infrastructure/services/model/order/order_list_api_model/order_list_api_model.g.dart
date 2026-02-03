// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderListApiModel _$OrderListApiModelFromJson(Map<String, dynamic> json) =>
    _OrderListApiModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderListApiModelToJson(_OrderListApiModel instance) =>
    <String, dynamic>{'data': instance.data, 'count': instance.count};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  orderStatusText: json['orderStatusText'] as String?,
  orderSn: json['orderSn'] as String?,
  actualPrice: json['actualPrice'] as num?,
  goodsList: (json['goodsList'] as List<dynamic>?)
      ?.map((e) => GoodsList.fromJson(e as Map<String, dynamic>))
      .toList(),
  orderStatus: (json['orderStatus'] as num?)?.toInt(),
  id: (json['id'] as num?)?.toInt(),
  handleOption: json['handleOption'] == null
      ? null
      : HandleOption.fromJson(json['handleOption'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'orderStatusText': instance.orderStatusText,
  'orderSn': instance.orderSn,
  'actualPrice': instance.actualPrice,
  'goodsList': instance.goodsList,
  'orderStatus': instance.orderStatus,
  'id': instance.id,
  'handleOption': instance.handleOption,
};

_GoodsList _$GoodsListFromJson(Map<String, dynamic> json) => _GoodsList(
  number: (json['number'] as num?)?.toInt(),
  picUrl: json['picUrl'] as String?,
  id: (json['id'] as num?)?.toInt(),
  goodsName: json['goodsName'] as String?,
);

Map<String, dynamic> _$GoodsListToJson(_GoodsList instance) =>
    <String, dynamic>{
      'number': instance.number,
      'picUrl': instance.picUrl,
      'id': instance.id,
      'goodsName': instance.goodsName,
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
