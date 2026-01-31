// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartTotal _$CartTotalFromJson(Map<String, dynamic> json) => _CartTotal(
  goodsCount: (json['goodsCount'] as num?)?.toInt(),
  checkedGoodsCount: (json['checkedGoodsCount'] as num?)?.toInt(),
  goodsAmount: (json['goodsAmount'] as num?)?.toDouble(),
  checkedGoodsAmount: (json['checkedGoodsAmount'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CartTotalToJson(_CartTotal instance) =>
    <String, dynamic>{
      'goodsCount': instance.goodsCount,
      'checkedGoodsCount': instance.checkedGoodsCount,
      'goodsAmount': instance.goodsAmount,
      'checkedGoodsAmount': instance.checkedGoodsAmount,
    };
