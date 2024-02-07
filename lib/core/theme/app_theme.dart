import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.lightBlue,
      surface: Colors.white,
    ),

    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: const Color(0xffefefef),
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 54, color: Colors.lightBlue),
      titleMedium: TextStyle(fontSize: 24, color: Colors.lightBlue),
    ),
  );
}
