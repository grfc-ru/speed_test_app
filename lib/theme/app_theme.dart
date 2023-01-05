import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.blueGrey,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
        ),
      );
}
