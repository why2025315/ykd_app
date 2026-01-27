import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/core/ui/sku_dialog.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';

class BuyToolbar extends StatelessWidget {
  const BuyToolbar({super.key, required this.viewModel});
  final GoodsDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final goods = viewModel.goods;
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: TextButton(
                onPressed: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.headphones, size: 22, color: Color(0xFF333333)),
                    Text(
                      '客服',
                      style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilledButton(
                    onPressed: () {
                      _showSkuDialog(
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
                      _showSkuDialog(
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

  void _showSkuDialog(Widget child, BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Stack(
        children: [
          Container(
            height: 350,
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
}

final filledButtonStyle = FilledButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
);
