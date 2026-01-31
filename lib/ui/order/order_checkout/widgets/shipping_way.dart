import 'package:flutter/material.dart';

class ShippingWay extends StatelessWidget {
  const ShippingWay({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [ListTile(title: Text('选择配送方式'), subtitle: Text('详细地址'))],
      ),
    );
  }
}
