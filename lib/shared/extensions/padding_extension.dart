import 'package:flutter/material.dart';

/// Padding extension. Makes it easier to use padding on almost all widgets
///
/// Use for example like this:
/// - Text("Hello World").paddingAll(10.0)
/// - Text("Hello World").padding(left: 10.0, right: 10.0)
extension PaddedWidget on Widget {
  Widget padding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
        ),
        child: this,
      );

  Widget paddingVertical(double value) => padding(top: value, bottom: value);

  Widget paddingHorizontal(double value) => padding(left: value, right: value);

  Widget paddingAll(double all) =>
      padding(left: all, top: all, right: all, bottom: all);

  Widget paddingByEdgeInsets(EdgeInsets edgeInsets) => padding(
      left: edgeInsets.left,
      top: edgeInsets.top,
      right: edgeInsets.right,
      bottom: edgeInsets.bottom);
}
