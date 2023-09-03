import 'package:flutter/material.dart';

class AppTheme {
  /// App Fonts
  static const String fontName = 'Montserrat';
  static const Color secondaryText = Color(0xff999b9e);

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
