import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';

class GoodsDesc extends StatelessWidget {
  const GoodsDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      title: '商品介绍',
      child: Html(data: '<h1>商品介绍</h1><p>这是一个商品介绍，用于展示商品的详细信息。</p>'),
    );
  }
}
