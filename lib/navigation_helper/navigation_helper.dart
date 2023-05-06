import 'package:flutter/material.dart';

class NavigationHelper {
  static pushReplacement(BuildContext context, Widget targetClass) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => targetClass,
        transitionsBuilder:
            (context, animation, secondaryAnimation, targetClass) {
          final position = animation.drive(Tween<Offset>(
              begin: const Offset(1, 0), end: const Offset(0, 0)));

          return SlideTransition(position: position, child: targetClass);
        },
      ),
    );
  }

  static pushRoute(BuildContext context, Widget targetClass) {
    Navigator.push(
      context,MaterialPageRoute(builder: (context)=>targetClass),
    );
  }

  static removeAllRoutes(BuildContext context, Widget targetClass) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => targetClass), (route) => false);
  } 
  static pop(BuildContext context, Widget targetClass) {
    Navigator.pop(context);
  }
}
