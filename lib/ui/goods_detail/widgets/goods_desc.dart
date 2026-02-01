import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';

class GoodsDesc extends StatelessWidget {
  const GoodsDesc({super.key, required this.goodsDesc});

  final String goodsDesc;

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      title: '商品介绍',
      child: NetworkImageCustom(imageUrl: goodsDesc, fit: BoxFit.fitWidth),
    );
  }
}
