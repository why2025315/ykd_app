import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_service_list.dart';

class GoodsTopCard extends StatelessWidget {
  const GoodsTopCard({super.key, required this.goods});

  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoodsServiceList(),
          const SizedBox(height: 10),
          Text(goods.name ?? '', style: KtextStyle.titleText),
          const SizedBox(height: 10),
          Text(goods.goodsBrief ?? '', style: KtextStyle.descriptionText),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('已售: ${goods.salesNum ?? 0}', style: KtextStyle.greenText),
              Text('￥${goods.retailPrice ?? 0.0}', style: KtextStyle.titleText),
            ],
          ),
        ],
      ),
    );
  }
}
