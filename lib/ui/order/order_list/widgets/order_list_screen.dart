import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';
import 'package:ykd_tea_app/ui/order/order_list/view_models/order_list_view_model.dart';

class OrderListScreen extends StatefulWidget {
  OrderListScreen({super.key, required this.viewModel});

  final OrderListViewModel viewModel;

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Map<String, dynamic>> _tabs = [
    {'text': '全部订单', 'showType': 0},
    {'text': '待付款', 'showType': 1},
    {'text': '待发货', 'showType': 2},
    {'text': '待收货', 'showType': 3},
    {'text': '已完成', 'showType': 4},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: _tabs.length,
      initialIndex: widget.viewModel.showType,
    )..addListener(_onTabChange);
    // // 初始加载第一个标签的数据
    // widget.viewModel.showType = _tabs[0]['showType'] as int;
  }

  @override
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChange() {
    final showType = _tabs[_tabController.index]['showType'] as int;
    widget.viewModel.showType = showType;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        title: const Text('订单列表'),
        bottom: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: _tabs
              .map((Map<String, dynamic> tab) => Tab(text: tab['text']))
              .toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs
            .map(
              (Map<String, dynamic> tab) => ListenableBuilder(
                listenable: widget.viewModel,
                builder: (context, child) {
                  return _buildTabContent(tab['showType'] as int);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildTabContent(int showType) {
    final tabData = widget.viewModel.getOrderListByTabIndex(showType);
    if (tabData == null) {
      return Center(child: CircularProgressIndicator());
    }

    if (tabData.data == null || tabData.data!.isEmpty) {
      return Center(child: Text('暂无订单数据'));
    }

    return ListView.builder(
      itemCount: tabData.count,
      itemBuilder: (context, index) {
        final order = tabData.data![index];
        return Container(
          color: Colors.white,
          margin: EdgeInsets.only(
            top: 8,
            bottom: (index == tabData.count! - 1) ? 8 : 0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '订单编号：${order.orderSn}',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(order.orderStatusText ?? ''),
                  ],
                ),
              ),
              Divider(height: 1, color: Color(0xfff2f2f2)),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: order.goodsList!.length,
                itemBuilder: (context, index) {
                  final goods = order.goodsList![index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {
                        context.push(
                          Routes.orderDetail.replaceAll(
                            ':orderId',
                            order.id?.toString() ?? '',
                          ),
                        );
                      },

                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: NetworkImageCustom(
                            imageUrl: goods.picUrl!,
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      title: Text(goods.goodsName!),
                      subtitle: Text('共${goods.number}件商品'),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(height: 1, color: Color(0xfff2f2f2), indent: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
