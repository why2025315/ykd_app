import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
// import 'package:ykd_tea_app/utils/command.dart';
// import 'package:ykd_tea_app/utils/result.dart';

class CartViewModel extends ChangeNotifier {
  CartViewModel({
    required this.cartService,
    required this.appShareState,
    required this.loginViewModel,
  }) {
    // getCartGoodsCountCommand = Command0(getCartGoodsCount);
    // if (appShareState.isLoggedIn) {
    //   getCartGoodsCountCommand.execute();
    // }
  }

  final CartService cartService;
  final AppShareState appShareState;
  final LoginViewModel loginViewModel;

  bool get isLoggedIn => appShareState.isLoggedIn;

  // int get cartCount => appShareState.cartCount;
  // late Command0 getCartGoodsCountCommand;

  // Future<Result> getCartGoodsCount() async {
  //   final result = await cartService.getGoodsCount();
  //   switch (result) {
  //     case Ok(value: final count):
  //       appShareState.cartCount = count;
  //       return result;
  //     case Error():
  //       return result;
  //   }
  // }
}
