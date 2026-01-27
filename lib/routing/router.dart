import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_navigation_bar_custom.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_detail_screen.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/home/widgets/home_screen.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/ui/login/widgets/login_screen.dart';
import 'package:ykd_tea_app/ui/mall/view_models/mall_view_model.dart';
import 'package:ykd_tea_app/ui/mall/widgets/mall_screen.dart';
import 'package:ykd_tea_app/ui/mime/widgets/mine_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router() => GoRouter(
  initialLocation: Routes.mall,
  navigatorKey: rootNavigatorKey,
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
          builder: (context, state) =>
              MallScreen(viewModel: context.read<MallViewModel>()),
        ),
        GoRoute(
          path: Routes.mine,
          builder: (context, state) => const MineScreen(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.goodsDetail,
      builder: (context, state) {
        final _goodsId = state.pathParameters['goodsId'];
        // 从Provider获取viewModel，避免每次重建
        final viewModel = context.read<GoodsDetailViewModel>();
        // 设置商品ID并加载数据
        viewModel.setGoodsId(_goodsId!);
        return GoodsDetailScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) =>
          LoginScreen(viewModel: context.read<LoginViewModel>()),
    ),
    GoRoute(path: '/', redirect: (context, state) => Routes.home),
  ],
);
