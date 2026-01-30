import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/infrastructure/services/model/goods_list_api_model/goods_list_api_model.dart';
import 'package:ykd_tea_app/infrastructure/services/model/home/home_service_model.dart';
import 'package:ykd_tea_app/ui/mall/view_models/goods_list_model.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class MallViewModel extends ChangeNotifier {
  static const int size = 10;

  MallViewModel({
    required HomeService homeService,
    required GoodsService goodsService,
  }) : _homeService = homeService,
       _goodsService = goodsService {
    loadCategoryList = Command0(_loadCategoryList);
  }

  int? _initialCategoryId;
  final HomeService _homeService;
  final GoodsService _goodsService;
  final _log = Logger('MallViewModel');

  late Command0 loadCategoryList;

  List<CommunityBuyItem>? _categoryList;
  Map<int, GoodsListModel> _tabGoodsMap = {};

  List<CommunityBuyItem> get categoryList => _categoryList ?? [];

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int value) {
    _currentIndex = value;
    if (_tabGoodsMap[currentIndex] == null) {
      _getGoodsByCatalog(
        GoodsListParams(
          categoryId: _categoryList![currentIndex].categoryId ?? 0,
          page: 1,
          size: size,
          keyword: '',
        ),
      );
    }

    notifyListeners();
  }

  set initialCategoryId(int? value) {
    _initialCategoryId = value;
    loadCategoryList.execute();
  }

  GoodsListModel? getGoodsListByTabIndex(int tabIndex) =>
      _tabGoodsMap[tabIndex];

  int getTabIndexByCategoryId(int categoryId) {
    return _categoryList!.indexWhere(
      (element) => element.categoryId == categoryId,
    );
  }

  void loadMoreGoods(int tabIndex) {
    final tabData = _tabGoodsMap[tabIndex];
    if (tabData == null) {
      return;
    }
    final loadedCount = tabData.goodsList?.length ?? 0;
    if (tabData.count == loadedCount) {
      return;
    }
    final nextPage = (loadedCount / size) + 1;
    _getGoodsByCatalog(
      GoodsListParams(
        categoryId: _categoryList![tabIndex].categoryId ?? 0,
        page: nextPage.toInt(),
        size: size,
        keyword: '',
      ),
    );
  }

  Future<Result> _loadCategoryList() async {
    try {
      final result = await _homeService.getHomeData();
      switch (result) {
        case Ok<HomeServiceModel>():
          _categoryList = result.value.pageList;
          _currentIndex = _initialCategoryId != null
              ? getTabIndexByCategoryId(_initialCategoryId!)
              : 0;
          _getGoodsByCatalog(
            GoodsListParams(
              categoryId: _categoryList![currentIndex].categoryId ?? 0,
              page: 1,
              size: size,
              keyword: '',
            ),
          );
          _log.info('加载商品分类数据成功');
          return result;
        case Error<HomeServiceModel>():
          _log.severe('加载商品分类数据失败', result.error);
          return result;
      }
    } finally {
      notifyListeners();
    }
  }

  Future<Result> _getGoodsByCatalog(GoodsListParams params) async {
    try {
      final result = await _goodsService.getGoodsList(params);

      switch (result) {
        case Ok<GoodsListApiModel>():
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
        case Error<GoodsListApiModel>():
          _log.severe('按商品分类加载商品失败', result.error);
          return result;
      }
    } finally {
      notifyListeners();
    }
  }
}
