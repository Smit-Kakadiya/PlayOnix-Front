import 'package:flutter/material.dart';
import 'package:playonix/config/theme/theme_colors.dart';
import 'package:playonix/core/constants/color_constants.dart';

enum AppThemeType { light, dark }

class AppTheme {
  // static ThemeData lightTheme() {
  //   return ThemeData(
  //     brightness: Brightness.light,
  //     scaffoldBackgroundColor: Colors.white,
  //     extensions: const [ThemeColors.dark],
  //   );
  // }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: ColorConstants.black,
      textTheme: TextTheme(
        labelMedium: TextStyle(color: ColorConstants.gray500, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
        bodyMedium: TextStyle(color: ColorConstants.gray100, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
        bodyLarge:  TextStyle(color: ColorConstants.gray100, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
        titleMedium:  TextStyle(color: ColorConstants.gray100, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
        titleLarge:  TextStyle(color: ColorConstants.gray100, fontWeight: FontWeight.w600,fontSize: 20, overflow: TextOverflow.ellipsis),
        headlineMedium:  TextStyle(color: ColorConstants.gray100, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis)
      ),
      // Example change
      extensions: const [ThemeColors.dark],
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorConstants.gray100,
      textTheme: TextTheme(
          labelMedium: TextStyle(color: ColorConstants.gray500, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
          bodyMedium: TextStyle(color: ColorConstants.black, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
          bodyLarge:  TextStyle(color: ColorConstants.black, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
          titleMedium:  TextStyle(color: ColorConstants.black, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
          titleLarge:  TextStyle(color: ColorConstants.black, fontWeight: FontWeight.w600,fontSize: 20, overflow: TextOverflow.ellipsis),
          headlineMedium:  TextStyle(color: ColorConstants.black, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis)
      ),
      // Example change
      extensions: const [ThemeColors.light],
    );
  }

  static ThemeData getTheme(AppThemeType type) {
    return switch (type) {
      AppThemeType.light => lightTheme(),
      AppThemeType.dark => darkTheme(),
    };
  }
}
