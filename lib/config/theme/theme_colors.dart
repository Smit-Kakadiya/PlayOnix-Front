import 'package:flutter/material.dart';
import 'package:playonix/core/constants/color_constants.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primaryColor;
  final Color primaryVariant;
  final Color secondaryColor;
  final Color accentColor;

  final Color scaffoldColor;
  final Color textColor;
  final Color captionTextColor;
  final Color textFieldColor;
  final Color appbarColor;
  final Color successColor;
  final Color warningColor;
  final Color errorColor;

  const ThemeColors({
    required this.primaryColor,
    required this.primaryVariant,
    required this.secondaryColor,
    required this.accentColor,
    required this.scaffoldColor,
    required this.textColor,
    required this.captionTextColor,
    required this.textFieldColor,
    required this.appbarColor,
    required this.successColor,
    required this.warningColor,
    required this.errorColor,
  });


  static const dark = ThemeColors(
    primaryColor: ColorConstants.aquaPrimary,
    primaryVariant: ColorConstants.tealMedium,
    secondaryColor: ColorConstants.tealDark,
    accentColor: ColorConstants.aquaLight,
    scaffoldColor: ColorConstants.black,
    textColor: ColorConstants.gray100,
    captionTextColor: ColorConstants.gray500,
    textFieldColor: ColorConstants.tealDark,
    appbarColor: ColorConstants.black,
    successColor: ColorConstants.success,
    warningColor: ColorConstants.warning,
    errorColor: ColorConstants.error,
  );

  @override
  ThemeColors copyWith({
    Color? primaryColor,
    Color? primaryVariant,
    Color? secondaryColor,
    Color? accentColor,
    Color? scaffoldColor,
    Color? textColor,
    Color? captionTextColor,
    Color? textfieldColor,
    Color? appbarColor,
    Color? successColor,
    Color? warningColor,
    Color? errorColor,
  }) {
    return ThemeColors(
      primaryColor: primaryColor ?? this.primaryColor,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      accentColor: accentColor ?? this.accentColor,
      scaffoldColor: scaffoldColor ?? this.scaffoldColor,
      textColor: textColor ?? this.textColor,
      captionTextColor: captionTextColor ?? this.captionTextColor,
      textFieldColor: textfieldColor ?? this.textFieldColor,
      appbarColor: appbarColor ?? this.appbarColor,
      successColor: successColor ?? this.successColor,
      warningColor: warningColor ?? this.warningColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  ThemeColors lerp(ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) return this;
    return ThemeColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t) ?? primaryColor,
      primaryVariant: Color.lerp(primaryVariant, other.primaryVariant, t) ?? primaryVariant,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t) ?? secondaryColor,
      accentColor: Color.lerp(accentColor, other.accentColor, t) ?? accentColor,
      scaffoldColor: Color.lerp(scaffoldColor, other.scaffoldColor, t) ?? scaffoldColor,
      textColor: Color.lerp(textColor, other.textColor, t) ?? textColor,
      captionTextColor: Color.lerp(captionTextColor, other.captionTextColor, t) ?? captionTextColor,
      textFieldColor: Color.lerp(textFieldColor, other.textFieldColor, t) ?? textFieldColor,
      appbarColor: Color.lerp(appbarColor, other.appbarColor, t) ?? appbarColor,
      successColor: Color.lerp(successColor, other.successColor, t) ?? successColor,
      warningColor: Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      errorColor: Color.lerp(errorColor, other.errorColor, t) ?? errorColor,
    );
  }
}
