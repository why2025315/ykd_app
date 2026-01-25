import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_navigation_bar_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_detail_screen.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/home/widgets/home_screen.dart';
import 'package:ykd_tea_app/ui/mall/widgets/mall_screen.dart';
import 'package:ykd_tea_app/ui/mime/widgets/mine_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBarCustom(),
        );
      },
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            // 从Provider获取viewModel，避免每次重建
            final viewModel = context.read<HomeViewModel>();
            return HomeScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.mall,
          builder: (context, state) => const MallScreen(),
        ),
        GoRoute(
          path: Routes.mine,
          builder: (context, state) => const MineScreen(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.goodsDetail,
      builder: (context, state) =>
          GoodsDetailScreen(goodsId: state.pathParameters['goodsId']!),
    ),
  ],
);
