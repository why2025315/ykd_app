import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods_list_api_model/goods_list_api_model.dart';
import 'package:ykd_tea_app/ui/mall/view_models/goods_list_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

mixin GoodsCategoryMixin on ChangeNotifier {
  static const int size = 10;

  // 抽象 getter 方法，让使用该 mixin 的类提供依赖
  GoodsService get goodsService;
  List<CommunityBuyItem>? get categoryList;

  final _log = Logger('viewModel');

  late Command0 loadCategoryList;

  Map<int, GoodsListModel> _tabGoodsMap = {};

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    _currentIndex = value;
    if (_tabGoodsMap[currentIndex] == null) {
      _getGoodsByCatalog(
        GoodsListParams(
          categoryId: categoryList![currentIndex].categoryId ?? 0,
          page: 1,
          size: size,
          keyword: '',
        ),
      );
    }

    notifyListeners();
  }

  void resetGoodsList() {
    _tabGoodsMap = {};
  }

  GoodsListModel? getGoodsListByTabIndex(int tabIndex) =>
      _tabGoodsMap[tabIndex];

  int getTabIndexByCategoryId(int categoryId) {
    return categoryList!.indexWhere(
      (element) => element.categoryId == categoryId,
    );
  }

  void loadMoreGoods(int tabIndex) {
    final tabData =
        _tabGoodsMap[tabIndex] ?? GoodsListModel(count: 0, goodsList: []);

    final loadedCount = tabData.goodsList?.length ?? 0;
    if (tabData.count == loadedCount) {
      return;
    }
    final nextPage = (loadedCount / size) + 1;
    _getGoodsByCatalog(
      GoodsListParams(
        categoryId: categoryList![tabIndex].categoryId ?? 0,
        page: nextPage.toInt(),
        size: size,
        keyword: '',
      ),
    );
  }

  Future<Result> _getGoodsByCatalog(GoodsListParams params) async {
    try {
      final result = await goodsService.getGoodsList(params);

      switch (result) {
        case Ok<GoodsListApiModel>():
          {
            int tabIndex = getTabIndexByCategoryId(params.categoryId);
            if (_tabGoodsMap[tabIndex] == null) {
              _tabGoodsMap[tabIndex] = GoodsListModel(count: 0, goodsList: []);
            }
            _tabGoodsMap[tabIndex]!.count = result.value.count ?? 0;
            _tabGoodsMap[tabIndex]!.goodsList?.addAll(
              result.value.goodsList ?? [],
            );
            _log.info('按商品分类加载商品成功');
            return result;
          }
        case Error<GoodsListApiModel>():
          {
            _log.severe('按商品分类加载商品失败', result.error);
            return result;
          }
      }
    } finally {
      notifyListeners();
    }
  }
}
