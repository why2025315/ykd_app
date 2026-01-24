// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeServiceModel _$HomeServiceModelFromJson(Map<String, dynamic> json) =>
    _HomeServiceModel(
      banner: (json['banner'] as List<dynamic>)
          .map((e) => BannerItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      channel: (json['channel'] as List<dynamic>)
          .map((e) => ChannelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      homePageGoods: (json['homePageGoods'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => Goods.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      ),
      pageList: (json['pageList'] as List<dynamic>)
          .map((e) => CommunityBuyItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeServiceModelToJson(_HomeServiceModel instance) =>
    <String, dynamic>{
      'banner': instance.banner,
      'channel': instance.channel,
      'homePageGoods': instance.homePageGoods,
      'pageList': instance.pageList,
    };
