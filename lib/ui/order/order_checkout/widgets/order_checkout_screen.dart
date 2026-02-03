import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/domain/models/payment/payment.dart';
import 'package:ykd_tea_app/infrastructure/services/cart_service.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/bottom_app_bar_custom.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/Address_select.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/goods_list.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/message.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/payment_select.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/widgets/total_info.dart';
import 'package:ykd_tea_app/utils/result.dart';

class OrderCheckoutScreen extends StatefulWidget {
  const OrderCheckoutScreen({super.key, required this.viewModel});

  final OrderCheckoutViewModel viewModel;

  @override
  State<OrderCheckoutScreen> createState() => _OrderCheckoutScreenState();
}

class _OrderCheckoutScreenState extends State<OrderCheckoutScreen> {
  late List<Payment> paymentList = [];

  Payment? get payment => paymentList.firstWhereOrNull(
    (element) => element.id == widget.viewModel.paymentId,
  );

  @override
  void initState() {
    widget.viewModel.checkoutOrderCommand.execute(
      CartCheckoutParams(cartId: 0),
    );
    widget.viewModel.paymentMethodCommand.execute();
    widget.viewModel.paymentMethodCommand.addListener(_onLoadPaymentMethod);
    widget.viewModel.submitOrderCommand.addListener(_onSubmitOrder);
    super.initState();
  }

  @override
  void dispose() {
    widget.viewModel.paymentMethodCommand.removeListener(_onLoadPaymentMethod);
    widget.viewModel.submitOrderCommand.removeListener(_onSubmitOrder);
    super.dispose();
  }

  void _onSubmitOrder() {
    if (widget.viewModel.submitOrderCommand.completed) {
      final result = widget.viewModel.submitOrderCommand.result;
      switch (result) {
        case Ok(value: final orderId):
          widget.viewModel.layoutViewModel.getCartGoodsCountCommand.execute();
          context.pushReplacement(
            Routes.orderDetail.replaceAll(':orderId', orderId.toString()),
          );
          break;
        case Error():
          print('error');
          break;
        default:
          print('loading');
          break;
      }
    }
  }

  void _onLoadPaymentMethod() {
    if (widget.viewModel.paymentMethodCommand.completed) {
      print(widget.viewModel.paymentMethodCommand);
      final result = widget.viewModel.paymentMethodCommand.result;
      switch (result) {
        case Ok(value: final data):
          paymentList = data;
          _showPaymentMethodDialog(context);
          break;
        case Error():
          print('error');
          break;
        default:
          print('loading');
          break;
      }
    }
  }

  void _showPaymentMethodDialog(BuildContext context) {
    Widget child = PaymentSelect(
      paymentId: widget.viewModel.paymentId,
      paymentList: paymentList,
      onChanged: (value) {
        widget.viewModel.paymentId = value;
        setState(() {});
      },
    );
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65, // 占屏幕高度的70%
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: child,
          ),
          Positioned(top: 10, right: 10, child: CloseButton()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('填写订单'), centerTitle: true),
      body: CustomScrollView(
        slivers: [
          ListenableBuilder(
            listenable: widget.viewModel,
            builder: (context, child) {
              if (widget.viewModel.cartCheckoutData == null) {
                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return AddressSelect(
                addressId: widget.viewModel.cartCheckoutData?.addressId,
                onChanged: (value) {
                  widget.viewModel.addressId = value;
                },
              );
            },
          ),
          SliverToBoxAdapter(
            child: Container(color: Colors.grey.shade100, height: 10),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListTile(
                  title: Text(payment?.typeTitle ?? '选择配送方式'),
                  subtitle: Text(payment?.typeDesc ?? ''),
                  onTap: () {
                    _showPaymentMethodDialog(context);
                  },
                ),
              ],
            ),
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Center(
            child: FilledButton(
              onPressed: () {
                widget.viewModel.submitOrderCommand.execute();
              },
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 44),
              ),
              child: const Text('去支付'),
            ),
          ),
        ),
      ),
    );
  }
}
