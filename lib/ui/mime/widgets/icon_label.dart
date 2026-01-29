import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class IconLabel extends StatelessWidget {
  const IconLabel({
    super.key,
    required this.icon,
    required this.label,
    this.width,
    this.onTap,
  });

  final Widget icon;
  final String label;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (width != null) {
      return InkWell(
        onTap: onTap,
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              icon,
              Text(label, style: KtextStyle.descriptionText),
            ],
          ),
        ),
      );
    }
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          icon,
          Text(label, style: KtextStyle.descriptionText),
        ],
      ),
    );
  }
}
