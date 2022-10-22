import 'package:flutter/material.dart';


final navigatorKey = GlobalKey<NavigatorState>();

void navigateto({required Widget page, bool withHistory = true}) {
  Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      PageRouteBuilder(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(child: child, opacity: animation),
        pageBuilder: ((context, animation, secondaryAnimation,) => page

        )

      ),(route) => withHistory);
      // MaterialPageRoute(
      //   builder: (context) => page,
      // ),

}
