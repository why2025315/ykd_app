import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sku.freezed.dart';
part 'sku.g.dart';

@freezed
abstract class Sku with _$Sku {
  const factory Sku({
    int? id,
    int? goodsId,
    String? value,
    String? picUrl,
    String? specification,
    num? price,
    int? stockNumber,
    int? addTime,
    String? status,
    bool? newProperty,
  }) = _Sku;

  factory Sku.fromJson(Map<String, Object?> json) => _$SkuFromJson(json);
}
