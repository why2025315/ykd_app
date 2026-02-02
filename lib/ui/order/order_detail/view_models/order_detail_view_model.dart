import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/model/order/order_detail_api_model/order_detail_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/order_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class OrderDetailViewModel extends ChangeNotifier {
  final OrderService orderService;

  OrderDetailViewModel({required this.orderService}) {
    loadOrderDetailCommand = Command0(_loadOrderDetail);
  }

  late Command0 loadOrderDetailCommand;

  OrderDetailApiModel? _orderDetail;

  OrderDetailApiModel? get orderDetail => _orderDetail;

  int? _orderId;
  int? get orderId => _orderId;

  void setOrderId(int orderId) {
    _orderId = orderId;
    loadOrderDetailCommand.execute();
  }

  Future<Result<OrderDetailApiModel>> _loadOrderDetail() async {
    if (orderId == null) {
      return Result.error(Exception('订单ID为空'));
    }
    try {
      final result = await orderService.getOrderDetail(orderId!);
      switch (result) {
        case Ok(value: final data):
          _orderDetail = data;
          return Result.ok(data);
        case Error():
          return Result.error(result.error);
        default:
          return Result.error(Exception('未知错误'));
      }
    } finally {
      notifyListeners();
    }
  }
}
