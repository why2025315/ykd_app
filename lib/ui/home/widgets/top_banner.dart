import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:ykd_tea_app/domain/models/banner_item/banner_item.dart';
import 'package:ykd_tea_app/ui/core/ui/network_image_custom.dart';

class TopBanner extends StatefulWidget {
  const TopBanner({super.key, required this.banners});

  final List<BannerItem> banners;

  @override
  State<TopBanner> createState() => _TopBannerState();
}

class _TopBannerState extends State<TopBanner> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        carousel.CarouselSlider(
          options: carousel.CarouselOptions(
            height: 250,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          items: [
            Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            ...widget.banners.map((item) {
              return NetworkImageCustom(
                imageUrl: item.url ?? '',
                width: double.infinity,
              );
            }),
          ].map((image) => Container(child: ClipRect(child: image))).toList(),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [0, ...widget.banners].asMap().entries.map((entry) {
              return Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == entry.key
                      ? Colors.lightGreen
                      : Colors.black26,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
