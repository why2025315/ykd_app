import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/mime/view_models/mine_view_model.dart';
import 'package:ykd_tea_app/ui/mime/widgets/card_custom.dart';
import 'package:ykd_tea_app/ui/mime/widgets/icon_label.dart';

class MineScreen extends StatefulWidget {
  const MineScreen({super.key, required this.viewModel});

  final MineViewModel viewModel;

  @override
  State<MineScreen> createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  late MineViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('我的')),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg.png', // 你的背景图片路径
                fit: BoxFit.contain,
                alignment: Alignment.topCenter, // 铺满屏幕，裁剪多余部分（也可用contain保持比例）
                // color: Colors.white, // 可选：加蒙版，让文字更清晰
                // colorBlendMode: BlendMode.darken, // 蒙版混合模式
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20),
                  child: Row(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: viewModel.isLogin
                            ? NetworkImage(viewModel.userInfo?.avatarUrl ?? '')
                            : null,
                      ),
                      TextButton(
                        onPressed: !viewModel.isLogin
                            ? () {
                                if (!viewModel.isLogin) {
                                  context.push(Routes.login);
                                }
                              }
                            : null,
                        child: Text(viewModel.userInfo?.nickName ?? '去登录'),
                        // style: KtextStyle.titleText,
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),

                CardCustom(
                  title: '我的订单',
                  titleTailing: TextButton(
                    onPressed: () {
                      context.push('${Routes.orderList}?showType=0');
                    },
                    child: Text('查看全部订单'),
                  ),
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 20,
                    children: [
                      IconLabel(
                        icon: Image.asset('assets/images/to_pay.png'),
                        label: '待付款',
                        onTap: () {
                          context.push('${Routes.orderList}?showType=1');
                        },
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/pending_shipment.png'),
                        label: '待发货',
                        onTap: () {
                          context.push('${Routes.orderList}?showType=2');
                        },
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/pending_receipt.png'),
                        label: '待收货',
                        onTap: () {
                          context.push('${Routes.orderList}?showType=3');
                        },
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/finish.png'),
                        label: '已完成',
                        onTap: () {
                          context.push('${Routes.orderList}?showType=4');
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CardCustom(
                  title: '更多服务',
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 20,
                    // 禁用 GridView 的滚动
                    children: [
                      IconLabel(
                        icon: Image.asset('assets/images/coupon.png'),
                        label: '我的优惠券',
                        width: 100,
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/footprint.png'),
                        label: '我的足迹',
                        width: 100,
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/address.png'),
                        label: '我的地址',
                        width: 100,
                        onTap: () {
                          context.push(Routes.address, extra: {'from': 'mine'});
                        },
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/gift.png'),
                        label: '推广大使',
                        width: 100,
                      ),
                      IconLabel(
                        icon: Image.asset('assets/images/consult.png'),
                        label: '合作咨询',
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
