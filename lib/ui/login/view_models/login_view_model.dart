import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService;

  LoginViewModel({required AuthService authService})
    : _authService = authService {
    login = Command1(_login);
  }

  late Command0 load;
  late Command1<dynamic, LoginParams> login;

  final _log = Logger('LoginViewModel');

  Future<Result<dynamic>> _login(LoginParams params) async {
    try {
      final result = await _authService.login(params);
      print(result);
      return result;
      // switch (result) {
      //   case Ok<GoodsDetailApiModel>():
      //     homeData = result.value;
      //     print(homeData);
      //     _log.info('加载首页数据成功');
      //     return result;
      //   case Error<HomeServiceModel>():
      //     _log.severe('加载首页数据失败', result.error);
      //     return result;
      // }
    } finally {
      notifyListeners();
    }
  }
}
