import 'package:flutter/material.dart';

class AddressSelect extends StatelessWidget {
  const AddressSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [ListTile(title: Text('选择地址'), subtitle: Text('详细地址'))],
      ),
    );
  }
}
