import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'channel_item.freezed.dart';
part 'channel_item.g.dart';

@freezed
abstract class ChannelItem with _$ChannelItem {
  const factory ChannelItem({
    int? id,
    int? shopId,
    String? name,
    String? keywords,
    String? frontDesc,
    int? parentId,
    int? sortOrder,
    int? showIndex,
    int? isShow,
    String? bannerUrl,
    String? iconUrl,
    String? imgUrl,
    String? wapBannerUrl,
    String? level,
    int? type,
    String? frontName,
    int? addTime,
    String? status,
    List<int>? subCategoryList,
    bool? newProperty,
  }) = _ChannelItem;

  factory ChannelItem.fromJson(Map<String, Object?> json) =>
      _$ChannelItemFromJson(json);
}
