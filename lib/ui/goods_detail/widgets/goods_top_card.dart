import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_service_list.dart';

class GoodsTopCard extends StatelessWidget {
  const GoodsTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GoodsServiceList(),
            const SizedBox(height: 10),
            Text('商品详情', style: KtextStyle.titleText),
            const SizedBox(height: 10),
            Text('商品详情', style: KtextStyle.descriptionText),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('已售: 15525', style: KtextStyle.greenText),
                Text('￥999.99', style: KtextStyle.titleText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
