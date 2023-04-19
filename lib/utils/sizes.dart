import 'package:flutter/material.dart';

/// Method to get [preferredWidth] constrained, if is bigger than media query width, will return [constraintWidth] if not null, else return media query.
double constrainedWidth (BuildContext context, double preferredWidth, {double? constraintWidth, bool? shouldConstraint}) {
  double width = preferredWidth;
  double def = constraintWidth ?? MediaQuery.of(context).size.width;
  bool constraint = shouldConstraint  ?? preferredWidth > def;

  if (constraint) {
    width = def;
  }

  return width;
}

/// Method to get [preferredWidth] constrained, if is smaller than default width, will return [constraintWidth] if not null, else return media query.
double constrainedBigWidth (BuildContext context, double preferredWidth, {double? constraintWidth}) {
  double width = preferredWidth;
  double def = constraintWidth ?? MediaQuery.of(context).size.width;
  if (preferredWidth < def) {
    width = def;
  }

  return width;
}


/// Method to get [preferredHeight] constrained, if is bigger than media query height, will return this.
double constrainedHeight (BuildContext context, double preferredHeight) {
  double height = preferredHeight;
  if (preferredHeight > MediaQuery.of(context).size.height) {
    height = MediaQuery.of(context).size.height;
  }

  return height;
}