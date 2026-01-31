import 'package:flutter/material.dart';

class CustomerService extends StatelessWidget {
  const CustomerService({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.headphones, size: 22, color: Color(0xFF333333)),
          Text('客服', style: TextStyle(fontSize: 12, color: Color(0xFF333333))),
        ],
      ),
    );
  }
}
