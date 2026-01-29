import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/cart/view_models/cart_view_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.viewModel});

  final CartViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('购物车')),
      body: Container(),
    );
  }
}
