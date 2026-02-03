import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.child,
    this.title,
    this.titleTailing,
  });

  final Widget child;
  final String? title;
  final Widget? titleTailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (title != null) Text(title!, style: KtextStyle.titleText),
                if (titleTailing != null) titleTailing!,
              ],
            ),

            SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
