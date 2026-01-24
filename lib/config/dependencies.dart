import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:ykd_tea_app/infrastructure/services/home_service.dart';

List<SingleChildWidget> get providers {
  return [Provider(create: (context) => HomeService())];
}
