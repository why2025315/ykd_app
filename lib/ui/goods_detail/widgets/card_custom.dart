import 'package:flutter/material.dart';
import 'package:ykd_tea_app/config/constants.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
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
          Text(title, style: KtextStyle.titleText),
          SizedBox(width: 20, child: Divider(color: Colors.black)),
          SizedBox(height: 15),
          child,
        ],
      ),
    );
  }
}
