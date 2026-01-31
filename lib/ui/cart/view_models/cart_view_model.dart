import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/cart/cart_list_api_model/cart_list_api_model.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class CartViewModel extends ChangeNotifier {
  CartViewModel({
    required this.cartService,
    required this.appShareState,
    required this.layoutViewModel,
  }) {
    load = Command0<CartListApiModel>(_getCartGoodsList);
    updateCheck = Command1<bool, UpdateCheckParams>(cartService.updateCheck);
    updateCart = Command1<bool, UpdateCartParams>(cartService.updateCart);
    deleteCart = Command1<bool, DeleteCartParams>(cartService.deleteCart);
  }

  // @override
  // dispose() {
  //   updateCart.removeListener(load.execute);
  //   super.dispose();
  // }

  final CartService cartService;
  final AppShareState appShareState;
  final LayoutViewModel layoutViewModel;

  CartListApiModel? _cartGoodsList;

  late Command0 load;
  late Command1<bool, UpdateCheckParams> updateCheck;
  late Command1<bool, UpdateCartParams> updateCart;
  late Command1<bool, DeleteCartParams> deleteCart;

  bool get isLoggedIn => appShareState.isLoggedIn;

  CartListApiModel? get cartGoodsList => _cartGoodsList;

  Future<Result<CartListApiModel>> _getCartGoodsList() async {
    try {
      final result = await cartService.getGoodsList();
      switch (result) {
        case Ok(value: CartListApiModel value):
          _cartGoodsList = value;
          return Result.ok(value);
        case Error():
          return result;
        default:
          return Result.error(Exception('获取购物车数据失败'));
      }
    } catch (e) {
      return Result.error(Exception('获取购物车数据失败'));
    } finally {
      notifyListeners();
    }
  }
}
