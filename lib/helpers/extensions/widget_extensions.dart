import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  /// add tap to parent widget
  Widget onTap(
      void Function()? function, {
        Color? splashColor,
        Color? hoverColor,
        Color? highlightColor,
        BorderRadius? borderRadius,
        bool isTransparent = false,
      }) {
    return Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      child: InkWell(
        onTap: function,
        splashColor: splashColor ?? Colors.transparent,
        hoverColor: isTransparent ? Colors.transparent : hoverColor,
        highlightColor: isTransparent ? Colors.transparent : highlightColor,
        borderRadius: borderRadius,
        child: this,
      ),
    );
  }

}