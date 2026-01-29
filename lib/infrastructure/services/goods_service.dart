import 'package:dio/dio.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods_list_api_model/goods_list_api_model.dart';
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

class GoodsListParams {
  final int categoryId;
  final int page;
  final int size;
  final String? keyword;

  GoodsListParams({
    required this.categoryId,
    required this.page,
    required this.size,
    this.keyword,
  });
}

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

  Future<Result<bool>> getFreeOrderStatus() async {
    try {
      final response = await _client.get('/wx/index/getFreeOrderStatus');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(true);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<bool>> addCart(AddCartParams params) async {
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
        return Result.ok(true);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  /// 根据商品分类ID获取商品列表
  Future<Result<GoodsListApiModel>> getGoodsList(GoodsListParams params) async {
    try {
      final response = await _client.get(
        '/wx/goods/list',
        queryParameters: {
          'categoryId': params.categoryId,
          'page': params.page,
          'size': params.size,
          'keyword': params.keyword,
        },
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(GoodsListApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  /// 根据二级分类获取商品信息
  /// [categoryId] 二级分类ID
  Future<Result<List<CommunityBuyItem>>> getSubCategory(int categoryId) async {
    try {
      final response = await _client.get(
        '/wx/home/category/index',
        queryParameters: {'id': categoryId},
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        if (response.data['data'][categoryId.toString()] is List) {
          final List<dynamic> dataList =
              response.data['data'][categoryId.toString()];
          final List<CommunityBuyItem> items = dataList
              .map(
                (item) =>
                    CommunityBuyItem.fromJson(item as Map<String, Object?>),
              )
              .toList();
          return Result.ok(items);
        } else {
          return Result.error(Exception('数据格式错误'));
        }
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
