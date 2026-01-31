import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/Address_select.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/goods_list.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/message.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/shipping_way.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/total_info.dart';

class OrderCheckoutScreen extends StatefulWidget {
  const OrderCheckoutScreen({super.key, required this.viewModel});

  final OrderCheckoutViewModel viewModel;

  @override
  State<OrderCheckoutScreen> createState() => _OrderCheckoutScreenState();
}

class _OrderCheckoutScreenState extends State<OrderCheckoutScreen> {
  @override
  void initState() {
    // TODO: implement initState
    widget.viewModel.checkoutOrderCommand.execute(
      CartCheckoutParams(cartId: 0),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('填写订单'), centerTitle: true),
      body: CustomScrollView(
        slivers: [
          AddressSelect(),
          SliverToBoxAdapter(
            child: Container(color: Colors.grey.shade100, height: 10),
          ),
          ShippingWay(),
          SliverToBoxAdapter(
            child: Container(color: Colors.grey.shade100, height: 10),
          ),
          TotalInfo(viewModel: widget.viewModel),
          SliverToBoxAdapter(
            child: Container(color: Colors.grey.shade100, height: 10),
          ),

          Message(),
          GoodsList(viewModel: widget.viewModel),
        ],
      ),
      bottomNavigationBar: BottomAppBarCustom(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            spacing: 10,
            children: [
              Text('共 1 件商品，合计：¥100.00'),
              Expanded(
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('去支付'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
