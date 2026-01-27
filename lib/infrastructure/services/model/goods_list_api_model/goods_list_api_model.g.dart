// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoodsListApiModel _$GoodsListApiModelFromJson(Map<String, dynamic> json) =>
    _GoodsListApiModel(
      count: (json['count'] as num?)?.toInt(),
      goodsList: (json['goodsList'] as List<dynamic>?)
          ?.map((e) => Goods.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GoodsListApiModelToJson(_GoodsListApiModel instance) =>
    <String, dynamic>{'count': instance.count, 'goodsList': instance.goodsList};
