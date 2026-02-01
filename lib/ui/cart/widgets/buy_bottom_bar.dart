import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/cart/view_models/cart_view_model.dart';

class BuyBottomBar extends StatelessWidget {
  const BuyBottomBar({super.key, required this.viewModel});

  final CartViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 20,
        children: [
          Expanded(
            child: ListenableBuilder(
              listenable: viewModel,
              builder: (context, child) {
                return RichText(
                  text: TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                        text: '合计：',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text:
                            '￥${viewModel.cartGoodsList?.cartTotal?.checkedGoodsAmount ?? 0}',
                        style: priceTextStyle,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          FilledButton(
            onPressed: () {
              context.push(Routes.orderCheckout, extra: {'cartId': 0});
            },
            style: FilledButton.styleFrom(backgroundColor: primaryColor),
            child: const Text('去结算'),
          ),
        ],
      ),
    );
  }
}

const priceTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Colors.red,
);
