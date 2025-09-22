// Custom route for modal-like presentation
import 'package:flutter/cupertino.dart';

import '../pages/plan_page.dart';

class PlanPageRoute extends PageRouteBuilder {
  PlanPageRoute()
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => PlanPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(
          Tween(begin: Offset(0.0, 1.0), end: Offset.zero)
              .chain(CurveTween(curve: Curves.easeOut)),
        ),
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 300),
    barrierDismissible: true,
    opaque: false,
  );
}