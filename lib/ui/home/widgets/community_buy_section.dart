import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/community_buy_item/community_buy_item.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class CommunityBuySection extends StatelessWidget {
  const CommunityBuySection({super.key, required this.list});

  final List<CommunityBuyItem> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 19,
            width: 120,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/community_label.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 130,
            child: CarouselView(
              scrollDirection: Axis.horizontal,
              itemExtent: 110,
              padding: EdgeInsets.symmetric(horizontal: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              children: list.map((item) {
                return Container(
                  width: 100,
                  decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(10),
                          child: NetworkImageCustom(
                            imageUrl: item.imgUrl ?? '',
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              item.name ?? '',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          // 高度120 横向滚动区域 用gridView布局
          // SizedBox(
          //   width: double.infinity,
          //   height: 120,
          //   child: GridView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemCount: 5,
          //     padding: EdgeInsets.zero,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 1,
          //       mainAxisSpacing: 0,
          //       crossAxisSpacing: 0,
          //       childAspectRatio: 1.2,
          //     ),
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin: EdgeInsets.zero,
          //         padding: EdgeInsets.zero,
          //         decoration: BoxDecoration(
          //           color: Color(0xFFF7F7F7),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         width: 100,
          //         height: 120,
          //         child: Column(
          //           children: [
          //             Container(
          //               width: 100,
          //               height: 100,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 image: DecorationImage(
          //                   image: AssetImage('assets/images/banner.png'),
          //                   fit: BoxFit.cover,
          //                 ),
          //               ),
          //             ),
          //             Text('商品名称'),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
