import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    int? id,
    int? goodsId,
    String? goodsName,
    String? goodsSpecificationNames,
    List<int>? goodsSpecificationIds,
    int? goodsNumber,
    int? retailPrice,
    String? url,
    int? addTime,
    int? deleted,
    bool? newProperty,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
