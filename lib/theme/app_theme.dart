import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_style.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.blueGrey,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
          titleTextStyle: appBar,
        ),
      );
}
