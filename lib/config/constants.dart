import 'package:flutter/material.dart';

const primaryColor = Color(0xFF59AB49);

class KConstants {
  static const String themeModeKey = 'themeModeKey';
}

class KtextStyle {
  static const TextStyle greenText = TextStyle(
    color: primaryColor,
    fontSize: 10,
  );

  static const TextStyle descriptionText = TextStyle(
    fontSize: 14,
    color: Color(0xFF666666),
  );

  static const TextStyle titleText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xFF333333),
  );

  static const TextStyle contentText = TextStyle(
    fontSize: 14,
    color: Color(0xFF555555),
    height: 24,
  );
}
