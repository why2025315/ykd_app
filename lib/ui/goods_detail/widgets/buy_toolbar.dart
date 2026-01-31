import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';
import 'package:ykd_tea_app/ui/core/ui/customer_service.dart';
import 'package:ykd_tea_app/ui/core/ui/sku_dialog.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';

class BuyToolbar extends StatelessWidget {
  const BuyToolbar({super.key, required this.viewModel});
  final GoodsDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BottomAppBarCustom(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Row(
          children: [
            CustomerService(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilledButton(
                    onPressed: () {
                      showSkuDialog(
                        SkuDialog(
                          viewModel: viewModel,
                          type: SkuDialogType.addCart,
                        ),
                        context,
                      );
                    },
                    style: filledButtonStyle,
                    child: const Text('加入购物车'),
                  ),
                  SizedBox(width: 15),
                  FilledButton(
                    onPressed: () {
                      showSkuDialog(
                        SkuDialog(
                          viewModel: viewModel,
                          type: SkuDialogType.buyNow,
                        ),
                        context,
                      );
                    },
                    style: filledButtonStyle,
                    child: const Text('立即购买'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showSkuDialog(Widget child, BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Stack(
      children: [
        Container(
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.all(20),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: child,
        ),
        Positioned(top: 10, right: 10, child: CloseButton()),
      ],
    ),
  );
}

final filledButtonStyle = FilledButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
);
