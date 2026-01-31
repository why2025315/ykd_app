import 'package:flutter/material.dart';

class BottomAppBarCustom extends StatelessWidget {
  const BottomAppBarCustom({super.key, required this.child, this.height = 44});

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12, // 阴影颜色
            blurRadius: 10.0, // 模糊半径
            spreadRadius: 1.0, // 扩散半径
            offset: Offset(0, -2), // 阴影偏移：x=0, y=-2（向上偏移，只显示在上边缘）
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        padding: EdgeInsets.zero,
        height: height,
        shape: CircularNotchedRectangle(),
        child: child,
      ),
    );
  }
}
