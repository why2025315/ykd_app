import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'order_detail_api_model.freezed.dart';
part 'order_detail_api_model.g.dart';

@freezed
abstract class OrderDetailApiModel with _$OrderDetailApiModel {
  const factory OrderDetailApiModel({
    OrderInfo? orderInfo,
    List<OrderGoods>? orderGoods,
  }) = _OrderDetailApiModel;

  factory OrderDetailApiModel.fromJson(Map<String, Object?> json) =>
      _$OrderDetailApiModelFromJson(json);
}

@freezed
abstract class OrderInfo with _$OrderInfo {
  const factory OrderInfo({
    String? consignee,
    String? address,
    int? addTime,
    String? orderSn,
    int? actualPrice,
    String? leaveWord,
    String? mobile,
    String? shipChannel,
    String? orderStatusText,
    int? goodsPrice,
    int? couponPrice,
    int? id,
    int? freightPrice,
    int? integralPrice,
    HandleOption? handleOption,
    String? shipSn,
  }) = _OrderInfo;

  factory OrderInfo.fromJson(Map<String, Object?> json) =>
      _$OrderInfoFromJson(json);
}

@freezed
abstract class HandleOption with _$HandleOption {
  const factory HandleOption({
    bool? cancel,
    bool? delete,
    bool? pay,
    bool? comment,
    bool? confirm,
    bool? refund,
    bool? rebuy,
  }) = _HandleOption;

  factory HandleOption.fromJson(Map<String, Object?> json) =>
      _$HandleOptionFromJson(json);
}

@freezed
abstract class OrderGoods with _$OrderGoods {
  const factory OrderGoods({
    int? number,
    String? picUrl,
    int? orderId,
    int? goodsId,
    dynamic? goodsSpecificationValues,
    int? id,
    String? goodsName,
    int? retailPrice,
  }) = _OrderGoods;

  factory OrderGoods.fromJson(Map<String, Object?> json) =>
      _$OrderGoodsFromJson(json);
}
