import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class GoodsServiceList extends StatelessWidget {
  const GoodsServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 2,
          children: [
            Icon(Icons.diamond, size: 12, color: primaryColor),
            Text('品质保证', style: KtextStyle.greenText),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 2,
          children: [
            Icon(Icons.card_giftcard, size: 12, color: primaryColor),
            Text('主副卡寄送服务', style: KtextStyle.greenText),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 2,
          children: [
            Icon(Icons.delivery_dining, size: 12, color: primaryColor),
            Text('全场包邮(0元购商品除外)', style: KtextStyle.greenText),
          ],
        ),
      ],
    );
  }
}
