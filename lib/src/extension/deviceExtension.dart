import 'package:flutter/material.dart';

extension DeviceExtension on BuildContext {
  bool get isPortrait {
    return MediaQuery.of(this).orientation == Orientation.portrait;
  }

  bool get isLandscape {
    return MediaQuery.of(this).orientation == Orientation.landscape;
  }

  bool get isPhone {
    return MediaQuery.of(this).size.width < 600;
  }
}
