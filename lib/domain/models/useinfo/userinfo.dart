import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'userinfo.freezed.dart';
part 'userinfo.g.dart';

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String nickName,
    String? mobile,
    String? avatarUrl,
    String? country,
    String? province,
    String? city,
    String? language,
    String? gender,
    String? tag,
    String? userId,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) =>
      _$UserInfoFromJson(json);
}
