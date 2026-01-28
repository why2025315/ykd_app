import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ykd_tea_app/config/app_ui_state.dart';
import 'package:ykd_tea_app/domain/models/user/user_manager.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';
import 'package:ykd_tea_app/ui/mall/view_models/mall_view_model.dart';
import 'package:ykd_tea_app/ui/sub_category/view_models/sub_category_view_model.dart';

List<SingleChildWidget> get providers {
  return [
    // 核心服务
    ChangeNotifierProvider(create: (context) => UserManager()),
    ChangeNotifierProvider(create: (context) => AppUIState()),
    Provider(
      create: (context) => ApiClient(userManager: context.read<UserManager>()),
    ),
    Provider(
      create: (context) => AuthService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => HomeService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => GoodsService(apiClient: context.read<ApiClient>()),
    ),
    ChangeNotifierProvider(
      create: (context) =>
          HomeViewModel(homeService: context.read<HomeService>()),
    ),
    ChangeNotifierProvider(
      create: (context) => LoginViewModel(
        authService: context.read<AuthService>(),
        userManager: context.read<UserManager>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => GoodsDetailViewModel(
        goodsService: context.read<GoodsService>(),
        appUIState: context.read<AppUIState>(),
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
  ];
}
