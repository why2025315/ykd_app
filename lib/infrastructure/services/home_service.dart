import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/home/home_service_model.dart';
import 'package:ykd_tea_app/utils/result.dart';

class HomeService {
  final ApiClient _client = ApiClient();
  Future<Result<HomeServiceModel>> getHomeData() async {
    try {
      final response = await _client.get('/wx/home/index');
      if (response.statusCode == 200) {
        return Result.ok(HomeServiceModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
