import 'package:flutter/widgets.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/cart/cart_checkout_api_model/cart_checkout_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/order_service.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class OrderCheckoutViewModel extends ChangeNotifier {
  final OrderService orderService;
  final CartService cartService;
  OrderCheckoutViewModel({
    required this.orderService,
    required this.cartService,
  }) {
    checkoutOrderCommand = Command1<CartCheckoutApiModel, CartCheckoutParams>(
      _checkoutOrder,
    );
  }

  late Command1<CartCheckoutApiModel, CartCheckoutParams> checkoutOrderCommand;

  CartCheckoutApiModel? _cartCheckoutData;

  int _cartId = 0;
  int? _addressId;
  int? _couponId;

  int? get cartId => _cartId;
  int? get addressId => _addressId;
  int? get couponId => _couponId;
  CartCheckoutApiModel? get cartCheckoutData => _cartCheckoutData;

  set cartId(int value) {
    _cartId = value;
    checkoutOrderCommand.execute(
      CartCheckoutParams(
        cartId: _cartId,
        addressId: _addressId,
        couponId: _couponId,
      ),
    );
    notifyListeners();
  }

  set addressId(int? value) {
    _addressId = value;
    notifyListeners();
  }

  set couponId(int? value) {
    _couponId = value;
    notifyListeners();
  }

  Future<Result<CartCheckoutApiModel>> _checkoutOrder(
    CartCheckoutParams params,
  ) async {
    try {
      final result = await cartService.checkOrder(params);
      switch (result) {
        case Ok():
          {
            _cartCheckoutData = result.value;
            return result;
          }
        case Error():
          {
            return result;
          }
        default:
          return Result.error(Exception('未知错误'));
      }
    } catch (e) {
      print(e);
      return Result.error(Exception('网络请求失败'));
    } finally {
      notifyListeners();
    }
  }
}
