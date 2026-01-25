import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class GoodsServiceList extends StatelessWidget {
  const GoodsServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.diamond, size: 14, color: primaryColor),
            SizedBox(width: 5),
            Text('品质保证', style: KtextStyle.greenText),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.card_giftcard, size: 14, color: primaryColor),
            SizedBox(width: 5),
            Text('主副卡寄送服务', style: KtextStyle.greenText),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.delivery_dining, size: 14, color: primaryColor),
            SizedBox(width: 5),
            Text('全场包邮(0元购商品除外)', style: KtextStyle.greenText),
          ],
        ),
      ],
    );
  }
}
