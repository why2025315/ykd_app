import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/routes.dart';

class AddressSelect extends StatelessWidget {
  const AddressSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          ListTile(
            title: Text('选择地址'),
            subtitle: Text('详细地址'),
            trailing: GestureDetector(
              onTap: () {
                context.push(Routes.address);
              },
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
