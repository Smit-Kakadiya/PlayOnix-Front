import 'package:flutter/material.dart';
import 'package:playonix/config/theme/theme_colors.dart';
import 'package:playonix/core/constants/color_constants.dart';
import 'package:playonix/core/constants/layout_constant.dart';
import 'package:playonix/core/widgets/animations/scale_tap_animation.dart';
import 'package:playonix/core/widgets/loader/three_bounce.dart';
import 'package:playonix/core/widgets/text_widgets.dart';

class Button extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? loaderSize;
  final Color? buttonColor;
  final Color? shadowColor;
  final bool? isShadow;
  final bool? isLoading;
  final String text;
  final VoidCallback? onTap;
  final Widget? child;
  final BoxDecoration? decoration;

  const Button._({
    super.key,
    this.borderRadius,
    this.buttonColor,
    this.shadowColor,
    this.isShadow = true,
    required this.text,
    this.height,
    this.width,
    this.onTap,
    this.isLoading = false,
    this.loaderSize,
    this.child,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<ThemeColors>();
    return InkWellBounce(
      onPressed: !(isLoading ?? false) && onTap != null ? onTap : null,
      child: Container(
        decoration: decoration,
        height: height,
        width: width,
        child: Center(
          child: isLoading ?? false
              ? SpinKitThreeBounce(
              color: themeColor?.secondaryColor, size: loaderSize ?? 24)
              : child ?? AppText.titleMedium(text),
        ),
      ),
    );
  }

  // Static method for creating a primary button
  static Widget primary({
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
    double? loaderSize,
    bool? isLoading,
    required String text,
    required VoidCallback onTap,
  }) {
    return Builder(builder: (context) {
      final themeColor = Theme.of(context).extension<ThemeColors>();
      return Button._(
        key: key,
        onTap: onTap,
        isLoading: isLoading,
        loaderSize: loaderSize,
        height: height ?? 48,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: themeColor?.primaryColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? RadiusConstant.commonFullRadius),
        ),
        text: text,
        child: AppText.titleMedium(
          text,
          color: ColorConstants.black,
        ),
      );
    });
  }

  // Static method for creating a small primary button
  static Widget primarySmall({
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
    double? loaderSize,
    bool? isLoading,
    required String text,
    required VoidCallback onTap,
  }) {
    return Builder(builder: (context) {
      final themeColor = Theme.of(context).extension<ThemeColors>();
      return Button._(
        key: key,
        onTap: onTap,
        isLoading: isLoading,
        loaderSize: loaderSize,
        height: height ?? 32,
        width: width ?? 200,
        decoration: BoxDecoration(
          color: themeColor?.primaryColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? RadiusConstant.commonFullRadius),
        ),
        text: text,
        child: AppText.titleMedium(
          text,
          color: ColorConstants.black,
        ),
      );
    });
  }

  // Static method for creating a secondary button
  static Widget secondary({
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
    double? loaderSize,
    bool? isLoading,
    required String text,
    required VoidCallback onTap,
  }) {
    return Builder(builder: (context) {
      final themeColor = Theme.of(context).extension<ThemeColors>();
      return Button._(
        key: key,
        onTap: onTap,
        isLoading: isLoading,
        loaderSize: loaderSize,
        height: height ?? 48,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? RadiusConstant.commonFullRadius),
          border: Border.all(color: themeColor?.primaryColor ?? Colors.transparent,width: 2),
        ),
        text: text,
        child: AppText.titleMedium(text),
      );
    });
  }

  // Static method for creating a small secondary button
  static Widget secondarySmall({
    Key? key,
    double? height,
    double? width,
    double? borderRadius,
    double? loaderSize,
    bool? isLoading,
    required String text,
    required VoidCallback onTap,
  }) {
    return Builder(builder: (context) {
      final themeColor = Theme.of(context).extension<ThemeColors>();
      return Button._(
        key: key,
        onTap: onTap,
        isLoading: isLoading,
        loaderSize: loaderSize,
        height: height ?? 32,
        width: width ?? 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? RadiusConstant.commonFullRadius),
          border: Border.all(color: themeColor?.primaryColor ?? Colors.transparent,width: 2),
        ),
        text: text,
        child: AppText.titleMedium(text),
      );
    });
  }
}