import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:ykd_tea_app/domain/models/cart_goods_item/cart_goods_item.dart';
import 'package:ykd_tea_app/domain/models/cart_total/cart_total.dart';
part 'cart_list_api_model.freezed.dart';
part 'cart_list_api_model.g.dart';

@freezed
abstract class CartListApiModel with _$CartListApiModel {
  const factory CartListApiModel({
    CartTotal? cartTotal,
    List<CartGoodsItem>? cartList,
  }) = _CartListApiModel;

  factory CartListApiModel.fromJson(Map<String, Object?> json) =>
      _$CartListApiModelFromJson(json);
}
