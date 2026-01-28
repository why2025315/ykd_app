import 'package:dio/dio.dart';
import 'package:ykd_tea_app/domain/models/user/user_manager.dart';
import 'package:ykd_tea_app/routing/router_util.dart';

class AuthInterceptor extends Interceptor {
  final UserManager userManager;

  AuthInterceptor({required this.userManager});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 添加 token
    final token = userManager.token;
    if (token != null && token.isNotEmpty) {
      options.headers['wx-nongeasy-token'] = token;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 处理响应 如果返回值code 501 说明未登录 跳转到登录页
    if (response.data['code'] == 501) {
      // 跳转到登录页
      RouterUtil.jumpToLogin();
    }
    super.onResponse(response, handler);
  }
}
