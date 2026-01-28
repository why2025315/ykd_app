// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfo _$UserInfoFromJson(Map<String, dynamic> json) => _UserInfo(
  nickName: json['nickName'] as String,
  mobile: json['mobile'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  country: json['country'] as String?,
  province: json['province'] as String?,
  city: json['city'] as String?,
  language: json['language'] as String?,
  gender: json['gender'] as String?,
  tag: json['tag'] as String?,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$UserInfoToJson(_UserInfo instance) => <String, dynamic>{
  'nickName': instance.nickName,
  'mobile': instance.mobile,
  'avatarUrl': instance.avatarUrl,
  'country': instance.country,
  'province': instance.province,
  'city': instance.city,
  'language': instance.language,
  'gender': instance.gender,
  'tag': instance.tag,
  'userId': instance.userId,
};
