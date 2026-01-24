import 'package:flutter/material.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabInCustomScrollView();
  }
}

class TabInCustomScrollView extends StatefulWidget {
  const TabInCustomScrollView({super.key});

  @override
  _TabInCustomScrollViewState createState() => _TabInCustomScrollViewState();
}

class _TabInCustomScrollViewState extends State<TabInCustomScrollView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = ['Tab1', 'Tab2', 'Tab3'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // 顶部 SliverAppBar
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('CustomScrollView with Tabs'),
                background: Container(
                  color: Colors.blue,
                  child: Center(child: Text('Header Content')),
                ),
              ),
            ),

            // TabBar
            SliverPersistentHeader(
              delegate: _SliverTabBarDelegate(
                TabBar(
                  controller: _tabController,
                  tabs: tabs.map((tab) => Tab(text: tab)).toList(),
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white70,
                ),
                backgroundColor: Colors.blue[700]!,
              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((tab) => _buildTabContent(tab)).toList(),
        ),
      ),
    );
  }

  Widget _buildTabContent(String tabName) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              '$tabName Content',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('$tabName Item ${index + 1}'),
              subtitle: Text('This is item content in $tabName'),
            ),
            childCount: 20,
          ),
        ),
      ],
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
