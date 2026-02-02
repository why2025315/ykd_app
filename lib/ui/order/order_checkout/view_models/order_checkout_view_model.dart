import 'package:flutter/widgets.dart';
import 'package:ykd_tea_app/domain/models/address_detail/address_detail.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/cart/cart_checkout_api_model/cart_checkout_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/order_service.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class OrderCheckoutViewModel extends ChangeNotifier {
  final OrderService orderService;
  final CartService cartService;
  final AddressService addressService;
  final LayoutViewModel layoutViewModel;

  OrderCheckoutViewModel({
    required this.orderService,
    required this.cartService,
    required this.addressService,
    required this.layoutViewModel,
  }) {
    paymentMethodCommand = Command0(orderService.getPaymentMethod);

    checkoutOrderCommand = Command1<CartCheckoutApiModel, CartCheckoutParams>(
      _checkoutOrder,
    );
    getAddressDetailCommand = Command1<AddressDetail, int>(getAddressDetail);

    submitOrderCommand = Command0(_submitOrder);
  }

  late Command0 paymentMethodCommand;
  late Command1<CartCheckoutApiModel, CartCheckoutParams> checkoutOrderCommand;
  late Command1<AddressDetail, int> getAddressDetailCommand;
  late Command0 submitOrderCommand;

  CartCheckoutApiModel? _cartCheckoutData;

  int _cartId = 0;
  int? _addressId;
  int? _couponId;
  int? _paymentId;
  String? _leaveWord;
  AddressDetail? _addressDetail;

  int? get cartId => _cartId;
  int? get addressId => _addressId;
  int? get couponId => _couponId;
  int? get paymentId => _paymentId;
  String? get leaveWord => _leaveWord;
  CartCheckoutApiModel? get cartCheckoutData => _cartCheckoutData;
  AddressDetail? get addressDetail => _addressDetail;
  set leaveWord(String? value) {
    _leaveWord = value;
    notifyListeners();
  }

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

  set paymentId(int? value) {
    _paymentId = value;
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
            _addressId = result.value.addressId;
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

  Future<Result<AddressDetail>> getAddressDetail(int addressId) async {
    try {
      final result = await addressService.getAddressDetail(addressId);
      switch (result) {
        case Ok(value: final value):
          _addressDetail = value;
          return result;
        case Error(error: final error):
          return Result.error(error);
      }
    } catch (e) {
      return Result.error(Exception('网络请求失败'));
    } finally {
      notifyListeners();
    }
  }

  Future<Result<int>> _submitOrder() async {
    try {
      final result = await orderService.submitOrder(
        SubmitOrderParams(
          cartId: _cartId,
          addressId: _addressId!,
          couponId: _couponId,
          paymentId: _paymentId!,
          leaveWord: _leaveWord,
        ),
      );
      switch (result) {
        case Ok(value: final value):
          return Result.ok(value);
        case Error(error: final error):
          return Result.error(error);
      }
    } catch (e) {
      return Result.error(Exception('网络请求失败'));
    } finally {
      notifyListeners();
    }
  }
}
