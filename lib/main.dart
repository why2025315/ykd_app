import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ykd_tea_app/config/dependencies.dart';
import 'package:ykd_tea_app/config/theme.dart';
import 'package:ykd_tea_app/routing/router.dart';
import 'package:ykd_tea_app/infrastructure/services/error_handler_service.dart';

void main() {
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 初始化错误处理服务，设置全局 BuildContext
    ErrorHandlerService().init(context);
    return MaterialApp.router(routerConfig: router(), theme: themeDataConfig);
  }
}
