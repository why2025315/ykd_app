import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/user_manager.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class CartViewModel extends ChangeNotifier {
  CartViewModel({
    required this.cartService,
    required this.userManager,
    required this.loginViewModel,
  }) {
    getCartGoodsCountCommand = Command0(getCartGoodsCount);
    if (userManager.isLoggedIn) {
      getCartGoodsCountCommand.execute();
    }
  }

  final CartService cartService;
  final UserManager userManager;
  final LoginViewModel loginViewModel;

  int _cartCount = 0;

  int get cartCount => _cartCount;
  late Command0 getCartGoodsCountCommand;

  void setCartCount(int count) {
    _cartCount = count;
    notifyListeners();
  }

  Future<Result> getCartGoodsCount() async {
    final result = await cartService.getGoodsCount();
    switch (result) {
      case Ok(value: final count):
        setCartCount(count);
        return result;
      case Error():
        return result;
    }
  }
}
