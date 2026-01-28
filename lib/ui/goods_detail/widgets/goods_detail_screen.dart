import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/core/ui/buy_toolbar.dart';
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
    // 1. 获取系统参数
    final mediaQuery = MediaQuery.of(context);
    final statusBarHeight = mediaQuery.padding.top; // 状态栏高度
    final navBarHeight = 44.0;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 450,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: NetworkImageCustom(
                          imageUrl: goods.info?.gallery?[0] ?? '',
                        ),
                      ),
                      Positioned(
                        top: 270,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: GoodsTopCard(goods: goods.info!),
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            // 悬浮层高度：状态栏 + 操作按钮区域
            height: statusBarHeight + navBarHeight,
            child: Container(
              color: Colors.transparent, // 透明背景，不遮挡Body
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // 1. 返回按钮（永久置顶，覆盖在Body顶部）
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      top: statusBarHeight, // 适配状态栏，垂直居中
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 14,
                      ),
                      onPressed: () => Navigator.pop(context),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black.withValues(alpha: .3),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(4),
                        fixedSize: const Size.square(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BuyToolbar(viewModel: widget.viewModel),
    );
  }
}
