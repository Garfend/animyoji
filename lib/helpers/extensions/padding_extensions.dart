

import 'package:flutter/cupertino.dart';

Duration transitionDuration = const Duration(milliseconds: 300);



extension PaddingExtension on Widget {
  /// return padding top
  Padding paddingTop(double top) {
    return Padding(padding: EdgeInsets.only(top: top), child: this);
  }

  /// return padding left
  Padding paddingLeft(double left) {
    return Padding(padding: EdgeInsets.only(left: left), child: this);
  }

  /// return padding Directional
  Padding paddingStart(double start) {
    return Padding(padding: EdgeInsetsDirectional.only(start: start), child: this);
  }

  Padding paddingEnd(double end) {
    return Padding(padding: EdgeInsetsDirectional.only(end: end), child: this);
  }

  /// return padding right
  Padding paddingRight(double right) {
    return Padding(padding: EdgeInsets.only(right: right), child: this);
  }

  /// return padding bottom
  Padding paddingBottom(double bottom) {
    return Padding(padding: EdgeInsets.only(bottom: bottom), child: this);
  }

  /// return padding all
  Padding paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  /// return padding Symmetric
  Padding paddingSymmetric(double horizontal, double vertical) {
    return Padding(padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal), child: this);
  }

  Padding paddingVertical(double padding) {
    return Padding(padding: EdgeInsets.symmetric(vertical: padding), child: this);
  }

  Padding paddingHorizontal(double padding) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: padding), child: this);
  }

  /// return custom padding from each side
  Padding paddingOnly({double top = 0.0, double left = 0.0, double bottom = 0.0, double right = 0.0}) {
    return Padding(padding: EdgeInsets.fromLTRB(left, top, right, bottom), child: this);
  }

  Padding paddingDirectionalOnly({double top = 0.0, double start = 0.0, double bottom = 0.0, double end = 0.0}) {
    return Padding(padding: EdgeInsetsDirectional.only(top: top, bottom: bottom, start: start, end: end), child: this);
  }

  Padding paddingDirectionalAll({double padding = 0}) {
    return Padding(padding: EdgeInsetsDirectional.all(padding), child: this);
  }
}

extension SliverPaddingExtension on Widget {
  /// return sliver padding top
  SliverPadding sliverPaddingTop(double top) {
    return SliverPadding(padding: EdgeInsets.only(top: top), sliver: this);
  }

  /// return sliver padding left
  SliverPadding sliverPaddingLeft(double left) {
    return SliverPadding(padding: EdgeInsets.only(left: left), sliver: this);
  }

  /// return sliver padding Directional
  SliverPadding sliverPaddingStart(double start) {
    return SliverPadding(padding: EdgeInsetsDirectional.only(start: start), sliver: this);
  }

  SliverPadding sliverPaddingEnd(double end) {
    return SliverPadding(padding: EdgeInsetsDirectional.only(end: end), sliver: this);
  }

  /// return sliver padding right
  SliverPadding sliverPaddingRight(double right) {
    return SliverPadding(padding: EdgeInsets.only(right: right), sliver: this);
  }

  /// return sliver padding bottom
  SliverPadding sliverPaddingBottom(double bottom) {
    return SliverPadding(padding: EdgeInsets.only(bottom: bottom), sliver: this);
  }

  /// return sliver padding all
  SliverPadding sliverPaddingAll(double padding) {
    return SliverPadding(padding: EdgeInsets.all(padding), sliver: this);
  }

  /// return sliver padding Symmetric
  SliverPadding sliverPaddingSymmetric(double horizontal, double vertical) {
    return SliverPadding(padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal), sliver: this);
  }

  SliverPadding sliverPaddingVertical(double padding) {
    return SliverPadding(padding: EdgeInsets.symmetric(vertical: padding), sliver: this);
  }

  SliverPadding sliverPaddingHorizontal(double padding) {
    return SliverPadding(padding: EdgeInsets.symmetric(horizontal: padding), sliver: this);
  }

  /// return custom sliver padding from each side
  SliverPadding sliverPaddingOnly({double top = 0.0, double left = 0.0, double bottom = 0.0, double right = 0.0}) {
    return SliverPadding(padding: EdgeInsets.fromLTRB(left, top, right, bottom), sliver: this);
  }

  SliverPadding sliverPaddingDirectionalOnly({
    double top = 0.0,
    double start = 0.0,
    double bottom = 0.0,
    double end = 0.0,
  }) {
    return SliverPadding(
      padding: EdgeInsetsDirectional.only(top: top, bottom: bottom, start: start, end: end),
      sliver: this,
    );
  }

  SliverPadding sliverPaddingDirectionalAll({double padding = 0}) {
    return SliverPadding(padding: EdgeInsetsDirectional.all(padding), sliver: this);
  }
}

