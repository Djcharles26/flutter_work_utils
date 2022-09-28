import 'package:flutter/material.dart';

Color getColorContrast(Color background) {
  if ((background.red * 0.299 + background.green*0.587 + background.blue*0.114) > 186) {
    return Colors.black;
  } else {
    return Colors.white;
  }
}