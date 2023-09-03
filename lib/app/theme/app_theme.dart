import 'package:flutter/material.dart';

class AppTheme {
  static const String fontName = 'Montserrat';

  static const Color accent = Color(0xff32344c);

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark(
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
