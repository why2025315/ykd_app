import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'community_buy_item.freezed.dart';
part 'community_buy_item.g.dart';

@freezed
abstract class CommunityBuyItem with _$CommunityBuyItem {
  const factory CommunityBuyItem({
    int? id,
    int? categoryId,
    String? imgUrl,
    int? addTime,
    String? deleteFlag,
    String? name,
    String? groupBy,
    String? homepageFlag,
    bool? newProperty,
  }) = _CommunityBuyItem;

  factory CommunityBuyItem.fromJson(Map<String, Object?> json) =>
      _$CommunityBuyItemFromJson(json);
}
