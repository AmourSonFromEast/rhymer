import 'package:flutter/material.dart';

class UiConstance {
  // Colors

  static const Color black = Color(0xFF131A20);
  static const Color blue = Color(0xFF274ab3);
  static const Color white = Color(0xFFFFFFFF);
  static const Color purple = Color(0xFF6B66D8);

  // Gradients
  static const LinearGradient purpleGradient = LinearGradient(
    colors: [
      Color(0xFF6B66D8),
      Color(0xFFBABAD7),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  // TextStyles

  static TextStyle onboadringRegylary12 = const TextStyle(
    // fontFamily: 'Roboto',
    fontSize: 12,
    height: 15 / 12,
    fontWeight: FontWeight.w700,
  );
}