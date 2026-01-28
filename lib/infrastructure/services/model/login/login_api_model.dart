import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:ykd_tea_app/domain/models/useinfo/userinfo.dart';
part 'login_api_model.freezed.dart';
part 'login_api_model.g.dart';

@freezed
abstract class LoginApiModel with _$LoginApiModel {
  const factory LoginApiModel({
    required UserInfo userInfo,
    required String tokenExpire,
    required String token,
  }) = _LoginApiModel;

  factory LoginApiModel.fromJson(Map<String, Object?> json) =>
      _$LoginApiModelFromJson(json);
}
