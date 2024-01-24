import 'package:flutter/material.dart';
import '../colors/app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData defaultTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
        titleSpacing: 0,
        centerTitle: true,
        color: AppColors.primaryColor,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
        iconTheme: IconThemeData(color: Colors.white)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
    ),
  );
}
