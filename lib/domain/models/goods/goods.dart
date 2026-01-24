import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'goods.freezed.dart';
part 'goods.g.dart';

@freezed
abstract class Goods with _$Goods {
  const factory Goods({
    int? id,
    int? brandId,
    int? categoryId,
    String? brandName,
    String? categoryName,
    String? goodsSn,
    String? name,
    String? gallery,
    String? keywords,
    String? goodsBrief,
    int? isOnSale,
    int? sortOrder,
    int? counterPrice,
    bool? isNewly,
    String? primaryPicUrl,
    String? listPicUrl,
    int? isHot,
    String? goodsUnit,
    int? retailPrice,
    String? goodsDesc,
    String? attributes,
    int? addTime,
    String? status,
    int? salesNum,
    String? integralper,
    int? homePageFlag,
    int? homePageCateCode,
    String? homePageCateDesc,
    int? stockNum,
    int? activityFlag,
    int? activityId,
    int? goodsType,
    String? goodsOwnerMobile,
    String? goodsOwnerId,
    String? specificationValue,
    bool? newProperty,
  }) = _goods;

  factory Goods.fromJson(Map<String, Object?> json) => _$GoodsFromJson(json);
}
