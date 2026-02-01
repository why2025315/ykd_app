import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/core/ui/goods_card.dart';
import 'package:ykd_tea_app/ui/core/ui/search_bar_custom.dart';
import 'package:ykd_tea_app/ui/mall/widgets/top_card.dart';
import 'package:ykd_tea_app/ui/mall/view_models/mall_view_model.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key, required this.viewModel});

  final MallViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return TabInCustomScrollView(viewModel: viewModel);
  }
}

class TabInCustomScrollView extends StatefulWidget {
  const TabInCustomScrollView({super.key, required this.viewModel});

  final MallViewModel viewModel;

  @override
  _TabInCustomScrollViewState createState() => _TabInCustomScrollViewState();
}

class _TabInCustomScrollViewState extends State<TabInCustomScrollView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  late List<Tab> _tabs = [];

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_onViewModelChange);

    widget.viewModel.loadCategoryList.addListener(_onLoadCategoryList);
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
      initialIndex: widget.viewModel.currentIndex,
    )..addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    widget.viewModel.removeListener(_onViewModelChange);
    super.dispose();
  }

  void _onTabChanged() {
    if (mounted) {
      setState(() {
        widget.viewModel.currentIndex = _tabController.index;
      });
    }
  }

  void _onLoadCategoryList() {
    if (widget.viewModel.loadCategoryList.completed) {
      _tabs = widget.viewModel.categoryList.map((category) {
        return Tab(text: category.name);
      }).toList();
      if (_tabController.length != _tabs.length) {
        _tabController.removeListener(_onTabChanged);
        _tabController.dispose();
      }
      _tabController = TabController(
        length: _tabs.length,
        vsync: this,
        initialIndex: widget.viewModel.currentIndex,
      )..addListener(_onTabChanged);
      widget.viewModel.loadCategoryList.removeListener(_onLoadCategoryList);
    }
  }

  void _onViewModelChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: Text('一刻达商超'),
                  centerTitle: true,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                      bottom: 8,
                    ),
                    child: Row(
                      spacing: 16,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TopCard(
                            title: '零食便利',
                            subTitle: '零食/饮料/槟榔',
                            bgImagePath: 'assets/images/bg_ls.png',
                            onTap: () {
                              context.push('/category/1');
                            },
                          ),
                        ),
                        Expanded(
                          child: TopCard(
                            title: '品质百货',
                            subTitle: '杯子/家居/茶具',
                            bgImagePath: 'assets/images/bg_bh.png',
                            onTap: () {
                              context.push('/category/2');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: SearchBarCustom(),
                  ),
                ),

                // TabBar
                SliverPersistentHeader(
                  delegate: _SliverTabBarDelegate(
                    TabBar(
                      controller: _tabController,
                      tabs: _tabs,
                      tabAlignment: TabAlignment.start,
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
                          vertical: 5,
                        ), // 调整左右内边距，减小指示器宽度
                      ),
                      labelPadding: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      labelColor: Color(0xFF57A749),
                      dividerColor: Colors.transparent,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                      unselectedLabelColor: Color(0xFF767676),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      // onTap: (index) {
                      //   widget.viewModel.currentIndex = index;
                      // },
                    ),
                    backgroundColor: Colors.white,
                  ),
                  pinned: true,
                ),
              ];
            },
            body: _tabs.isEmpty
                ? Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: _tabController,
                    children: _tabs
                        .map((Tab tab) => _buildTabContent(tab.text!))
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(String tabName) {
    final tabIndex = _tabs.indexWhere((element) => element.text == tabName);
    final tabData = widget.viewModel.getGoodsListByTabIndex(tabIndex);
    if (tabData == null) {
      return Center(child: Text('暂无数据'));
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification) {
          final metrics = scrollNotification.metrics;
          if (metrics.pixels == metrics.maxScrollExtent) {
            // 滚动到底部，加载更多数据
            widget.viewModel.loadMoreGoods(tabIndex);
          }
        }
        return false;
      },
      child: MasonryGridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2, // 一行两列
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: tabData.goodsList?.length ?? 0,
        itemBuilder: (context, index) {
          if (index == tabData.goodsList?.length) {
            // 显示加载更多指示器
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            );
          }
          final goods = tabData.goodsList?[index];
          return GoodsCard(goods: goods!);
        },
      ),
    );
  }
}

// SliverPersistentHeader 代理类
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
