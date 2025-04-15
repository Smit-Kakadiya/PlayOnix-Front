import 'package:flutter/material.dart';
import 'package:playonix/core/theme/theme_colors.dart';

enum AppThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      extensions: const [ThemeColors.light],
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black, // Example change
      extensions: const [ThemeColors.dark],
    );
  }

  static ThemeData getTheme(AppThemeType type) {
    return switch(type){
      AppThemeType.light=>lightTheme(),
      AppThemeType.dark=>darkTheme(),
   };

  }
}