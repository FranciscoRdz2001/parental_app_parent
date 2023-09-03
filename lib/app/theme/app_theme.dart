import 'package:flutter/material.dart';

class AppTheme {
  /// App Fonts
  static const String fontName = 'Montserrat';
  static const Color secondaryText = Color(0xff999b9e);

  /// General Colors
  static const Color lightRed = Color(0xfffddede);
  static const Color lightPink = Color(0xfff8e0f2);
  static const Color lightBlue = Color(0xffdbebfa);
  static const Color lightGreen = Color(0xffe8f5e9);
  static const Color lightYellow = Color(0xfffdf7d9);

  static const Color green = Color(0xff49cc48);
  static const Color red = Color(0xfff12a2d);
  static const Color blue = Color(0xff0e87fd);
  static const Color pink = Color(0xffcc41b3);
  static const Color yellow = Color(0xffe6b800);

  /// App Colors
  static const Color accent = Color(0xff26907d);

  /// Dark Theme Colors
  static const Color darkBgColor = Color(0xff242d37);
  static const Color darkContBgColor = Color(0xff1e242c);

  /// Light Theme Colors

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        cardColor: darkContBgColor,
        scaffoldBackgroundColor: darkBgColor,
        colorScheme: const ColorScheme.dark(
          surface: darkContBgColor,
          primary: accent,
          secondary: accent,
        ),
      );

  static ThemeData get lightTheme => ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light(
          primary: accent,
          secondary: accent,
        ),
      );
}
