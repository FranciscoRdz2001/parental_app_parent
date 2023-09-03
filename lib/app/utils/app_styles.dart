import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle _baseStyle(
    FontWeight fontWeight,
    double size, [
    Color? color,
  ]) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: size,
    );
  }

  static TextStyle w400(double size, [Color? color]) {
    return _baseStyle(FontWeight.w400, size, color);
  }

  static TextStyle w500(double size, [Color? color]) {
    return _baseStyle(FontWeight.w500, size, color);
  }

  static TextStyle w600(double size, [Color? color]) {
    return _baseStyle(FontWeight.w600, size, color);
  }

  static TextStyle w700(double size, [Color? color]) {
    return _baseStyle(FontWeight.w700, size, color);
  }
}
