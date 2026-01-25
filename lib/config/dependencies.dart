import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/infrastructure/services/goods_service.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/ui/goods_detail/view_models/goods_detail_view_model.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';

List<SingleChildWidget> get providers {
  return [
    Provider(create: (context) => ApiClient()),
    Provider(
      create: (context) => HomeService(apiClient: context.read<ApiClient>()),
    ),
    Provider(
      create: (context) => GoodsService(apiClient: context.read<ApiClient>()),
    ),
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(homeService: context.read()),
    ),
  ];
}
