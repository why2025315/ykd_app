import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

// 绿色主题 - 亮色模式 ColorScheme
final ThemeData lightThemeDataConfig = ThemeData(
  // This is the theme of your application.
  //
  // TRY THIS: Try running your application with "flutter run". You'll see
  // the application has a purple toolbar. Then, without quitting the app,
  // try changing the seedColor in the colorScheme below to Colors.green
  // and then invoke "hot reload" (save your changes or press the "hot
  // reload" button in a Flutter-supported IDE, or press "r" if you used
  // the command line to start the app).
  //
  // Notice that the counter didn't reset back to zero; the application
  // state is not lost during the reload. To reset the state, use hot
  // restart instead.
  //
  // This works for code too, not just values: Most code changes can be
  // tested with just a hot reload.
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
  // colorScheme: ColorScheme(
  //   // 基础亮度模式
  //   brightness: Brightness.light,

  //   // 核心主色（微信绿）
  //   primary: primaryColor, // 微信品牌绿（按钮/选中态）
  //   onPrimary: Colors.white, // 主色上的文字/图标（白色保证对比）
  //   primaryContainer: const Color(0xFFE8F5E9), // 主色柔和版（卡片/背景）
  //   onPrimaryContainer: primaryColor, // 主色容器上的内容色
  //   // 次要色（辅助交互）
  //   secondary: primaryColor, // 微信深绿（次要按钮）
  //   onSecondary: Colors.white, // 次要色上的内容色
  //   secondaryContainer: const Color(0xFFF0F9F0), // 次要色柔和版
  //   onSecondaryContainer: primaryColor, // 次要容器内容色
  //   // 错误/提示色（微信红）
  //   error: const Color(0xFFF53F3F), // 微信错误红
  //   onError: Colors.white, // 错误色上的内容色
  //   errorContainer: const Color(0xFFFEEEEE), // 错误色柔和版
  //   onErrorContainer: const Color(0xFFD32F2F), // 错误容器内容色
  //   // 背景/表面色（微信中性色）
  //   surface: Colors.white, // 组件背景（卡片/按钮）
  //   onSurface: const Color(0xFF333333), // 组件文字
  //   // 中性/边框色（微信灰阶）
  //   onSurfaceVariant: const Color(0xFF888888), // 变体文字（中灰）
  //   outline: const Color.fromRGBO(194, 194, 194, 1), // 边框色（极浅灰）
  //   outlineVariant: const Color.fromRGBO(242, 242, 242, 1), // 边框变体色（极浅灰）
  //   // 扩展属性（可选）
  //   shadow: const Color(0x1F000000), // 阴影色（轻微黑色）
  //   scrim: const Color(0x80000000), // 遮罩色
  //   inverseSurface: const Color(0xFF1A1A1A), // 反色表面（暗色模式过渡）
  //   onInverseSurface: Colors.white, // 反色内容色
  //   inversePrimary: const Color(0xFFB2F2BB), // 反色主色
  // ),
  scaffoldBackgroundColor: Colors.white, // 设置背景色为白色
  primaryColor: primaryColor,
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
    side: BorderSide(color: primaryColor, width: 2),
  ),
  buttonTheme: ButtonThemeData(buttonColor: primaryColor),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(backgroundColor: primaryColor),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.fromMap({
      WidgetState.selected: Colors.white,
    }),
    trackColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
    trackOutlineColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
  ),
);

// 灰色主题 - 暗色模式 ColorScheme
final ThemeData darkThemeDataConfig = ThemeData(
  // This is the theme of your application.
  //
  // TRY THIS: Try running your application with "flutter run". You'll see
  // the application has a purple toolbar. Then, without quitting the app,
  // try changing the seedColor in the colorScheme below to Colors.green
  // and then invoke "hot reload" (save your changes or press the "hot
  // reload" button in a Flutter-supported IDE, or press "r" if you used
  // the command line to start the app).
  //
  // Notice that the counter didn't reset back to zero; the application
  // state is not lost during the reload. To reset the state, use hot
  // restart instead.
  //
  // This works for code too, not just values: Most code changes can be
  // tested with just a hot reload.
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: Colors.white, // 设置背景色为白色
  primaryColor: primaryColor,
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
    side: BorderSide(color: primaryColor, width: 2),
  ),
  buttonTheme: ButtonThemeData(buttonColor: primaryColor),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(backgroundColor: primaryColor),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.fromMap({
      WidgetState.selected: Colors.white,
    }),
    trackColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
    trackOutlineColor: WidgetStateProperty.fromMap({
      WidgetState.selected: primaryColor,
    }),
  ),
);
