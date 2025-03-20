import 'package:flutter/material.dart';

Color getColorContrast(Color background) {
  /// Return the contrast color of a background
  if (background.computeLuminance() > 0.5) {
    return Colors.black;
  } else {
    return Colors.white;
  }
}
