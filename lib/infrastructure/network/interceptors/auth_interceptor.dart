import 'package:dio/dio.dart';
import 'package:ykd_tea_app/routing/router_util.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 添加 token
    final token = 'your_token_here';
    options.headers['Authorization'] = 'Bearer $token';
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
