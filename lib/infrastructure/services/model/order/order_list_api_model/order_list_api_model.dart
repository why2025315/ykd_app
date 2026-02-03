import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'order_list_api_model.freezed.dart';
part 'order_list_api_model.g.dart';

@freezed
abstract class OrderListApiModel with _$OrderListApiModel {
  const factory OrderListApiModel({List<Data>? data, int? count}) =
      _OrderListApiModel;

  factory OrderListApiModel.fromJson(Map<String, Object?> json) =>
      _$OrderListApiModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    String? orderStatusText,
    String? orderSn,
    num? actualPrice,
    List<GoodsList>? goodsList,
    int? orderStatus,
    int? id,
    HandleOption? handleOption,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
abstract class GoodsList with _$GoodsList {
  const factory GoodsList({
    int? number,
    String? picUrl,
    int? id,
    String? goodsName,
  }) = _GoodsList;

  factory GoodsList.fromJson(Map<String, Object?> json) =>
      _$GoodsListFromJson(json);
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
