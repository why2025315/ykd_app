import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/exceptions/network_exception.dart';

/// 全局错误处理服务
class ErrorHandlerService {
  static final ErrorHandlerService _instance = ErrorHandlerService._internal();
  factory ErrorHandlerService() => _instance;
  ErrorHandlerService._internal();

  /// 全局 BuildContext，用于显示错误提示
  BuildContext? _context;

  /// 初始化错误处理服务，设置全局 BuildContext
  void init(BuildContext context) {
    _context = context;
  }

  /// 处理错误
  void handleError(dynamic error) {
    if (_context == null) {
      return;
    }

    String errorMessage;

    if (error is NetworkException) {
      // 处理网络异常
      errorMessage = error.message;
    } else if (error is String) {
      // 处理字符串错误信息
      errorMessage = error;
    } else {
      // 处理其他类型的错误
      errorMessage = '未知错误，请稍后重试';
    }

    // 显示错误提示
    _showErrorSnackBar(errorMessage);
  }

  /// 显示错误 SnackBar
  void _showErrorSnackBar(String message) {
    if (_context == null) {
      return;
    }

    ScaffoldMessenger.of(_context!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// 显示成功提示
  void showSuccessMessage(String message) {
    if (_context == null) {
      return;
    }

    ScaffoldMessenger.of(_context!).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
