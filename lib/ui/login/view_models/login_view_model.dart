import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/domain/models/user/user_manager.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/login/login_api_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService;
  final UserManager _userManager;

  LoginViewModel({
    required AuthService authService,
    required UserManager userManager,
  }) : _authService = authService,
       _userManager = userManager {
    login = Command1(_login);
  }

  late Command0 load;
  late Command1<LoginApiModel, LoginParams> login;

  final _log = Logger('LoginViewModel');

  Future<Result<LoginApiModel>> _login(LoginParams params) async {
    try {
      final result = await _authService.login(params);

      switch (result) {
        case Ok<LoginApiModel>():
          {
            final loginData = result.value;
            // 保存用户信息和token
            await _userManager.login(loginData.userInfo, loginData.token);
            _log.info('登录成功');
            return result;
          }
        case Error<LoginApiModel>():
          {
            _log.severe('登录失败', result.error);
            return result;
          }
      }
    } finally {
      notifyListeners();
    }
  }
}
