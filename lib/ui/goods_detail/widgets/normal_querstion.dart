import 'package:flutter/material.dart';
import 'package:ykd_tea_app/ui/goods_detail/widgets/card_custom.dart';

class NormalQuerstion extends StatelessWidget {
  const NormalQuerstion({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      title: '常见问题',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('24h客服电话', style: titleStyle),
          SizedBox(height: 8),
          Text('13739245223（微信同号）', style: descStyle),
          SizedBox(height: 16),

          Text('购买运费如何收取？', style: titleStyle),
          SizedBox(height: 8),
          Text('酒水等大件商品需要联系客服进行协商运费', style: descStyle),
          SizedBox(height: 16),

          Text('如何申请退货？', style: titleStyle),
          SizedBox(height: 8),
          Text(
            '自收到商品之日起3日内，顾客可申请无忧退货（食品类不能拆封），退款将原路返还，不同的银行处理时间不同',
            style: descStyle,
          ),
          SizedBox(height: 16),

          Text('使用什么快递发货?', style: titleStyle),
          SizedBox(height: 8),
          Text('默认使用中通快递发货（个别商品使用其他快递），配送范围覆盖全国大部分地区', style: descStyle),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

const titleStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Color(0xFF333333),
);

const descStyle = TextStyle(fontSize: 14, color: Color(0xFF666666));
