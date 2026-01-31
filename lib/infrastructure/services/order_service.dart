import 'package:dio/dio.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';

import '../../utils/result.dart';

class OrderService {
  OrderService({required ApiClient apiClient}) : _client = apiClient;

  final ApiClient _client;

  // 提交订单
  // Future<Result<dynamic>> submitOrder() async {
  //   try {
  //     final response = await _client.get('/wx/order/submit');
  //     if (response.statusCode == 200) {
  //       if (response.data['code'] != 0) {
  //         return Result.error(Exception(response.data['msg']));
  //       }
  //       // return Result.ok(OrderSubmitApiModel.fromJson(response.data['data']));
  //     } else {
  //       return Result.error(Exception('请求失败'));
  //     }
  //   } on DioException catch (e) {
  //     return Result.error(e);
  //   }
  // }

  // 订单列表
  // Future<Result<dynamic>> getOrderList() async {
  //   try {
  //     final response = await _client.get('/wx/order/list');
  //     if (response.statusCode == 200) {
  //       if (response.data['code'] != 0) {
  //         return Result.error(Exception(response.data['msg']));
  //       }
  //       // return Result.ok(OrderSubmitApiModel.fromJson(response.data['data']));
  //     } else {
  //       return Result.error(Exception('请求失败'));
  //     }
  //   } on DioException catch (e) {
  //     return Result.error(e);
  //   }
  // }

  // 订单详情
  // Future<Result<dynamic>> getOrderDetail({required String orderId}) async {
  //   try {
  //     final response = await _client.get('/wx/order/detail/$orderId');
  //     if (response.statusCode == 200) {
  //       if (response.data['code'] != 0) {
  //         return Result.error(Exception(response.data['msg']));
  //       }
  //       // return Result.ok(OrderSubmitApiModel.fromJson(response.data['data']));
  //     } else {
  //       return Result.error(Exception('请求失败'));
  //     }
  //   } on DioException catch (e) {
  //     return Result.error(e);
  //   }
  // }
}
