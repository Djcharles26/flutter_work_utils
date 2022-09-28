import 'package:flutter/material.dart';

void unfocus(BuildContext context) {
  /// A method to unfocus keyboard from screen in any context
  FocusScopeNode scope = FocusScope.of(context);
  if (scope.hasFocus || scope.hasPrimaryFocus) {
    scope.unfocus();
  }
}
