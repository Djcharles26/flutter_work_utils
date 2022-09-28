import 'package:flutter/material.dart';

class ScrollClean extends ScrollBehavior {
  /// A Scroll Configuratoin to be used with no scrollbars
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
