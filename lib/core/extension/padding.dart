import "package:flutter/material.dart";

extension PaddingExtension on Widget {
  Widget pad(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget vhPad({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget padOnly({double top = 0, double bottom = 0, double left = 0, double right = 0}) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      child: this,
    );
  }

  Widget vPad(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  Widget hPad(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }
}
