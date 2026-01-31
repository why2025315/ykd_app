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
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 20,
        children: [
          ListenableBuilder(
            listenable: viewModel,
            builder: (context, child) {
              return RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: '合计：',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          '${viewModel.cartGoodsList?.cartTotal?.checkedGoodsAmount ?? 0}',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    TextSpan(
                      text: '元 共计 ',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          '${viewModel.cartGoodsList?.cartTotal?.goodsCount ?? 0}',
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                    TextSpan(
                      text: ' 件商品',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              );
            },
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                context.push(Routes.orderCheckout, extra: {'cartId': 0});
              },
              style: FilledButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              child: const Text('去结算'),
            ),
          ),
        ],
      ),
    );
  }
}
