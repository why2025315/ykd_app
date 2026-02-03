import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ykd_tea_app/config/app_share_state.dart';
import 'package:ykd_tea_app/config/app_ui_state.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/infrastructure/services/order_service.dart';
import 'package:ykd_tea_app/infrastructure/services/user_manager.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_add_view_model.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_view_model.dart';
import 'package:ykd_tea_app/ui/cart/view_models/cart_view_model.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/ui/mall/view_models/mall_view_model.dart';
import 'package:ykd_tea_app/ui/mime/view_models/mine_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_detail/view_models/order_detail_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_list/view_models/order_list_view_model.dart';
import 'package:ykd_tea_app/ui/sub_category/view_models/sub_category_view_model.dart';

List<SingleChildWidget> get providers {
  // 初始化UserManager 确保在Provider之前调用
  final userManager = UserManager();
  // userManager.initialize();
  return [
    // 核心服务
    ChangeNotifierProvider(create: (context) => userManager),
    ChangeNotifierProvider(create: (context) => AppUIState()),

    Provider(
      create: (context) => ApiClient(userManager: context.read<UserManager>()),
    ),
    Provider(
      create: (context) => CartService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => AuthService(apiClient: context.read<ApiClient>()),
    ),
    ChangeNotifierProvider(
      create: (context) => AppShareState(
        authService: context.read<AuthService>(),
        userManager: context.read<UserManager>(),
      ),
    ),
    Provider(
      create: (context) => HomeService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => GoodsService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => OrderService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => AddressService(apiClient: context.read<ApiClient>()),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          HomeViewModel(homeService: context.read<HomeService>()),
    ),
    ChangeNotifierProvider(
      create: (context) => LoginViewModel(
        authService: context.read<AuthService>(),
        userManager: context.read<UserManager>(),
        appShareState: context.read<AppShareState>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => GoodsDetailViewModel(
        goodsService: context.read<GoodsService>(),
        appUIState: context.read<AppUIState>(),
        cartService: context.read<CartService>(),
        appShareState: context.read<AppShareState>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => MallViewModel(
        homeService: context.read<HomeService>(),
        goodsService: context.read<GoodsService>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          SubCategoryViewModel(goodsService: context.read<GoodsService>()),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          MineViewModel(userManager: context.read<UserManager>()),
    ),
    ChangeNotifierProvider(
      create: (context) => LayoutViewModel(
        appUIState: context.read<AppUIState>(),
        appShareState: context.read<AppShareState>(),
        loginViewModel: context.read<LoginViewModel>(),
        cartService: context.read<CartService>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => CartViewModel(
        cartService: context.read<CartService>(),
        appShareState: context.read<AppShareState>(),
        layoutViewModel: context.read<LayoutViewModel>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => OrderCheckoutViewModel(
        orderService: context.read<OrderService>(),
        cartService: context.read<CartService>(),
        addressService: context.read<AddressService>(),
        layoutViewModel: context.read<LayoutViewModel>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => AddressViewModel(
        addressService: context.read<AddressService>(),
        appShareState: context.read<AppShareState>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          AddressAddViewModel(addressService: context.read<AddressService>()),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          OrderDetailViewModel(orderService: context.read<OrderService>()),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          OrderListViewModel(orderService: context.read<OrderService>()),
    ),
  ];
}
