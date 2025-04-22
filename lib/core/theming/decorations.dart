import 'package:clothique/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class Decorations {
  static const BoxDecoration splashLinearGradientBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [ColorsManager.backgroundColor, Color(0xFF9BC8FD)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
