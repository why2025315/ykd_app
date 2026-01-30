import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/domain/models/useinfo/userinfo.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/login/login_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/user_manager.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AppShareState extends ChangeNotifier {
  String? _token;
  UserInfo? _userInfo;
  int _cartCount = 0;

  AppShareState({
    required AuthService authService,
    required UserManager userManager,
  }) : _authService = authService {
    loginCommand = Command1(_login);
    _token = userManager.token;
    _userInfo = userManager.userInfo;
  }

  final AuthService _authService;

  late Command1<LoginApiModel, LoginParams> loginCommand;

  bool get isLoggedIn => _token != null;
  UserInfo? get userInfo => _userInfo;
  int get cartCount => _cartCount;

  set cartCount(int value) {
    _cartCount = value;
    notifyListeners();
  }

  final _log = Logger('AppShareState');

  Future<Result<LoginApiModel>> _login(LoginParams params) async {
    try {
      final result = await _authService.login(params);

      switch (result) {
        case Ok<LoginApiModel>():
          {
            final loginData = result.value;
            _userInfo = loginData.userInfo;
            _token = loginData.token;
            // 保存用户信息和token todo 后续处理
            // await _userManager.login(loginData.userInfo, loginData.token);
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
