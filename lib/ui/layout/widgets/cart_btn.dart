import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/router_util.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/layout/view_models/layout_view_model.dart';

class CartBtn extends StatelessWidget {
  const CartBtn({super.key, required this.viewModel});

  final LayoutViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FloatingActionButton(
          onPressed: () {
            if (viewModel.isLoggedIn) {
              context.push(Routes.cart);
            } else {
              RouterUtil.jumpToLogin();
              viewModel.loginViewModel.login.addListener(_onLoginSuccess);
            }
          },
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          child: SizedBox(child: Image.asset('assets/images/cart.png')),
        ),
        if (viewModel.isLoggedIn)
          Positioned(
            right: 2,
            top: 2,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: ListenableBuilder(
                  listenable: viewModel.appShareState,
                  builder: (context, child) {
                    return Text(
                      '${viewModel.appShareState.cartCount}',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    );
                  },
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _onLoginSuccess() {
    if (viewModel.loginViewModel.login.completed) {
      viewModel.loginViewModel.login.removeListener(_onLoginSuccess);
      viewModel.getCartGoodsCountCommand.execute();
    }
  }
}
