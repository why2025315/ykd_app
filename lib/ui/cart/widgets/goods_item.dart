import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/domain/models/cart_goods_item/cart_goods_item.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class GoodsItem extends StatelessWidget {
  const GoodsItem({
    super.key,
    required this.goods,
    this.onUpdateCheck,
    this.onUpdateCart,
    required this.isCheck,
  });

  final CartGoodsItem? goods;
  final ValueChanged<bool>? onUpdateCheck;
  final ValueChanged<int>? onUpdateCart;
  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Row(
            spacing: 5,
            children: [
              Checkbox(
                value: isCheck,
                onChanged: (value) {
                  onUpdateCheck?.call(value ?? false);
                },
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(15),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // 阴影方向
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: NetworkImageCustom(
                    imageUrl: goods?.picUrl ?? '',
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        goods?.goodsName ?? '',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '￥${goods?.price ?? 0}',
                        style: KtextStyle.titleText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CartStepper(
              value: goods?.number ?? 0,
              size: 20,
              alwaysExpanded: true,
              editKeyboardType: TextInputType.number,
              style: CartStepperStyle(
                foregroundColor: Colors.black87,
                activeForegroundColor: Colors.black87,
                activeBackgroundColor: Colors.white,
                border: Border.all(color: Colors.grey),
                radius: const Radius.circular(3),
                elevation: 0,
                buttonAspectRatio: 1.5,
              ),
              didChangeCount: (count) {
                onUpdateCart?.call(count);
              },
            ),
          ),
        ],
      ),
    );
  }
}
