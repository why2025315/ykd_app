import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/ui/sub_category/view_models/sub_category_view_model.dart';
import 'package:ykd_tea_app/ui/sub_category/widgets/goods_card_mini.dart';

class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({super.key, required this.viewModel});

  final SubCategoryViewModel viewModel;

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late List<NavigationRailDestination> _tabs = [];

  @override
  initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
    widget.viewModel.addListener(_onViewModelChanged);
  }

  @override
  dispose() {
    _pageController.dispose();
    widget.viewModel.removeListener(_onViewModelChanged);
    super.dispose();
  }

  void _onViewModelChanged() {
    setState(() {
      _tabs = widget.viewModel.categoryList.map((CommunityBuyItem category) {
        return NavigationRailDestination(
          label: Text(category.name ?? '未知分类'),
          icon: Text(
            category.name ?? '未知分类',
            style: const TextStyle(fontSize: 12),
          ),
          // selectedIcon: SizedBox.shrink(),
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_tabs.isEmpty) return const Center(child: CircularProgressIndicator());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.viewModel.categoryId == 1 ? '零食便利' : '品质百货'),
      ),
      body: Row(
        // 水平布局：左侧 NavigationRail + 右侧内容
        children: [
          // 核心：NavigationRail 竖向 Tab 栏
          NavigationRail(
            // 基础配置
            selectedIndex: widget.viewModel.currentIndex,

            onDestinationSelected: (int index) {
              widget.viewModel.currentIndex = index;
              // 让页面上下滑动到对应索引
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            destinations: _tabs, // Tab 项列表
            indicatorColor: Colors.transparent, // 选中指示器颜色（侧边竖线）
            indicatorShape: const Border(
              bottom: BorderSide(color: Color(0xFF57A749), width: 2),
            ), // 指示器形状
            scrollable: true,
          ),
          // 内容区（占满剩余宽度）
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                widget.viewModel.currentIndex = index;
              },
              children: _tabs
                  .map(
                    (NavigationRailDestination tab) =>
                        _buildTabContent(tab.label.toString()),
                  )
                  .toList(),
            ), // 根据选中索引显示对应内容
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(String tabName) {
    final tabIndex = _tabs.indexWhere(
      (element) => element.label.toString() == tabName,
    );
    final tabData = widget.viewModel.getGoodsListByTabIndex(tabIndex);
    if (tabData == null) {
      return Center(child: Text('暂无数据'));
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification) {
          final metrics = scrollNotification.metrics;
          if (metrics.pixels == metrics.maxScrollExtent) {
            // // 滚动到底部，加载更多数据
            widget.viewModel.loadMoreGoods(tabIndex);
          }
        }
        return false;
      },
      child: ListView.builder(
        itemCount: tabData.goodsList?.length ?? 0,
        itemBuilder: (context, index) {
          final goods = tabData.goodsList?[index];
          return GoodsCardMini(goods: goods!);
        },
      ),
    );
  }
}
