// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_detail_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoodsDetailApiModel _$GoodsDetailApiModelFromJson(Map<String, dynamic> json) =>
    _GoodsDetailApiModel(
      specificationList: (json['specificationList'] as List<dynamic>?)
          ?.map((e) => Specification.fromJson(e as Map<String, dynamic>))
          .toList(),
      issue: (json['issue'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      userHasCollect: (json['userHasCollect'] as num?)?.toInt(),
      attribute: json['attribute'] as List<dynamic>?,
      info: json['info'] == null
          ? null
          : Goods.fromJson(json['info'] as Map<String, dynamic>),
      productList: (json['productList'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GoodsDetailApiModelToJson(
  _GoodsDetailApiModel instance,
) => <String, dynamic>{
  'specificationList': instance.specificationList,
  'issue': instance.issue,
  'userHasCollect': instance.userHasCollect,
  'attribute': instance.attribute,
  'info': instance.info,
  'productList': instance.productList,
};
