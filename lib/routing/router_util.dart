import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/router.dart';

class RouterUtil {
  // 无context跳转首页
  static void jumpToHome() {
    // 方式1：直接用 go_router 的 go 方法（推荐）
    if (rootNavigatorKey.currentContext != null) {
      GoRouter.of(rootNavigatorKey.currentContext!).go('/home');
    }

    // 方式2：通过 NavigatorState 跳转（兼容传统方式）
    // rootNavigatorKey.currentState?.pushReplacementNamed('/home');
  }

  // 无context返回上一页
  static void pop() {
    if (rootNavigatorKey.currentContext != null) {
      GoRouter.of(rootNavigatorKey.currentContext!).pop();
    }
  }

  // 无context跳转并传参
  static void jumpToLogin() {
    if (rootNavigatorKey.currentContext != null) {
      GoRouter.of(rootNavigatorKey.currentContext!).push('/login');
    }
  }
}
