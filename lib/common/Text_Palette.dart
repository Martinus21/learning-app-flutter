import 'package:flutter/material.dart';
import 'package:learning_application/common/ColorPalette.dart';

class TextPalette {
  static TextStyle navigationTitleDefaultStyle = TextStyle(
    color: ColorPalette.background_page,
    fontSize: 30.0,
    fontWeight: FontWeight.w600
  );

  static TextStyle navigationTitleSelectedStyle = TextStyle(
    color: ColorPalette.splash_page_blue,
    fontSize: 30.0,
    fontWeight: FontWeight.w600
  );
}