import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  bool get isDark {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Color get primaryColor {
    return Theme.of(this).colorScheme.primary;
  }

  Color get primaryDarkColor {
    return Theme.of(this).primaryColorDark;
  }

  Color get primaryLightColor {
    return Theme.of(this).primaryColorLight;
  }

  double get height {
    return MediaQuery.of(this).size.height;
  }

  double get width {
    return MediaQuery.of(this).size.width;
  }
}
