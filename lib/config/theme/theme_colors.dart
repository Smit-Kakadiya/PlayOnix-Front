import 'package:flutter/material.dart';
import 'package:playonix/core/constants/color_constants.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color scaffoldColor;
  final Color textColor;
  final Color captionTextColor;
  final Color containerColor;
  final Color successColor;
  final Color warningColor;
  final Color errorColor;

  const ThemeColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.scaffoldColor,
    required this.textColor,
    required this.captionTextColor,
    required this.containerColor,
    required this.successColor,
    required this.warningColor,
    required this.errorColor,
  });


  static const dark = ThemeColors(
    primaryColor: ColorConstants.aqua,
    secondaryColor: ColorConstants.aquaDark,
    scaffoldColor: ColorConstants.black,
    textColor: ColorConstants.gray100,
    captionTextColor: ColorConstants.gray500,
    containerColor: ColorConstants.gray900,
    successColor: ColorConstants.success,
    warningColor: ColorConstants.warning,
    errorColor: ColorConstants.error,
  );

  static const light = ThemeColors(
    primaryColor: ColorConstants.aqua,
    secondaryColor: ColorConstants.aquaDark,
    scaffoldColor: ColorConstants.gray100,
    textColor: ColorConstants.black,
    captionTextColor: ColorConstants.gray500,
    containerColor: ColorConstants.gray300,
    successColor: ColorConstants.success,
    warningColor: ColorConstants.warning,
    errorColor: ColorConstants.error,
  );

  @override
  ThemeColors copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? scaffoldColor,
    Color? textColor,
    Color? captionTextColor,
    Color? containerColor,
    Color? successColor,
    Color? warningColor,
    Color? errorColor,
  }) {
    return ThemeColors(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      scaffoldColor: scaffoldColor ?? this.scaffoldColor,
      textColor: textColor ?? this.textColor,
      captionTextColor: captionTextColor ?? this.captionTextColor,
      containerColor: containerColor ?? this.containerColor,
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
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t) ?? secondaryColor,
      scaffoldColor: Color.lerp(scaffoldColor, other.scaffoldColor, t) ?? scaffoldColor,
      textColor: Color.lerp(textColor, other.textColor, t) ?? textColor,
      captionTextColor: Color.lerp(captionTextColor, other.captionTextColor, t) ?? captionTextColor,
      containerColor: Color.lerp(containerColor, other.containerColor, t) ?? containerColor,
      successColor: Color.lerp(successColor, other.successColor, t) ?? successColor,
      warningColor: Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      errorColor: Color.lerp(errorColor, other.errorColor, t) ?? errorColor,
    );
  }
}
