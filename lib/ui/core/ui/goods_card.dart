import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ykd_tea_app/domain/models/goods/goods.dart';
import 'package:ykd_tea_app/routing/routes.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class GoodsCard extends StatelessWidget {
  const GoodsCard({super.key, required this.goods});

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
          color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.0, // 固定 1:1 正方形比例
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: NetworkImageCustom(imageUrl: goods.listPicUrl ?? ''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    goods.name ?? '',
                    style: TextStyle(fontSize: 16, color: Color(0xFF323232)),
                  ),
                  const SizedBox(height: 6),
                  if (goods.goodsBrief != null &&
                      goods.goodsBrief!.isNotEmpty) ...[
                    Text(
                      goods.goodsBrief!,
                      style: TextStyle(fontSize: 14, color: Color(0xFF999999)),
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
    );
  }
}
