import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/cart/cart_checkout_api_model/cart_checkout_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/model/cart/cart_list_api_model/cart_list_api_model.dart';
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

class UpdateCheckParams {
  final List<int> productIds;
  final int isChecked;

  UpdateCheckParams({required this.productIds, required this.isChecked});
}

class UpdateCartParams {
  final int productId;
  final int number;
  final int goodsId;
  final int cartItemId;

  UpdateCartParams({
    required this.productId,
    required this.number,
    required this.goodsId,
    required this.cartItemId,
  });
}

class DeleteCartParams {
  final List<int> productIds;

  DeleteCartParams({required this.productIds});
}

class CartCheckoutParams {
  /// 创建订单参数
  ///
  /// @param cartId 购物车ID，必填
  /// @param couponId 优惠券ID，可选
  /// @param addressId 收货地址ID，可选
  CartCheckoutParams({required this.cartId, this.couponId, this.addressId});

  final int cartId;
  final int? couponId;
  final int? addressId;

  Map<String, dynamic> toJson() => {
    'cartId': cartId,
    'couponId': couponId,
    'addressId': addressId,
  };
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

  Future<Result<bool>> updateCheck(UpdateCheckParams params) async {
    try {
      final response = await _client.post(
        '/wx/cart/checked',
        data: {'productIds': params.productIds, 'isChecked': params.isChecked},
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

  Future<Result<bool>> deleteCart(DeleteCartParams params) async {
    try {
      final response = await _client.post(
        '/wx/cart/delete',
        data: {'productIds': params.productIds},
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

  Future<Result<bool>> updateCart(UpdateCartParams params) async {
    try {
      final response = await _client.post(
        '/wx/cart/update',
        data: {
          'productId': params.productId,
          'number': params.number,
          'goodsId': params.goodsId,
          'id': params.cartItemId,
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

  // 获取购物车中商品数据
  Future<Result<CartListApiModel>> getGoodsList() async {
    try {
      final response = await _client.get('/wx/cart/index');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(CartListApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 立即购买
  Future<Result<CartListApiModel>> fastAdd() async {
    try {
      final response = await _client.get('/wx/cart/fastadd');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(CartListApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 下单前信息确认
  Future<Result<CartCheckoutApiModel>> checkOrder(
    CartCheckoutParams params,
  ) async {
    try {
      final response = await _client.get(
        '/wx/cart/checkout',
        queryParameters: params.toJson(),
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(CartCheckoutApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
