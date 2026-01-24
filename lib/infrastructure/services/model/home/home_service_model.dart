import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:ykd_tea_app/domain/models/banner_item/banner_item.dart';
import 'package:ykd_tea_app/domain/models/channel_item/channel_item.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
part 'home_service_model.freezed.dart';
part 'home_service_model.g.dart';

@freezed
abstract class HomeServiceModel with _$HomeServiceModel {
  const factory HomeServiceModel({
    required List<BannerItem> banner,
    required List<ChannelItem> channel,
    required Map<String, List<Goods>> homePageGoods,
    required List<CommunityBuyItem> pageList,
  }) = _HomeServiceModel;

  factory HomeServiceModel.fromJson(Map<String, Object?> json) =>
      _$HomeServiceModelFromJson(json);
}
