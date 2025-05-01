import 'package:flutter/material.dart';
import 'package:playonix/config/theme/theme_colors.dart';

void showCustomBottomSheet({
  required BuildContext context,
  required Widget content,
  String? title, // Optional title
  ShapeBorder? shape,
  bool isDismissible = true, // Added isDismissible parameter.  Default is true.
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows the bottom sheet to take up more space.
    backgroundColor: Colors.transparent, // Default background color

    isDismissible: isDismissible, // Use the isDismissible parameter here.
    builder: (context) {
      final themeColor = Theme.of(context).extension<ThemeColors>();
      return SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: themeColor?.containerColor,
            borderRadius: BorderRadius.circular(48),
        
          ),
          child: content,
        ),
      );
    },
  );
}
