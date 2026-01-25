import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_desc.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_top_card.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/normal_querstion.dart';

class GoodsDetailScreen extends StatelessWidget {
  const GoodsDetailScreen({super.key, required this.goodsId});

  final String goodsId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('商品详情'),
            pinned: false,
            expandedHeight: 450,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GoodsTopCard(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 15.0,
              ),
              child: GoodsDesc(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 15.0,
              ),
              child: NormalQuerstion(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Icon(Icons.headphones), Text('客服')],
                  ),
                ),
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('加入购物车'),
                style: filledButtonStyle,
              ),
              SizedBox(width: 15),
              FilledButton(
                onPressed: () {},
                child: const Text('立即购买'),
                style: filledButtonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final filledButtonStyle = FilledButton.styleFrom(
  backgroundColor: primaryColor,
  foregroundColor: Colors.white,
);
