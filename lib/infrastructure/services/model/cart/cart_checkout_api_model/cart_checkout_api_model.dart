import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:ykd_tea_app/domain/models/cart_goods_item/cart_goods_item.dart';
part 'cart_checkout_api_model.freezed.dart';
part 'cart_checkout_api_model.g.dart';

@freezed
abstract class CartCheckoutApiModel with _$CartCheckoutApiModel {
  const factory CartCheckoutApiModel({
    int? actualPrice,
    int? orderTotalPrice,
    int? couponId,
    int? goodsTotalPrice,
    int? addressId,
    int? checkedCoupon,
    CheckedAddress? checkedAddress,
    int? activityFlag,
    String? couponList,
    int? couponPrice,
    int? freightPrice,
    List<CartGoodsItem>? checkedGoodsList,
  }) = _CartCheckoutApiModel;

  factory CartCheckoutApiModel.fromJson(Map<String, Object?> json) =>
      _$CartCheckoutApiModelFromJson(json);
}

@freezed
abstract class CheckedAddress with _$CheckedAddress {
  const factory CheckedAddress({
    int? id,
    int? customerId,
    String? name,
    int? provinceId,
    int? cityId,
    int? areaId,
    String? address,
    String? mobile,
    bool? isDefault,
    int? addTime,
    dynamic status,
    bool? newProperty,
  }) = _CheckedAddress;

  factory CheckedAddress.fromJson(Map<String, Object?> json) =>
      _$CheckedAddressFromJson(json);
}
