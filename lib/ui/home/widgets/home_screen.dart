import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ykd_tea_app/infrastructure/services/model/home/home_service_model.dart';
import 'package:ykd_tea_app/ui/core/ui/goods_card.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/home/widgets/community_buy_section.dart';
import 'package:ykd_tea_app/ui/home/widgets/new_user_receive_coupon.dart';
import 'package:ykd_tea_app/ui/home/widgets/top_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  late HomeServiceModel homeData;

  List<String> get tabs =>
      widget.viewModel.homeData?.homePageGoods.keys.toList() ?? [];

  @override
  void initState() {
    super.initState();

    _initTabController();
    widget.viewModel.addListener(_onViewModelChanged);
  }

  @override
  dispose() {
    widget.viewModel.removeListener(_onViewModelChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _initTabController() {
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void _onViewModelChanged() {
    // 当viewModel数据变化时，重建UI
    if (_tabController.length != tabs.length) {
      // 先销毁旧的controller
      _tabController.dispose();
      // 创建新的controller
      _initTabController();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: const Text('一刻达商超'),
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                // title: const Text('一刻达商超'),
                background: TopBanner(
                  banners: viewModel.homeData?.banner ?? [],
                ),
              ),
            ),
            SliverToBoxAdapter(child: NewUserReceiveCoupon()),
            SliverToBoxAdapter(
              child: CommunityBuySection(
                list: viewModel.homeData?.pageList ?? [],
              ),
            ),
            if (tabs.isNotEmpty)
              SliverPersistentHeader(
                delegate: _SliverTabBarDelegate(
                  TabBar(
                    controller: _tabController,
                    tabs: tabs.map((tab) => Tab(text: tab)).toList(),
                    isScrollable: true,
                    indicatorColor: Color(0xFF57A749),
                    indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xFF57A749),
                      ),
                      insets: EdgeInsets.symmetric(
                        horizontal: 30,
                      ), // 调整左右内边距，减小指示器宽度
                    ),
                    labelPadding: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    labelColor: Color(0xFF57A749),
                    dividerColor: Colors.transparent,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    unselectedLabelColor: Color(0xFF767676),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
                pinned: true,
              ),
          ];
        },
        body: tabs.isNotEmpty
            ? TabBarView(
                controller: _tabController,
                children: tabs.map((tab) => _buildTabContent(tab)).toList(),
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _buildTabContent(String tabName) {
    final goodsList = widget.viewModel.homeData?.homePageGoods[tabName] ?? [];
    return MasonryGridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2, // 一行两列
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: goodsList.length,
      itemBuilder: (context, index) {
        final goods = goodsList[index];
        return GoodsCard(goods: goods);
      },
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final Color backgroundColor;

  _SliverTabBarDelegate(this.tabBar, {required this.backgroundColor});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: backgroundColor, child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant _SliverTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar ||
        backgroundColor != oldDelegate.backgroundColor;
  }
}
