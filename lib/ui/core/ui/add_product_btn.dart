import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/buy_toolbar.dart';
import 'package:ykd_tea_app/ui/core/ui/sku_dialog.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';

class AddProductBtn extends StatelessWidget {
  const AddProductBtn({super.key, required this.goodsId});
  final int goodsId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      padding: EdgeInsets.zero,
      style: IconButton.styleFrom(
        backgroundColor: primaryColor,
        fixedSize: Size(25, 25),
        padding: EdgeInsets.zero,
        iconSize: 18,
      ),
      constraints: const BoxConstraints(),
      icon: Icon(Icons.add),
      onPressed: () {
        final GoodsDetailViewModel viewModel = context
            .read<GoodsDetailViewModel>();
        viewModel.setGoodsId(goodsId.toString());
        // 隐藏底部导航栏
        viewModel.appUIState.setBottomBarVisible(false);
        showSkuDialog(SkuDialog(viewModel: viewModel), context);
      },
    );
  }
}
