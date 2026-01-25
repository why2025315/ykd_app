import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/interceptors/auth_interceptor.dart';
import 'package:ykd_tea_app/infrastructure/exceptions/network_exception.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://ykd.nongeasy.com/ykdnongeast/',
        connectTimeout: const Duration(seconds: 1000),
        receiveTimeout: const Duration(seconds: 1000),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    // 添加拦截器
    _dio.interceptors.addAll([
      // LogInterceptor(requestBody: true, responseBody: true),
      AuthInterceptor(),
    ]);
  }

  // GET 请求
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // POST 请求
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // 错误处理
  Exception _handleError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return NetworkException('网络连接超时');
    } else if (e.response != null) {
      return NetworkException('服务器错误: ${e.response!.statusCode}');
    } else {
      return NetworkException('网络请求失败: ${e.message}');
    }
  }
}
