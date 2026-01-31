import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/infrastructure/services/user_manager.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/login/login_api_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService;
  final AppShareState _appShareState;

  LoginViewModel({
    required AuthService authService,
    required UserManager userManager,
    required AppShareState appShareState,
  }) : _authService = authService,
       _appShareState = appShareState {
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
            _appShareState.updateLoginState(loginData);
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
