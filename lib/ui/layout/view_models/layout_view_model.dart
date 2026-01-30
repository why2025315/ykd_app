import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/config/app_ui_state.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class LayoutViewModel extends ChangeNotifier {
  LayoutViewModel({
    required this.appUIState,
    required this.appShareState,
    required this.loginViewModel,
    required this.cartService,
  }) {
    getCartGoodsCountCommand = Command0(getCartGoodsCount);
    if (appShareState.isLoggedIn) {
      getCartGoodsCountCommand.execute();
    }
  }

  late Command0 getCartGoodsCountCommand;

  final AppUIState appUIState;
  final AppShareState appShareState;
  final LoginViewModel loginViewModel;
  final CartService cartService;

  bool get isLoggedIn => appShareState.isLoggedIn;
  int get cartCount => appShareState.cartCount;

  Future<Result> getCartGoodsCount() async {
    final result = await cartService.getGoodsCount();
    switch (result) {
      case Ok(value: final count):
        appShareState.cartCount = count;
        return result;
      case Error():
        return result;
    }
  }
}
