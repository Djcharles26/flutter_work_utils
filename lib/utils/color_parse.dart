import 'dart:math';

import 'package:flutter/material.dart';

Color? colorFromString(String? colorString) {
  /// Parse a color in hex format to [Color?] class.
  ///
  if (colorString == null) return null;
  if (!RegExp(r'^[0-9A-Fa-f]{8}$').hasMatch(colorString)) {
    throw const FormatException(
      "Color not formatted!. Format must be [0-9A-F-a-f]{8}"
    );
  }
  final intColor = int.parse(colorString, radix: 16);
   // Extraer los valores de opacidad, R, G, y B
  int opacity = (intColor >> 24) & 0xFF;
  int red = (intColor >> 16) & 0xFF;
  int green = (intColor >> 8) & 0xFF;
  int blue = intColor & 0xFF;

  return Color.fromARGB(opacity, red, green, blue);
}

Color getRandomColor () {
  Random random = Random();
  return Color.fromRGBO(
    random.nextInt(255), 
    random.nextInt(255), 
    random.nextInt(255), 1.0
  );
}

extension ColorExt on Color {
  Color withOpacityA (double opacity) {
    return withAlpha((255 * opacity).floor());
  }
}