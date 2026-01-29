import 'package:flutter/material.dart';
import 'package:ykd_tea_app/infrastructure/services/auth_service.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';
import 'package:ykd_tea_app/ui/login/view_models/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController(
    text: '18721297408',
  );
  final TextEditingController _passwordController = TextEditingController(
    text: '123888',
  );

  @override
  initState() {
    super.initState();
    widget.viewModel.login.addListener(_onLoadResult);
  }

  @override
  void dispose() {
    widget.viewModel.login.removeListener(_onLoadResult);
    super.dispose();
  }

  void _onLoadResult() {
    if (widget.viewModel.login.completed) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter, // 铺满屏幕，裁剪多余部分（也可用contain保持比例）
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CardCustom(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _usernameController,
                              decoration: const InputDecoration(
                                labelText: '用户名',
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                labelText: '密码',
                              ),
                            ),
                            const SizedBox(height: 20),
                            FilledButton(
                              style: FilledButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                              ),
                              onPressed: () {
                                widget.viewModel.login.execute(
                                  LoginParams(
                                    username: _usernameController.text,
                                    password: _passwordController.text,
                                  ),
                                );
                              },
                              child: const Text('登录'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // 上层：自定义AppBar，悬浮在顶部
            Positioned(
              top: 0, // 贴顶部
              left: 0,
              right: 0,
              child: AppBar(
                // 关键：设置透明背景，透出下方的body内容
                backgroundColor: Colors.transparent,
                elevation: 4, // 可选：加阴影，增强悬浮感
                title: const Text('登录'),
                leading: BackButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
