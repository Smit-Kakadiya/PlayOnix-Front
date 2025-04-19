import 'package:flutter/material.dart';

enum AppTextEnum {
  labelSmall, //Font Size - 11
  labelMedium, //Font Size - 12
  labelLarge, //Font Size - 14
  bodySmall, //Font Size - 12
  bodyMedium, //Font Size - 14
  bodyLarge, //Font Size - 16
  titleSmall, //Font Size - 14
  titleMedium, //Font Size - 16
  titleLarge, //Font Size - 22
  headlineSmall, //Font Size - 24
  headlineMedium, //Font Size - 28
  headlineLarge, //Font Size - 32
  displaySmall, //Font Size - 36
  displayMedium, //Font Size - 45
  displayLarge, //Font Size - 57
}

class AppText extends StatelessWidget {
  final AppTextEnum appTextStyle;
  final String text;
  final double? fontSize;
  final double? fontHeight;
  final double? lineHeight;
  final double? letterSpacing;
  final bool? softWrap;
  final TextDecoration? textDecoration;
  final int? maxLine;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;

  const AppText._({
    super.key,
    required this.text,
    this.fontSize,
    this.fontHeight,
    this.lineHeight,
    this.letterSpacing,
    this.softWrap,
    this.textDecoration,
    this.maxLine,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.fontStyle,
    required this.appTextStyle,
  });

  factory AppText.labelMedium(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color, TextAlign? textAlign}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      textAlign: textAlign,
      appTextStyle: AppTextEnum.labelMedium,
    );
  }

  factory AppText.bodySmall(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color, TextAlign? textAlign}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      textAlign: textAlign,
      appTextStyle: AppTextEnum.bodyMedium,
    );
  }

  factory AppText.bodyMedium(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      appTextStyle: AppTextEnum.bodyMedium,
    );
  }

  factory AppText.titleMedium(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      appTextStyle: AppTextEnum.titleMedium,
    );
  }

  factory AppText.titleLarge(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color, TextAlign? textAlign}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      textAlign: textAlign,
      appTextStyle: AppTextEnum.titleLarge,
    );
  }

  factory AppText.headlineMedium(String text, {double? fontSize, int? maxLine, FontWeight? fontWeight, Color? color, TextAlign? textAlign}) {
    return AppText._(
      text: text,
      fontSize: fontSize,
      textColor: color,
      maxLine: maxLine,
      fontWeight: fontWeight,
      textAlign: textAlign,
      appTextStyle: AppTextEnum.headlineMedium,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getTextStyle(appTextEnum: appTextStyle, context: context)?.copyWith(
        color: textColor,
        fontWeight: fontWeight,
        decoration: textDecoration,
        height: lineHeight,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      softWrap: softWrap,
    );
  }

  TextStyle? getTextStyle({required AppTextEnum appTextEnum, required BuildContext context}) {
    TextStyle? appTextStyle = switch (appTextEnum) {
      AppTextEnum.labelSmall => Theme.of(context).textTheme.labelSmall,
      AppTextEnum.labelMedium => Theme.of(context).textTheme.labelMedium,
      AppTextEnum.labelLarge => Theme.of(context).textTheme.labelLarge,
      AppTextEnum.bodySmall => Theme.of(context).textTheme.bodySmall,
      AppTextEnum.bodyMedium => Theme.of(context).textTheme.bodyMedium,
      AppTextEnum.bodyLarge => Theme.of(context).textTheme.bodyLarge,
      AppTextEnum.titleSmall => Theme.of(context).textTheme.titleSmall,
      AppTextEnum.titleMedium => Theme.of(context).textTheme.titleMedium,
      AppTextEnum.titleLarge => Theme.of(context).textTheme.titleLarge,
      AppTextEnum.headlineSmall => Theme.of(context).textTheme.headlineSmall,
      AppTextEnum.headlineMedium => Theme.of(context).textTheme.headlineMedium,
      AppTextEnum.headlineLarge => Theme.of(context).textTheme.headlineLarge,
      AppTextEnum.displaySmall => Theme.of(context).textTheme.displaySmall,
      AppTextEnum.displayMedium => Theme.of(context).textTheme.displayMedium,
      AppTextEnum.displayLarge => Theme.of(context).textTheme.displayLarge,
    };
    return appTextStyle;
  }
}
