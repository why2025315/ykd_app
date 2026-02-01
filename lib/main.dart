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
    return MaterialApp.router(
      routerConfig: router(),
      theme: lightThemeDataConfig,
      darkTheme: darkThemeDataConfig,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // 在 MaterialApp 构建完成后初始化错误处理服务，获取正确的 context
        ErrorHandlerService().init(context);
        return child!;
      },
    );
  }
}
