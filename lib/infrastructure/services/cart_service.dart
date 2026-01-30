import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddCartParams {
  final int goodsId;
  final int number;
  final int productId;
  final String goodsSpecVals;

  AddCartParams({
    required this.goodsId,
    required this.number,
    required this.productId,
    required this.goodsSpecVals,
  });
}

class CartService {
  CartService({required ApiClient apiClient}) : _client = apiClient;

  final ApiClient _client;

  // 获取免费订单状态
  Future<Result<bool>> getFreeOrderStatus() async {
    try {
      final response = await _client.get('/wx/index/getFreeOrderStatus');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['data']['status']));
        }
        return Result.ok(true);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 添加商品到购物车
  Future<Result<int>> addCart(AddCartParams params) async {
    try {
      final response = await _client.post(
        '/wx/cart/add',
        data: {
          'goodsId': params.goodsId,
          'number': params.number,
          'productId': params.productId,
          'goodsSpecVals': params.goodsSpecVals,
        },
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(response.data['data'] as int);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 获取购物车中商品数量
  Future<Result<int>> getGoodsCount() async {
    try {
      final response = await _client.get('/wx/cart/goodscount');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(response.data['data']);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
