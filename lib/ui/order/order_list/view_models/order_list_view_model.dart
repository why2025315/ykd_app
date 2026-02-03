import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/model/order/order_list_api_model/order_list_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/order_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class OrderListViewModel extends ChangeNotifier {
  final OrderService _orderService;
  int _showType = 0;
  Map<int, OrderListApiModel> _tabsData = {};
  late Command1<dynamic, int> getOrderListCommand;

  OrderListViewModel({required OrderService orderService})
    : _orderService = orderService {
    getOrderListCommand = Command1<dynamic, int>(_getOrderList);
  }

  int get showType => _showType;
  set showType(int value) {
    _showType = value;
    getOrderListCommand.execute(showType);
  }

  OrderListApiModel? getOrderListByTabIndex(int tabIndex) {
    return _tabsData[tabIndex];
  }

  Future<Result<OrderListApiModel>> _getOrderList(int showType) async {
    if (_tabsData.containsKey(showType)) {
      return Result.ok(_tabsData[showType]!);
    }
    try {
      final response = await _orderService.getOrderList(showType);
      switch (response) {
        case Ok(value: final data):
          _tabsData[showType] = data;
          return Result.ok(data);
        case Error():
          return Result.error(response.error);
        default:
          return Result.error(Exception('未知错误'));
      }
    } finally {
      notifyListeners();
    }
  }
}
