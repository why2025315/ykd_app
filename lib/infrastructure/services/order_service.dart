import 'package:dio/dio.dart';
import 'package:ykd_tea_app/domain/models/payment/payment.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/model/order/order_detail_api_model/order_detail_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/model/order/order_list_api_model/order_list_api_model.dart';

import '../../utils/result.dart';

class SubmitOrderParams {
  int cartId;
  int addressId;
  int? couponId;
  int paymentId;
  String? leaveWord;

  SubmitOrderParams({
    required this.cartId,
    required this.addressId,
    this.couponId,
    required this.paymentId,
    this.leaveWord,
  });
}

class OrderService {
  OrderService({required ApiClient apiClient}) : _client = apiClient;

  final ApiClient _client;

  // 提交订单
  Future<Result<dynamic>> submitOrder(SubmitOrderParams params) async {
    try {
      final response = await _client.post(
        '/wx/order/submit',
        data: {
          'cartId': params.cartId,
          'addressId': params.addressId,
          'couponId': params.couponId,
          'paymentId': params.paymentId,
          'leaveWord': params.leaveWord,
        },
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(response.data['data']['orderId']);
        // return Result.ok(OrderSubmitApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 订单列表
  Future<Result<dynamic>> getOrderList(int showType) async {
    try {
      final response = await _client.get(
        '/wx/order/list',
        queryParameters: {'showType': showType},
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(OrderListApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 订单详情
  Future<Result<dynamic>> getOrderDetail(int orderId) async {
    try {
      final response = await _client.get(
        '/wx/order/detail',
        queryParameters: {'orderId': orderId},
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(OrderDetailApiModel.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 获取支付方式
  Future<Result<List<Payment>>> getPaymentMethod() async {
    try {
      final response = await _client.get('/wx/order/paymentType');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        // return Result.ok(OrderSubmitApiModel.fromJson(response.data['data']));
        return Result.ok(
          (response.data['data']['paymentList'] as List)
              .map((e) => Payment.fromJson(e))
              .toList(),
        );
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
