import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'cart_goods_item.freezed.dart';
part 'cart_goods_item.g.dart';

@freezed
abstract class CartGoodsItem with _$CartGoodsItem {
  const factory CartGoodsItem({
    int? id,
    int? customerId,
    int? goodsId,
    int? productId,
    String? goodsSn,
    String? goodsName,
    int? price,
    int? number,
    String? goodsSpecVals,
    List<int>? goodsSpecIds,
    int? checked,
    String? picUrl,
    int? addTime,
    bool? newProperty,
  }) = _CartGoodsItem;

  factory CartGoodsItem.fromJson(Map<String, Object?> json) =>
      _$CartGoodsItemFromJson(json);
}
