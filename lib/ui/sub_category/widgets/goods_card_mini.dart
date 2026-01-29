import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/add_product_btn.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class GoodsCardMini extends StatelessWidget {
  const GoodsCardMini({super.key, required this.goods});

  final Goods goods;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          Routes.goodsDetail.replaceAll(':goodsId', goods.id.toString()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          // color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: NetworkImageCustom(
                      imageUrl: goods.listPicUrl ?? '',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          goods.name ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF323232),
                          ),
                        ),
                        const SizedBox(height: 6),
                        if (goods.goodsBrief != null &&
                            goods.goodsBrief!.isNotEmpty) ...[
                          Text(
                            goods.goodsBrief!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF999999),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 10),
                        ],
                        Text(
                          '¥${goods.retailPrice ?? 0}',
                          style: TextStyle(
                            color: Color(0xFF343434),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: AddProductBtn(goodsId: goods.id ?? 0),
            ),
          ],
        ),
      ),
    );
  }
}
