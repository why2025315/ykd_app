// 应用程序 UI 状态管理类
import 'package:flutter/material.dart';

class AppUIState extends ChangeNotifier {
  // 底部导航栏可见性
  bool _isBottomBarVisible = true;

  // 其他 UI 状态...
  // bool _isSomeOtherUIElementVisible = false;

  bool get isBottomBarVisible => _isBottomBarVisible;

  void setBottomBarVisible(bool visible) {
    _isBottomBarVisible = visible;
    notifyListeners();
  }

  // 其他状态管理方法...
}
