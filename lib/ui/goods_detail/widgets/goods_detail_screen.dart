import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_desc.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_top_card.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/normal_querstion.dart';

class GoodsDetailScreen extends StatefulWidget {
  const GoodsDetailScreen({super.key, required this.viewModel});

  final GoodsDetailViewModel viewModel;

  @override
  State<GoodsDetailScreen> createState() => _GoodsDetailScreenState();
}

class _GoodsDetailScreenState extends State<GoodsDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.viewModel.addListener(_onViewModelChanged);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.viewModel.removeListener(_onViewModelChanged);
    super.dispose();
  }

  void _onViewModelChanged() {
    // 当viewModel数据变化时，重建UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final goods = widget.viewModel.goods;
    if (goods == null) return const Center(child: CircularProgressIndicator());
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            expandedHeight: 450,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: NetworkImageCustom(
                      imageUrl: goods?.info?.gallery?[0] ?? '',
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GoodsTopCard(goods: goods?.info),
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
              child: GoodsDesc(goodsDesc: goods?.info?.goodsDesc ?? ''),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 15.0,
              ),
              child: NormalQuerstion(questions: goods?.issue ?? []),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.headphones,
                        size: 22,
                        color: Color(0xFF333333),
                      ),
                      Text(
                        '客服',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FilledButton(
                      onPressed: () {},
                      style: filledButtonStyle,
                      child: const Text('加入购物车'),
                    ),
                    SizedBox(width: 15),
                    FilledButton(
                      onPressed: () {},
                      style: filledButtonStyle,
                      child: const Text('立即购买'),
                    ),
                  ],
                ),
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
