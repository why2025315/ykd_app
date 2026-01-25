import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/utils/result.dart';

class GoodsService {
  GoodsService({required ApiClient apiClient}) : _client = apiClient;

  final ApiClient _client;

  Future<Result<GoodsDetailApiModel>> getGoodsDetail(String goodsId) async {
    try {
      final response = await _client.get(
        '/wx/goods/detail',
        queryParameters: {'id': goodsId},
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
