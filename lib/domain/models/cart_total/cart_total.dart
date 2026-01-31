import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'cart_total.freezed.dart';
part 'cart_total.g.dart';

@freezed
abstract class CartTotal with _$CartTotal {
  const factory CartTotal({
    int? goodsCount,
    int? checkedGoodsCount,
    double? goodsAmount,
    double? checkedGoodsAmount,
  }) = _CartTotal;

  factory CartTotal.fromJson(Map<String, Object?> json) =>
      _$CartTotalFromJson(json);
}
