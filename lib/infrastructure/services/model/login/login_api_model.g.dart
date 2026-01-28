// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginApiModel _$LoginApiModelFromJson(Map<String, dynamic> json) =>
    _LoginApiModel(
      userInfo: UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      tokenExpire: json['tokenExpire'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginApiModelToJson(_LoginApiModel instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'tokenExpire': instance.tokenExpire,
      'token': instance.token,
    };
