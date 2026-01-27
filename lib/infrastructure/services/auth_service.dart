import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/utils/result.dart';

class LoginParams {
  final String username;
  final String password;
  LoginParams({required this.username, required this.password});
  Map<String, String> toJson() => {'username': username, 'password': password};
}

class AuthService {
  AuthService({required ApiClient apiClient}) : _client = apiClient;

  final ApiClient _client;

  Future<Result<GoodsDetailApiModel>> login(LoginParams params) async {
    try {
      final response = await _client.post(
        '/wx/auth/login',
        data: params.toJson(),
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(GoodsDetailApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
