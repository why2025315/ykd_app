import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/order/order_checkout/view_models/order_checkout_view_model.dart';

class GoodsList extends StatelessWidget {
  const GoodsList({super.key, this.viewModel});

  final OrderCheckoutViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel!,
      builder: (context, child) => SliverList.builder(
        itemCount: viewModel?.cartCheckoutData?.checkedGoodsList?.length ?? 0,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: NetworkImageCustom(
                imageUrl:
                    viewModel
                        ?.cartCheckoutData
                        ?.checkedGoodsList?[index]
                        .picUrl ??
                    '',
                width: 50,
                height: 50,
              ),
            ),
            title: Text(
              viewModel?.cartCheckoutData?.checkedGoodsList?[index].goodsName ??
                  '',
            ),
            trailing: Text(
              '¥${viewModel?.cartCheckoutData?.checkedGoodsList?[index].price?.toString() ?? '0.00'} x ${viewModel?.cartCheckoutData?.checkedGoodsList?[index].number?.toString() ?? '0'}',
            ),
          ),
        ),
      ),
    );
  }
}
