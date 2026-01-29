import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/useinfo/userinfo.dart';
import 'package:ykd_tea_app/infrastructure/services/user_manager.dart';

class MineViewModel extends ChangeNotifier {
  MineViewModel({required this.userManager});

  late UserManager userManager;

  UserInfo? get userInfo => userManager.userInfo;

  bool get isLogin => userManager.isLoggedIn;
}
