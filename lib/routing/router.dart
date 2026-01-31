import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/cart/view_models/cart_view_model.dart';
import 'package:ykd_tea_app/ui/cart/widgets/cart_screen.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/goods_detail_screen.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/home/widgets/home_screen.dart';
import 'package:ykd_tea_app/ui/layout/widgets/layout_screen.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/ui/login/widgets/login_screen.dart';
import 'package:ykd_tea_app/ui/mall/view_models/mall_view_model.dart';
import 'package:ykd_tea_app/ui/mall/widgets/mall_screen.dart';
import 'package:ykd_tea_app/ui/mime/view_models/mine_view_model.dart';
import 'package:ykd_tea_app/ui/mime/widgets/mine_screen.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/order_checkout_screen.dart';
import 'package:ykd_tea_app/ui/sub_category/view_models/sub_category_view_model.dart';
import 'package:ykd_tea_app/ui/sub_category/widgets/sub_category_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  navigatorKey: rootNavigatorKey,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return LayoutScreen(
          viewModel: context.read<LayoutViewModel>(),
          child: child,
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
          builder: (context, state) {
            final viewModel = context.read<MallViewModel>();
            if (state.extra != null) {
              viewModel.initialCategoryId = state.extra as int?;
            } else {
              viewModel.initialCategoryId = null;
            }
            return MallScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          path: Routes.mine,
          builder: (context, state) =>
              MineScreen(viewModel: context.read<MineViewModel>()),
        ),
      ],
    ),
    GoRoute(
      path: Routes.goodsDetail,
      builder: (context, state) {
        final goodsId = state.pathParameters['goodsId'];
        // 从Provider获取viewModel，避免每次重建
        final viewModel = context.read<GoodsDetailViewModel>();
        // 设置商品ID并加载数据
        viewModel.setGoodsId(goodsId!);
        return GoodsDetailScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      path: Routes.category,
      builder: (context, state) {
        final categoryId = state.pathParameters['categoryId'];
        final viewModel = context.read<SubCategoryViewModel>();
        viewModel.setCategoryId(int.parse(categoryId!));
        return SubCategoryScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) =>
          LoginScreen(viewModel: context.read<LoginViewModel>()),
    ),
    GoRoute(
      path: Routes.cart,
      builder: (context, state) {
        final viewModel = context.read<CartViewModel>();
        viewModel.load.execute();
        return CartScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      path: Routes.orderCheckout,
      builder: (context, state) {
        final viewModel = context.read<OrderCheckoutViewModel>();
        // 处理 extra 参数
        if (state.extra != null && state.extra is Map) {
          final extra = state.extra as Map;
          if (extra.containsKey('cartId')) {
            viewModel.cartId = extra['cartId'] as int;
          }
        }
        return OrderCheckoutScreen(viewModel: viewModel);
      },
    ),
    GoRoute(path: '/', redirect: (context, state) => Routes.home),
  ],
);
