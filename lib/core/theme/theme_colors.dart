import 'package:flutter/material.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color containerColor;
  final Color textColor;

  const ThemeColors({
    required this.containerColor,
    required this.textColor,
  });

  static const light = ThemeColors(
    containerColor: Color(0xFFE0F7FA),
    textColor: Colors.black,
  );

  static const dark = ThemeColors(
    containerColor: Color(0xFF004D40),
    textColor: Colors.white,
  );

  @override
  ThemeColors copyWith({
    Color? containerColor,
    Color? textColor,
  }) {
    return ThemeColors(
      containerColor: containerColor ?? this.containerColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  ThemeColors lerp(ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) return this;
    return ThemeColors(
      containerColor: Color.lerp(containerColor, other.containerColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
    );
  }
}
