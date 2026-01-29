import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/ui/core/mixin/goods_category_mixin.dart';
import 'package:ykd_tea_app/utils/command.dart';
import 'package:ykd_tea_app/utils/result.dart';

class SubCategoryViewModel extends ChangeNotifier with GoodsCategoryMixin {
  final GoodsService goodsService;
  int? _categoryId;

  SubCategoryViewModel({required this.goodsService}) {
    getCategoryList = Command1(_getSubCategory);
  }

  List<CommunityBuyItem>? _categoryList;

  List<CommunityBuyItem> get categoryList => _categoryList ?? [];
  late Command1<List<CommunityBuyItem>, int> getCategoryList;
  int? get categoryId => _categoryId;

  void setCategoryId(int? value) {
    if (_categoryId != value) {
      resetGoodsList();
      _categoryId = value;
      getCategoryList.execute(_categoryId!);
    }
  }

  Future<Result<List<CommunityBuyItem>>> _getSubCategory(int categoryId) async {
    try {
      final result = await goodsService.getSubCategory(categoryId);

      switch (result) {
        case Ok<List<CommunityBuyItem>>():
          {
            _categoryList = result.value;
            currentIndex = 0;
            return result;
          }
        case Error<List<CommunityBuyItem>>():
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
}
