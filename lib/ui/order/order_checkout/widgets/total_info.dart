import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';

class TotalInfo extends StatelessWidget {
  const TotalInfo({super.key, this.viewModel});

  final OrderCheckoutViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    final cartCheckoutData = viewModel?.cartCheckoutData;

    return SliverList.list(
      children: [
        // Divider(height: 1, color: Colors.grey.shade300),
        ListTile(
          title: Text('商品合计'),
          trailing: Text(
            '¥${cartCheckoutData?.goodsTotalPrice?.toString() ?? '0.00'}',
            style: KtextStyle.mutedText,
          ),
        ),

        Divider(indent: 16, height: 1, color: Colors.grey.shade300),
        ListTile(
          title: Text('运费'),
          trailing: Text(
            '¥${cartCheckoutData?.freightPrice?.toString() ?? '0.00'}',
            style: KtextStyle.mutedText,
          ),
        ),

        Divider(indent: 16, height: 1, color: Colors.grey.shade300),
        ListTile(
          title: Text('积分抵扣'),
          subtitle: Text('该商品不支持积分兑换哦！'),
          trailing: Text(
            '-¥${cartCheckoutData?.couponPrice?.toString() ?? "0.00"}',
            style: KtextStyle.mutedText,
          ),
        ),
        Divider(indent: 16, height: 1, color: Colors.grey.shade300),
        ListTile(
          title: Text('需要骑手帮买什么'),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextField(
              minLines: 2,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: '请输入',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                filled: true,
                fillColor: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
