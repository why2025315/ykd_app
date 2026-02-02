import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/order/order_detail/view_models/order_detail_view_model.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.viewModel});

  final OrderDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('订单详情')),
      backgroundColor: const Color(0xffF2F2F2),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          if (viewModel.orderDetail == null) {
            return const Center(child: CircularProgressIndicator());
          }
          DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
            viewModel.orderDetail!.orderInfo?.addTime ?? 0,
          );
          final orderDateTime = DateFormat(
            'yyyy-MM-dd HH:mm:ss',
          ).format(dateTime);
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text('下单时间: $orderDateTime'),
                      Text(
                        '订单编号: ${viewModel.orderDetail!.orderInfo?.orderSn ?? ''}',
                      ),
                      Text(
                        '运费: ￥${viewModel.orderDetail!.orderInfo?.freightPrice ?? '0.00'}',
                      ),
                      Text(
                        '优惠券: -￥${viewModel.orderDetail!.orderInfo?.couponPrice ?? '0.00'}',
                      ),
                      Text(
                        '积分兑换: -￥${viewModel.orderDetail!.orderInfo?.integralPrice ?? '0.00'}',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Divider(height: 1, color: Color(0xffF2F2F2)),
                      ),
                      Row(
                        children: [
                          Text('实付: '),
                          Text(
                            '￥${viewModel.orderDetail!.orderInfo?.actualPrice ?? '0.00'}',
                            style: TextStyle(color: Colors.red),
                          ),
                          Expanded(
                            child: Row(
                              spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FilledButton(
                                  onPressed: () {},
                                  child: Text('取消订单'),
                                ),
                                FilledButton(
                                  onPressed: () {},
                                  child: Text('去付款'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('商品信息'),
                            Text(
                              viewModel
                                      .orderDetail!
                                      .orderInfo
                                      ?.orderStatusText ??
                                  '',
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1, color: Color(0xffF2F2F2)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: ListView.builder(
                          itemCount:
                              viewModel.orderDetail!.orderGoods?.length ?? 0,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final goods =
                                viewModel.orderDetail!.orderGoods?[index];
                            return ListTile(
                              minLeadingWidth: 0,
                              contentPadding: EdgeInsets.zero,
                              onTap: () {
                                context.push(
                                  Routes.goodsDetail.replaceAll(
                                    ':goodsId',
                                    goods?.goodsId?.toString() ?? '',
                                  ),
                                );
                              },
                              title: Row(
                                spacing: 8,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: NetworkImageCustom(
                                      imageUrl: goods?.picUrl ?? '',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${goods?.goodsName ?? ''} x ${goods?.number ?? 0}',
                                      ),
                                      Text('￥${goods?.retailPrice ?? '0.00'}'),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: Text(
                                'x ${goods?.number ?? 0}',
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('让骑手代购的备注内容'),
                            Text(
                              viewModel.orderDetail!.orderInfo?.leaveWord ?? '',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Text('配送地址'),
                      ),
                      Divider(height: 1, color: Color(0xffF2F2F2)),
                      ListTile(
                        title: Text(
                          '收货人信息：${viewModel.orderDetail!.orderInfo?.consignee ?? ''} ${viewModel.orderDetail!.orderInfo?.mobile ?? ''}',
                        ),
                        subtitle: Text(
                          viewModel.orderDetail!.orderInfo?.address ?? '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
