import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:ykd_tea_app/domain/models/banner_item/banner_item.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key, required this.banners});

  final List<BannerItem> banners;

  @override
  Widget build(BuildContext context) {
    return carousel.CarouselSlider(
      options: carousel.CarouselOptions(
        height: 250,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        viewportFraction: 1.0,
      ),
      items: banners.map((item) {
        return NetworkImageCustom(imageUrl: item.url ?? '');
      }).toList(),
    );
  }
}
