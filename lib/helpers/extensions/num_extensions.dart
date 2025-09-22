

import 'package:flutter/cupertino.dart';

extension NumExt on num? {
  num validate({num defaultValue = 0}) {
    if (this == null) {
      return defaultValue;
    }
    return this!;
  }

  SliverToBoxAdapter get gapSliver => SliverToBoxAdapter(child: gap);

  SizedBox get gap => SizedBox(height: validate().toDouble(), width: validate().toDouble());


}
