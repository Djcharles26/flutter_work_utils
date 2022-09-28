import 'package:flutter/material.dart';

void unfocus(BuildContext context) {
  FocusScopeNode scope = FocusScope.of(context);
  if(scope.hasFocus || scope.hasPrimaryFocus) {
    scope.unfocus();
  }
}