import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';
import 'package:ykd_tea_app/ui/home/view_models/home_view_model.dart';

List<SingleChildWidget> get providers {
  return [
    Provider(create: (context) => HomeService()),
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(homeService: context.read()),
    ),
  ];
}
