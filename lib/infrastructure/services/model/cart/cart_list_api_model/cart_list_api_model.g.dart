// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartListApiModel _$CartListApiModelFromJson(Map<String, dynamic> json) =>
    _CartListApiModel(
      cartTotal: json['cartTotal'] == null
          ? null
          : CartTotal.fromJson(json['cartTotal'] as Map<String, dynamic>),
      cartList: (json['cartList'] as List<dynamic>?)
          ?.map((e) => CartGoodsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartListApiModelToJson(_CartListApiModel instance) =>
    <String, dynamic>{
      'cartTotal': instance.cartTotal,
      'cartList': instance.cartList,
    };
