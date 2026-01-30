import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/config/app_ui_state.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class GoodsDetailViewModel extends ChangeNotifier {
  GoodsDetailViewModel({
    required this.goodsService,
    required this.appUIState,
    required this.cartService,
    required this.appShareState,
  }) {
    load = Command0(fetchGoodsDetail);
    addCart = Command1(_addCart);
  }

  /// 底部导航栏是否可见
  final AppUIState appUIState;

  final GoodsService goodsService;
  final CartService cartService;
  String? _goodsId;
  final AppShareState appShareState;

  GoodsDetailApiModel? _goodsDetailModel;

  late Command0 load;
  late Command1<bool, AddCartParams> addCart;

  GoodsDetailApiModel? get goods => _goodsDetailModel;
  String? get goodsId => _goodsId;

  /// 设置商品ID并加载数据
  void setGoodsId(String goodsId) {
    if (_goodsId != goodsId) {
      _goodsId = goodsId;
      load.execute();
    }
  }

  Future<Result<GoodsDetailApiModel>> fetchGoodsDetail() async {
    if (_goodsId == null) {
      return Result.error(Exception('商品ID不能为空'));
    }

    try {
      final result = await goodsService.getGoodsDetail(_goodsId!);
      switch (result) {
        case Ok<GoodsDetailApiModel>():
          {
            _goodsDetailModel = result.value;
            return result;
          }
        case Error<GoodsDetailApiModel>():
          {
            return result;
          }
      }
    } catch (e) {
      return Result.error(Exception('网络请求失败'));
    } finally {
      notifyListeners();
    }
  }

  /// 重新加载数据
  void reload() {
    load.execute();
  }

  Future<Result<bool>> _addCart(AddCartParams params) async {
    try {
      final result = await cartService.getFreeOrderStatus();
      switch (result) {
        case Ok<bool>():
          {
            final addResult = await cartService.addCart(params);
            switch (addResult) {
              case Ok<int>():
                {
                  appShareState.cartCount = addResult.value;
                  return Result.ok(true);
                }
              case Error<int>():
                {
                  return Result.error(Exception(addResult.error.toString()));
                }
            }
          }
        case Error<dynamic>():
          {
            return result;
          }
      }
    } finally {
      notifyListeners();
    }
  }
}
