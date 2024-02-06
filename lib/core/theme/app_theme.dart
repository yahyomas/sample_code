import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 54, color: Colors.orange),
    )
  );
}
