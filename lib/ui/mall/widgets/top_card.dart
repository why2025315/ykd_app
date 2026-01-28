import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.bgImagePath,
    required this.onTap,
  });

  final String title;
  final String subTitle;
  final String bgImagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 167 / 87,
            child: Image.asset(bgImagePath, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10.0,
                children: [
                  Text(title, style: KtextStyle.titleText),
                  Text(subTitle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
