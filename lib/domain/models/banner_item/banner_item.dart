import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'banner_item.freezed.dart';
part 'banner_item.g.dart';

@freezed
abstract class BannerItem with _$BannerItem {
  const factory BannerItem({
    int? id,
    int? shopId,
    int? position,
    String? name,
    String? link,
    String? url,
    String? content,
    int? startTime,
    int? endTime,
    int? addTime,
    String? status,
    bool? newProperty,
  }) = _BannerItem;

  factory BannerItem.fromJson(Map<String, Object?> json) =>
      _$BannerItemFromJson(json);
}
