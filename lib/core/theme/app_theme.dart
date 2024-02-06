import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
    useMaterial3: true,
    brightness: Brightness.light
  );
}
