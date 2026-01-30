import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/routes.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/home_unselected.png'),
          activeIcon: Image.asset('assets/images/home_selected.png'),
          label: '首页',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/mall_unselected.png'),
          activeIcon: Image.asset('assets/images/mall_selected.png'),
          label: '商城',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/mine_unselected.png'),
          activeIcon: Image.asset('assets/images/mine_selected.png'),
          label: '我的',
        ),
      ],
      currentIndex: _calculateSelectedIndex(context),
      onTap: (index) => _onItemTapped(index, context),
      backgroundColor: Colors.white, // 设置底部导航背景色为纯白色
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    final index = TabItem.values.indexWhere((item) => location.startsWith(item.route));
    // 确保返回有效的索引，默认为 0
    return index >= 0 ? index : 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    GoRouter.of(context).go(TabItem.values[index].route);
  }
}

enum TabItem {
  home("首页", Routes.home),
  mall("商城", Routes.mall),
  mine("我的", Routes.mine);

  final String title;
  final String route;
  const TabItem(this.title, this.route);
}
