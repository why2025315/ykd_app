import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods/goods_detail_api_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class GoodsDetailViewModel extends ChangeNotifier {
  GoodsDetailViewModel({required this.goodsId, required this.goodsService}) {
    load = Command0(fetchGoodsDetail)..execute();
  }

  final GoodsService goodsService;
  final String goodsId;

  GoodsDetailApiModel? _goodsDetailModel;
  late Command0 load;

  get goods => _goodsDetailModel;

  Future<Result<GoodsDetailApiModel>> fetchGoodsDetail() async {
    try {
      final result = await goodsService.getGoodsDetail(goodsId);
      switch (result) {
        case Ok<GoodsDetailApiModel>():
          _goodsDetailModel = result.value;
          return result;
        case Error<GoodsDetailApiModel>():
          return result;
      }
    } finally {
      notifyListeners();
    }
  }
}
