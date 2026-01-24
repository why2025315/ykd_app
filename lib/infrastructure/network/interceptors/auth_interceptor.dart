import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // 添加 token
    final token = 'your_token_here';
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}
