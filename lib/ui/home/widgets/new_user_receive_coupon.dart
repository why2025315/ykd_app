import 'package:flutter/material.dart';

class NewUserReceiveCoupon extends StatelessWidget {
  const NewUserReceiveCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: AspectRatio(
          aspectRatio: 686 / 136, // 根据实际图片宽高比调整
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/coupon_bg.png', fit: BoxFit.cover),
              Positioned.fill(
                right: 20,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color.fromRGBO(
                        147,
                        98,
                        40,
                        1,
                      ), // 设置文字颜色为黑色
                    ),
                    child: Text('立即领取'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
